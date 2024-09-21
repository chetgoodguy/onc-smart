<?php
/**
 * @filesource modules/car/views/index.php
 *
 * @copyright 2016 Goragod.com
 * @license https://www.kotchasan.com/license/
 *
 * @see https://www.kotchasan.com/
 */

namespace Car\Index;

use Kotchasan\DataTable;
use Kotchasan\Http\Request;

/**
 * module=car
 *
 * @author Goragod Wiriya <admin@goragod.com>
 *
 * @since 1.0
 */
class View extends \Car\Tools\View
{
    /**
     * @var array
     */
    private $vehicles;

    /**
     * รายการจอง (ผู้จอง)
     *
     * @param Request $request
     * @param array $params
     *
     * @return string
     */
    public function render(Request $request, $params)
    {
        // รถ
        $this->vehicles = \Car\Vehicles\Model::toSelect(false);
        // URL สำหรับส่งให้ตาราง
        $uri = $request->createUriWithGlobals(WEB_URL.'index.php');
        // ตาราง
        $table = new DataTable([
            /* Uri */
            'uri' => $uri,
            /* Model */
            'model' => \Car\Index\Model::toDataTable($params),
            /* รายการต่อหน้า */
            'perPage' => $request->cookie('carIndex_perPage', 30)->toInt(),
            /* เรียงลำดับ */
            'sort' => 'begin DESC',
            /* ฟังก์ชั่นจัดรูปแบบการแสดงผลแถวของตาราง */
            'onRow' => [$this, 'onRow'],
            /* คอลัมน์ที่ไม่ต้องแสดงผล */
            'hideColumns' => ['approve', 'closed', 'today', 'color', 'end', 'begin'],
            /* คอลัมน์ที่สามารถค้นหาได้ */
            'searchColumns' => ['detail'],
            /* ตั้งค่าการกระทำของของตัวเลือกต่างๆ ด้านล่างตาราง ซึ่งจะใช้ร่วมกับการขีดถูกเลือกแถว */
            'action' => 'index.php/car/model/index/action',
            'actionCallback' => 'dataTableActionCallback',
            /* ตัวเลือกด้านบนของตาราง ใช้จำกัดผลลัพท์การ query */
            'filters' => [
                [
                    'name' => 'from',
                    'type' => 'date',
                    'text' => '{LNG_from}',
                    'value' => $params['from']
                ],
                [
                    'name' => 'to',
                    'type' => 'date',
                    'text' => '{LNG_to}',
                    'value' => $params['to']
                ],
                [
                    'name' => 'vehicle_id',
                    'text' => '{LNG_Vehicle}',
                    'options' => [0 => '{LNG_all items}'] + $this->vehicles,
                    'value' => $params['vehicle_id']
                ],
                [
                    'name' => 'status',
                    'text' => '{LNG_Status}',
                    'options' => [-1 => '{LNG_all items}'] + $params['booking_status'],
                    'value' => $params['status']
                ]
            ],
            /* ส่วนหัวของตาราง และการเรียงลำดับ (thead) */
            'headers' => [
                'detail' => [
                    'text' => '{LNG_Usage details}'
                ],
                'id' => [
                    'text' => ''
                ],
                'vehicle_id' => [
                    'text' => '{LNG_Vehicle}'
                ],
                'status' => [
                    'text' => '{LNG_Status}',
                    'class' => 'center'
                ],
                'reason' => [
                    'text' => '{LNG_Reason}'
                ]
            ],
            /* รูปแบบการแสดงผลของคอลัมน์ (tbody) */
            'cols' => [
                'detail' => [
                    'class' => 'top'
                ],
                'status' => [
                    'class' => 'center'
                ]
            ],
            /* ฟังก์ชั่นตรวจสอบการแสดงผลปุ่มในแถว */
            'onCreateButton' => [$this, 'onCreateButton'],
            /* ปุ่มแสดงในแต่ละแถว */
            'buttons' => [
                'cancel' => [
                    'class' => 'icon-warning button orange',
                    'id' => ':id',
                    'text' => '{LNG_Cancel}'
                ],
                'delete' => [
                    'class' => 'icon-delete button red',
                    'id' => ':id',
                    'text' => '{LNG_Delete}'
                ],
                'edit' => [
                    'class' => 'icon-edit button green',
                    'href' => $uri->createBackUri(['module' => 'car-booking', 'id' => ':id']),
                    'text' => '{LNG_Edit}'
                ],
                'detail' => [
                    'class' => 'icon-info button blue',
                    'id' => ':id',
                    'text' => '{LNG_Detail}'
                ]
            ],
            /* ปุ่มเพิ่ม */
            'addNew' => [
                'class' => 'float_button icon-addtocart',
                'href' => 'index.php?module=car-booking',
                'title' => '{LNG_Book a vehicle}'
            ]
        ]);
        // save cookie
        setcookie('carIndex_perPage', $table->perPage, time() + 2592000, '/', HOST, HTTPS, true);
        // คืนค่า HTML
        return $table->render();
    }

    /**
     * จัดรูปแบบการแสดงผลในแต่ละแถว
     *
     * @param array  $item ข้อมูลแถว
     * @param int    $o    ID ของข้อมูล
     * @param object $prop กำหนด properties ของ TR
     *
     * @return array
     */
    public function onRow($item, $o, $prop)
    {
        if ($item['today'] == 1) {
            $prop->class = 'bg3';
        }
        $item['detail'] = '<span class=two_lines title="'.$item['detail'].'">'.$item['detail'].'</span>';
        $item['reason'] = '<span class="two_lines small" title="'.$item['reason'].'">'.$item['reason'].'</span>';
        $thumb = is_file(ROOT_PATH.DATA_FOLDER.'car/'.$item['vehicle_id'].self::$cfg->stored_img_type) ? WEB_URL.DATA_FOLDER.'car/'.$item['vehicle_id'].self::$cfg->stored_img_type : WEB_URL.'modules/car/img/noimage.png';
        $item['id'] = '<img src="'.$thumb.'" style="max-height:4em;max-width:8em" alt=thumbnail>';
        $item['status'] = self::toStatus($item, true);
        $item['vehicle_id'] = isset($this->vehicles[$item['vehicle_id']]) ? '<span class="term" style="background-color:'.$item['color'].'">'.$this->vehicles[$item['vehicle_id']].'</span>' : '';
        $item['vehicle_id'] .= '<div class="small nowrap">'.self::dateRange($item).'</div>';
        return $item;
    }

    /**
     * ฟังกชั่นตรวจสอบว่าสามารถสร้างปุ่มได้หรือไม่
     *
     * @param string $btn
     * @param array $attributes
     * @param array $item
     *
     * @return array
     */
    public function onCreateButton($btn, $attributes, $item)
    {
        if ($btn == 'edit') {
            return $item['status'] == 0 && $item['approve'] == 1 && $item['today'] == 0 ? $attributes : false;
        } elseif ($btn == 'cancel') {
            return \Car\Index\Model::canCancle($item) ? $attributes : false;
        } elseif ($btn == 'delete') {
            return in_array($item['status'], self::$cfg->car_delete) ? $attributes : false;
        } else {
            return $attributes;
        }
    }
}
