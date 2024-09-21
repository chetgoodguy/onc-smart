<?php
/* settings/database.php */

return [
    'mysql' => [
        'dbdriver' => 'mysql',
        'username' => 'root',
        'password' => 'oncblog!Admin!',
        'dbname' => 'bk_db_onc_smart_office',
        'prefix' => 'tbl_'
    ],
    'tables' => [
        'category' => 'category',
        'edocument' => 'edocument',
        'edocument_download' => 'edocument_download',
        'dms'=>'dms',
        'dms_download'=>'dms_download',
        'dms_files'=>'dms_files',
        'dms_meta'=>'dms_meta',
        'inventory' => 'inventory',
        'inventory_meta' => 'inventory_meta',
        'inventory_user' => 'inventory_user',
        'language' => 'language',
        'leave' => 'leave',
        'leave_items' => 'leave_items',
        'logs' => 'logs',
        'reservation' => 'reservation',
        'reservation_data' => 'reservation_data',
        'rooms' => 'rooms',
        'rooms_meta' => 'rooms_meta',
        'user' => 'user',
        'user_meta' => 'user_meta',
        'car_reservation' => 'car_reservation',
        'car_reservation_data' => 'car_reservation_data',
        'vehicles' => 'vehicles',
        'vehicles_meta' => 'vehicles_meta'
    ]
];
