/*
 Navicat Premium Data Transfer

 Source Server         : con_local
 Source Server Type    : MySQL
 Source Server Version : 80035 (8.0.35)
 Source Host           : localhost:3306
 Source Schema         : bk_db_onc_smart_office

 Target Server Type    : MySQL
 Target Server Version : 80035 (8.0.35)
 File Encoding         : 65001

 Date: 20/09/2024 21:25:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl__car_reservation
-- ----------------------------
DROP TABLE IF EXISTS `tbl__car_reservation`;
CREATE TABLE `tbl__car_reservation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicle_id` int NOT NULL,
  `member_id` int NOT NULL,
  `department` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `chauffeur` int NOT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `travelers` int NOT NULL,
  `begin` datetime NULL DEFAULT NULL,
  `end` datetime NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `reason` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `approve` tinyint(1) NOT NULL,
  `closed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__car_reservation
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__car_reservation_data
-- ----------------------------
DROP TABLE IF EXISTS `tbl__car_reservation_data`;
CREATE TABLE `tbl__car_reservation_data`  (
  `reservation_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  INDEX `reservation_id`(`reservation_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__car_reservation_data
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__category
-- ----------------------------
DROP TABLE IF EXISTS `tbl__category`;
CREATE TABLE `tbl__category`  (
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `category_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0',
  `language` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `topic` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `color` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `published` tinyint(1) NULL DEFAULT 1,
  INDEX `type`(`type` ASC) USING BTREE,
  INDEX `category_id`(`category_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__category
-- ----------------------------
INSERT INTO `tbl__category` VALUES ('repairstatus', '1', '', 'แจ้งซ่อม', '#660000', 1);
INSERT INTO `tbl__category` VALUES ('repairstatus', '2', '', 'กำลังดำเนินการ', '#120eeb', 1);
INSERT INTO `tbl__category` VALUES ('repairstatus', '3', '', 'รออะไหล่', '#d940ff', 1);
INSERT INTO `tbl__category` VALUES ('repairstatus', '4', '', 'ซ่อมสำเร็จ', '#06d628', 1);
INSERT INTO `tbl__category` VALUES ('repairstatus', '5', '', 'ซ่อมไม่สำเร็จ', '#FF0000', 1);
INSERT INTO `tbl__category` VALUES ('repairstatus', '6', '', 'ยกเลิกการซ่อม', '#FF6F00', 1);
INSERT INTO `tbl__category` VALUES ('repairstatus', '7', '', 'ส่งมอบเรียบร้อย', '#000000', 1);
INSERT INTO `tbl__category` VALUES ('type_id', '4', '', 'จอมอนิเตอร์', NULL, 1);
INSERT INTO `tbl__category` VALUES ('category_id', '3', '', 'Ram', NULL, 1);
INSERT INTO `tbl__category` VALUES ('type_id', '3', '', 'โปรเจ็คเตอร์', NULL, 1);
INSERT INTO `tbl__category` VALUES ('category_id', '2', '', 'วัสดุสำนักงาน', NULL, 1);
INSERT INTO `tbl__category` VALUES ('model_id', '4', '', 'ACER', NULL, 1);
INSERT INTO `tbl__category` VALUES ('type_id', '2', '', 'เครื่องพิมพ์', NULL, 1);
INSERT INTO `tbl__category` VALUES ('model_id', '3', '', 'Cannon', NULL, 1);
INSERT INTO `tbl__category` VALUES ('model_id', '2', '', 'Asus', NULL, 1);
INSERT INTO `tbl__category` VALUES ('category_id', '1', '', 'เครื่องใช้ไฟฟ้า', NULL, 1);
INSERT INTO `tbl__category` VALUES ('type_id', '1', '', 'เครื่องคอมพิวเตอร์', NULL, 1);
INSERT INTO `tbl__category` VALUES ('model_id', '1', '', 'Apple', NULL, 1);
INSERT INTO `tbl__category` VALUES ('unit', 'อัน', '', 'อัน', NULL, 1);
INSERT INTO `tbl__category` VALUES ('unit', 'กล่อง', '', 'กล่อง', NULL, 1);
INSERT INTO `tbl__category` VALUES ('unit', 'เครื่อง', '', 'เครื่อง', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '01', '', 'สนง.ผบ.ชา', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '02', '', 'กกล.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '03', '', 'กสทจ.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '04', '', 'กผท.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '05', '', 'กงป.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '06', '', 'กบช.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '07', '', 'กตป.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '08', '', 'กพก.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '09', '', 'กพอ.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '10', '', 'กพบ.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '11', '', 'ช่วยราชการ สปช.ทร.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '12', '', 'ประจำ สปช.ทร.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('department', '00', '', 'สปช.ทร.', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '01', '', 'ปลัดบัญชีทหารเรือ', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '02', '', 'รองปลัดบัญชีทหารเรือ', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '03', '', 'ผู้อำนวยการสำนักงบประมาณ', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '04', '', 'ผู้อำนวยการสำนักพัฒนาระบบราชการ', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '05', '', 'รองผู้อำนวยการสำนักงบประมาณ (1)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '06', '', 'รองผู้อำนวยการสำนักงบประมาณ (2)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '07', '', 'รองผู้อำนวยการสำนักพัฒนาระบบราชการ (1)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '08', '', 'รองผู้อำนวยการสำนักพัฒนาระบบราชการ (2)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '09', '', 'ฝ่ายเสนาธิการประจำสำนักปลัดบัญชีทหารเรือ', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '10', '', 'ผู้อำนวยการกอง', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '11', '', 'รองผู้อำนวยการกอง', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '12', '', 'หัวหน้าแผนก', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '13', '', 'ประจำแผนก (น.ต.)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '14', '', 'ประจำแผนก (ร.ต. - ร.อ.)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '15', '', 'ประจำกอง (สัญญาบัตร)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '16', '', 'ขนง.(สัญญาบัตร)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '17', '', 'ประจำกอง (ประทวน)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '18', '', 'เสมียน (พันจ่า)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '19', '', 'เสมียน (จ่า)', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '20', '', 'พลบริการ', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '21', '', 'ลูกจ้างประจำ', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '22', '', 'ลูกจ้างชั่วคราว', NULL, 1);
INSERT INTO `tbl__category` VALUES ('position', '23', '', 'พนักงานบริการ', NULL, 1);

-- ----------------------------
-- Table structure for tbl__dms
-- ----------------------------
DROP TABLE IF EXISTS `tbl__dms`;
CREATE TABLE `tbl__dms`  (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `create_date` date NOT NULL,
  `document_no` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `topic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl__dms
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__dms_download
-- ----------------------------
DROP TABLE IF EXISTS `tbl__dms_download`;
CREATE TABLE `tbl__dms_download`  (
  `id` int NOT NULL,
  `file_id` int NOT NULL,
  `dms_id` int NOT NULL,
  `member_id` int NOT NULL,
  `downloads` int NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dms_id`(`dms_id` ASC) USING BTREE,
  INDEX `member_id`(`member_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl__dms_download
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__dms_files
-- ----------------------------
DROP TABLE IF EXISTS `tbl__dms_files`;
CREATE TABLE `tbl__dms_files`  (
  `id` int NOT NULL,
  `dms_id` int NOT NULL,
  `topic` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ext` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `size` int NOT NULL,
  `file` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dms_id`(`dms_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl__dms_files
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__dms_meta
-- ----------------------------
DROP TABLE IF EXISTS `tbl__dms_meta`;
CREATE TABLE `tbl__dms_meta`  (
  `dms_id` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  INDEX `dms_id`(`dms_id` ASC) USING BTREE,
  INDEX `type`(`type` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl__dms_meta
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__edocument
-- ----------------------------
DROP TABLE IF EXISTS `tbl__edocument`;
CREATE TABLE `tbl__edocument`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `department` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `urgency` tinyint NOT NULL,
  `last_update` int NOT NULL,
  `document_no` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `topic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ext` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `size` double UNSIGNED NOT NULL,
  `file` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__edocument
-- ----------------------------
INSERT INTO `tbl__edocument` VALUES (1, 2, ',,', 2, 1632052932, 'DOC-0009', 'ส่งให้แอดมิน', 'คำศัพท์ชื่อป้ายห้องในโรงเรียนเป็นภาษาอังกฤษแนบ', 'pdf', 457639, '1545666283.pdf');
INSERT INTO `tbl__edocument` VALUES (2, 1, ',1,2,3,', 2, 1545664264, 'DOC-0008', 'ทดสอบ', 'CanonPixmaMP280-MP287-PrinterDriver', 'jpg', 18795, '1545662500.jpg');
INSERT INTO `tbl__edocument` VALUES (3, 16, ',00,03,', 2, 1726335186, 'DOC-0002', 'คู่มือสิทธิประโยชน์กำลังพล โดยสารบรรณทหาร', 'คู่มือสิทธิประโยชน์กำลังพล-67', 'pdf', 4234491, '1726335186.pdf');
INSERT INTO `tbl__edocument` VALUES (4, 17, ',00,01,02,03,04,05,06,07,08,09,10,11,12,', 2, 1726471071, 'DOC-0003', 'ส่งหนังสือเวียนให้ทุก ๆ คน ใน สปช.ทร.', 'การจัดงานพิธีอำลาชีวิตการรับราชการให้แก่ผู้ครบเกษียณอายุ ปีงบประมาณ 67', 'pdf', 4303102, '1726471071.pdf');
INSERT INTO `tbl__edocument` VALUES (5, 17, ',00,01,02,03,04,05,06,07,08,09,10,11,12,', 2, 1726471171, 'DOC-0004', 'ส่งหนังสือให้ทุก ๆ คน ใน สปช.ทร.', 'พิธีรับพระราชทานเครื่องราชอิสริยาภรณ์ชั้นสายสะพาย ประจำปี 2567', 'pdf', 543236, '1726471171.pdf');

-- ----------------------------
-- Table structure for tbl__edocument_download
-- ----------------------------
DROP TABLE IF EXISTS `tbl__edocument_download`;
CREATE TABLE `tbl__edocument_download`  (
  `document_id` int NOT NULL,
  `member_id` int NOT NULL,
  `downloads` int NOT NULL,
  `last_update` int NOT NULL,
  `department_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  INDEX `document_id`(`document_id` ASC) USING BTREE,
  INDEX `member_id`(`member_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__edocument_download
-- ----------------------------
INSERT INTO `tbl__edocument_download` VALUES (3, 14, 0, 0, '03');
INSERT INTO `tbl__edocument_download` VALUES (4, 11, 0, 0, '12');
INSERT INTO `tbl__edocument_download` VALUES (4, 15, 0, 0, '02');
INSERT INTO `tbl__edocument_download` VALUES (4, 14, 0, 0, '03');
INSERT INTO `tbl__edocument_download` VALUES (4, 16, 0, 0, '03');
INSERT INTO `tbl__edocument_download` VALUES (5, 11, 0, 0, '12');
INSERT INTO `tbl__edocument_download` VALUES (5, 15, 0, 0, '02');
INSERT INTO `tbl__edocument_download` VALUES (5, 14, 0, 0, '03');
INSERT INTO `tbl__edocument_download` VALUES (5, 16, 0, 0, '03');

-- ----------------------------
-- Table structure for tbl__inventory
-- ----------------------------
DROP TABLE IF EXISTS `tbl__inventory`;
CREATE TABLE `tbl__inventory`  (
  `id` int NOT NULL,
  `category_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `model_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `topic` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `inuse` tinyint(1) NULL DEFAULT 1,
  `count_stock` tinyint(1) NULL DEFAULT 1
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__inventory
-- ----------------------------
INSERT INTO `tbl__inventory` VALUES (1, '1', '4', '4', 'จอมอนิเตอร์ ACER S220HQLEBD', 1, 1);
INSERT INTO `tbl__inventory` VALUES (2, '1', '2', '1', 'ASUS A550JX', 1, 1);
INSERT INTO `tbl__inventory` VALUES (3, '3', '4', '1', 'Crucial 4GB DDR3L&amp;1600 SODIMM', 1, 1);

-- ----------------------------
-- Table structure for tbl__inventory_items
-- ----------------------------
DROP TABLE IF EXISTS `tbl__inventory_items`;
CREATE TABLE `tbl__inventory_items`  (
  `product_no` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `inventory_id` int NOT NULL,
  `unit` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `stock` float NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__inventory_items
-- ----------------------------
INSERT INTO `tbl__inventory_items` VALUES ('P87-0057', 2, 'เครื่อง', 5);
INSERT INTO `tbl__inventory_items` VALUES ('1108-365D', 1, 'กล่อง', 5);
INSERT INTO `tbl__inventory_items` VALUES ('IF111/036/2', 3, 'อัน', 4);
INSERT INTO `tbl__inventory_items` VALUES ('IF111/036/1', 3, 'อัน', 5);

-- ----------------------------
-- Table structure for tbl__inventory_meta
-- ----------------------------
DROP TABLE IF EXISTS `tbl__inventory_meta`;
CREATE TABLE `tbl__inventory_meta`  (
  `inventory_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__inventory_meta
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__language
-- ----------------------------
DROP TABLE IF EXISTS `tbl__language`;
CREATE TABLE `tbl__language`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `owner` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `js` tinyint(1) NOT NULL,
  `th` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `en` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `la` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 511 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__language
-- ----------------------------
INSERT INTO `tbl__language` VALUES (1, 'ACCEPT_ALL', 'text', 'index', 1, 'ยอมรับทั้งหมด', 'Accept all', 'ຍອມຮັບທັງຫມົດ');
INSERT INTO `tbl__language` VALUES (2, 'ADD', 'text', 'index', 1, NULL, 'Add', NULL);
INSERT INTO `tbl__language` VALUES (3, 'CANCEL', 'text', 'index', 1, 'ยกเลิก', 'Cancel', 'ຍົກເລີກ');
INSERT INTO `tbl__language` VALUES (4, 'CHANGE_COLOR', 'text', 'index', 1, 'เปลี่ยนสี', 'change color', 'ປ່ຽນສີ');
INSERT INTO `tbl__language` VALUES (5, 'CHECK', 'text', 'index', 1, 'เลือก', 'check', 'ເລືອກ');
INSERT INTO `tbl__language` VALUES (6, 'CHECKBOX', 'text', 'index', 1, 'ตัวเลือก', 'Checkbox', 'ກ່ອງກາເຄື່ອງໝາຍ');
INSERT INTO `tbl__language` VALUES (7, 'COOKIES_SETTINGS', 'text', 'index', 1, 'ตั้งค่าคุกกี้', 'Cookies settings', 'ຕັ້ງຄ່າຄຸກກີ');
INSERT INTO `tbl__language` VALUES (8, 'DELETE', 'text', 'index', 1, 'ลบ', 'delete', 'ລຶບ');
INSERT INTO `tbl__language` VALUES (9, 'DISABLE', 'text', 'index', 1, 'ปิดใช้งาน', 'Disable', 'ປິດໃຊ້ການ');
INSERT INTO `tbl__language` VALUES (10, 'DRAG_AND_DROP_TO_REORDER', 'text', 'index', 1, NULL, 'Drag and drop to reorder', NULL);
INSERT INTO `tbl__language` VALUES (11, 'ENABLE', 'text', 'index', 1, 'เปิดใช้งาน', 'Enable', 'ເປີດໃຊ້ການ');
INSERT INTO `tbl__language` VALUES (12, 'GO_TO_PAGE', 'text', 'index', 1, NULL, 'go to page', NULL);
INSERT INTO `tbl__language` VALUES (13, 'INVALID_DATA', 'text', 'index', 1, 'ข้อมูล XXX ไม่ถูกต้อง', 'XXX Invalid data', 'ຂໍ້ມູນ XXX ບໍ່ຖືກຕ້ອງ');
INSERT INTO `tbl__language` VALUES (14, 'ITEM', 'text', 'index', 1, 'รายการ', 'item', 'ລາຍການ');
INSERT INTO `tbl__language` VALUES (15, 'ITEMS', 'text', 'index', 1, 'รายการ', 'items', 'ລາຍການ');
INSERT INTO `tbl__language` VALUES (16, 'NEXT_MONTH', 'text', 'index', 1, 'เดือนถัดไป', 'Next Month', 'ເດືອນຕໍ່ໄປ');
INSERT INTO `tbl__language` VALUES (17, 'PLEASE_BROWSE_FILE', 'text', 'index', 1, 'กรุณาเลือกไฟล์', 'Please browse file', 'ກະລຸນາເລືອກແຟ້ມຂໍ້ມູນ');
INSERT INTO `tbl__language` VALUES (18, 'PLEASE_FILL_IN', 'text', 'index', 1, 'กรุณากรอก', 'Please fill in', 'ກະລຸນາພີ່ມ');
INSERT INTO `tbl__language` VALUES (19, 'PLEASE_SAVE_BEFORE_CONTINUING', 'text', 'index', 1, 'กรุณาบันทึก ก่อนดำเนินการต่อ', 'Please save before continuing', 'ກະລຸນາບັນທຶກກ່ອນດຳເນີນການຕໍ່');
INSERT INTO `tbl__language` VALUES (20, 'PLEASE_SELECT', 'text', 'index', 1, 'กรุณาเลือก', 'Please select', 'ກະລຸນາເລືອກ');
INSERT INTO `tbl__language` VALUES (21, 'PLEASE_SELECT_AT_LEAST_ONE_ITEM', 'text', 'index', 1, 'กรุณาเลือก XXX อย่างน้อย 1 รายการ', 'Please select XXX at least one item', 'ກະລຸນາເລືອກ XXX ຢ່າງໜ້ອຍໜຶ່ງລາຍການ');
INSERT INTO `tbl__language` VALUES (22, 'PREV_MONTH', 'text', 'index', 1, 'เดือนก่อนหน้า', 'Prev Month', 'ເດືອນທີ່ຜ່ານມາ');
INSERT INTO `tbl__language` VALUES (23, 'SELECT_ALL', 'text', 'index', 1, 'เลือกทั้งหมด', 'select all', 'ເລືອກທັງໝົດ');
INSERT INTO `tbl__language` VALUES (24, 'SELECT_NONE', 'text', 'index', 1, 'ไม่เลือกรายการใดเลย', 'select none', 'ບໍ່ເລືອກລາຍການໃດເລີຍ');
INSERT INTO `tbl__language` VALUES (25, 'SHOWING_PAGE', 'text', 'index', 1, NULL, 'showing page', NULL);
INSERT INTO `tbl__language` VALUES (26, 'SORRY_XXX_NOT_FOUND', 'text', 'index', 1, 'ขออภัย ไม่พบ XXX ที่ต้องการ', 'Sorry XXX not found', 'ຂໍອະໄພບໍ່ພົບ XXX ທີ່ຕ້ອງການ');
INSERT INTO `tbl__language` VALUES (27, 'SUCCESSFULLY_COPIED_TO_CLIPBOARD', 'text', 'index', 1, 'สำเนาไปยังคลิปบอร์ดเรียบร้อย', 'Successfully copied to clipboard', 'ສຳເນົາໄປຍັງຄິບບອດຮຽບຮ້ອຍ');
INSERT INTO `tbl__language` VALUES (28, 'SUCCESSFULLY_UPLOADED_XXX_FILES', 'text', 'index', 1, 'อัปโหลดเรียบร้อย XXX ไฟล์', 'Successfully uploaded XXX files', 'ອັບໂຫຼດຮຽບຮ້ອຍ XXX ແຟ້ມ');
INSERT INTO `tbl__language` VALUES (29, 'THE_TYPE_OF_FILE_IS_INVALID', 'text', 'index', 1, 'ชนิดของไฟล์ไม่ถูกต้อง', 'The type of file is invalid', 'ຊະນິດຂອງແຟ້ມບໍ່ຖືກຕ້ອງ');
INSERT INTO `tbl__language` VALUES (30, 'UNCHECK', 'text', 'index', 1, 'ไม่เลือก', 'uncheck', 'ບໍ່ເລືອກ');
INSERT INTO `tbl__language` VALUES (31, 'YOU_WANT_TO_XXX', 'text', 'index', 1, 'คุณต้องการ XXX ?', 'You want to XXX ?', 'ທ່ານບໍ່ຕ້ອງການ XXX ?');
INSERT INTO `tbl__language` VALUES (32, 'YOU_WANT_TO_XXX_THE_SELECTED_ITEMS', 'text', 'index', 1, 'คุณต้องการ XXX รายการที่เลือก ?', 'You want to XXX the selected items ?', 'ທ່ານຕ້ອງການ XXX ລາຍການທີ່ເລືອກ?');
INSERT INTO `tbl__language` VALUES (33, 'APPROVING_RESERVATIONS', 'array', 'index', 0, NULL, 'a:3:{i:0;s:14:\"End of booking\";i:1;s:19:\"Before booking time\";i:2;s:8:\"All time\";}', 'a:3:{i:0;s:39:\"ສິ້ນສຸດການຈອງ\";i:1;s:48:\"ກ່ອນທີ່ຈະຈອງເວລາ\";i:2;s:30:\"ຕະຫຼອດເວລາ\";}');
INSERT INTO `tbl__language` VALUES (34, 'BOOKING_OPTIONS', 'array', 'index', 0, 'a:1:{s:11:\"accessories\";s:21:\"อุปกรณ์\";}', 'a:1:{s:11:\"accessories\";s:11:\"Accessories\";}', 'a:1:{s:11:\"accessories\";s:21:\"ອຸປະກອນ\";}');
INSERT INTO `tbl__language` VALUES (35, 'BOOKING_SELECT', 'array', 'index', 0, 'a:1:{s:3:\"use\";s:27:\"ใช้สำหรับ\";}', 'a:1:{s:3:\"use\";s:7:\"use for\";}', 'a:1:{s:3:\"use\";s:27:\"ໃຊ້ສໍາລັບ\";}');
INSERT INTO `tbl__language` VALUES (36, 'BOOKING_STATUS', 'array', 'index', 0, 'a:5:{i:0;s:27:\"รอตรวจสอบ\";i:1;s:21:\"อนุมัติ\";i:2;s:30:\"ไม่อนุมัติ\";i:3;s:45:\"ยกเลิกโดยผู้จอง\";i:4;s:60:\"ยกเลิกโดยเจ้าหน้าที่\";}', 'a:5:{i:0;s:7:\"Pending\";i:1;s:7:\"Approve\";i:2;s:11:\"Not allowed\";i:3;s:20:\"Canceled by customer\";i:4;s:23:\"Canceled by the officer\";}', 'a:5:{i:0;s:57:\"ລໍຖ້າສໍາລັບການກວດກາ\";i:1;s:21:\"ອະນຸມັດ\";i:2;s:30:\"ບໍ່ອະນຸຍາດ\";i:3;s:66:\"ຍົກເລີກໂດຍບຸກຄົນທີ່ຈອງ\";i:4;s:63:\"ຍົກເລີກໂດຍເຈົ້າໜ້າທີ່\";}');
INSERT INTO `tbl__language` VALUES (37, 'BOOLEANS', 'array', 'index', 0, 'a:2:{i:0;s:27:\"ปิดใช้งาน\";i:1;s:30:\"เปิดใช้งาน\";}', 'a:2:{i:0;s:7:\"Disable\";i:1;s:7:\"Enabled\";}', 'a:2:{i:0;s:27:\"ປິດໃຊ້ວຽກ\";i:1;s:30:\"ເປີດໃຊ້ວຽກ\";}');
INSERT INTO `tbl__language` VALUES (38, 'CANCEL_RESERVATIONS', 'array', 'index', 0, 'a:3:{i:0;s:42:\"สถานะรอตรวจสอบ\";i:1;s:42:\"ก่อนถึงเวลาจอง\";i:2;s:42:\"ก่อนหมดเวลาจอง\";}', 'a:3:{i:0;s:14:\"Pending status\";i:1;s:19:\"Before booking time\";i:2;s:14:\"End of booking\";}', 'a:3:{i:0;s:57:\"ສະຖານະທີ່ຍັງຄ້າງຢູ່\";i:1;s:48:\"ກ່ອນທີ່ຈະຈອງເວລາ\";i:2;s:39:\"ສິ້ນສຸດການຈອງ\";}');
INSERT INTO `tbl__language` VALUES (39, 'CAR_CUSTOM_TEXT', 'array', 'index', 0, 'a:1:{s:5:\"seats\";s:36:\"จำนวนที่นั่ง\";}', 'a:1:{s:5:\"seats\";s:15:\"Number of seats\";}', 'a:1:{s:5:\"seats\";s:42:\"ຈໍານວນບ່ອນນັ່ງ\";}');
INSERT INTO `tbl__language` VALUES (40, 'CAR_OPTIONS', 'array', 'index', 0, 'a:1:{s:15:\"car_accessories\";s:36:\"อุปกรณ์เสริม\";}', 'a:1:{s:15:\"car_accessories\";s:11:\"Accessories\";}', 'a:1:{s:15:\"car_accessories\";s:33:\"ອຸປະກອນເສີມ\";}');
INSERT INTO `tbl__language` VALUES (41, 'CAR_SELECT', 'array', 'index', 0, 'a:2:{s:8:\"car_type\";s:18:\"ประเภท\";s:9:\"car_brand\";s:18:\"ยี่ห้อ\";}', 'a:2:{s:8:\"car_type\";s:4:\"Type\";s:9:\"car_brand\";s:5:\"Brand\";}', 'a:2:{s:8:\"car_type\";s:15:\"ປະເພດ\";s:9:\"car_brand\";s:18:\"ຍີ່ຫໍ້\";}');
INSERT INTO `tbl__language` VALUES (42, 'CATEGORIES', 'array', 'index', 0, 'a:2:{s:10:\"department\";s:12:\"แผนก\";s:8:\"position\";s:21:\"ตำแหน่ง\";}', 'a:2:{s:10:\"department\";s:10:\"Department\";s:8:\"position\";s:8:\"Position\";}', 'a:2:{s:10:\"department\";s:15:\"ພະແນກ\";s:8:\"position\";s:24:\"ຕໍາແຫນ່ງ\";}');
INSERT INTO `tbl__language` VALUES (43, 'DATE_FORMAT', 'text', 'index', 0, 'd M Y เวลา H:i น.', 'd M Y, H:i', 'd M Y ເວລາ H:i');
INSERT INTO `tbl__language` VALUES (44, 'DATE_LONG', 'array', 'index', 0, 'a:7:{i:0;s:21:\"อาทิตย์\";i:1;s:18:\"จันทร์\";i:2;s:18:\"อังคาร\";i:3;s:9:\"พุธ\";i:4;s:24:\"พฤหัสบดี\";i:5;s:15:\"ศุกร์\";i:6;s:15:\"เสาร์\";}', 'a:7:{i:0;s:6:\"Sunday\";i:1;s:6:\"Monday\";i:2;s:7:\"Tuesday\";i:3;s:9:\"Wednesday\";i:4;s:8:\"Thursday\";i:5;s:6:\"Friday\";i:6;s:8:\"Saturday\";}', 'a:7:{i:0;s:15:\"ອາທິດ\";i:1;s:9:\"ຈັນ\";i:2;s:18:\"ອັງຄານ\";i:3;s:9:\"ພຸດ\";i:4;s:15:\"ພະຫັດ\";i:5;s:9:\"ສຸກ\";i:6;s:12:\"ເສົາ\";}');
INSERT INTO `tbl__language` VALUES (45, 'DATE_SHORT', 'array', 'index', 0, 'a:7:{i:0;s:7:\"อา.\";i:1;s:4:\"จ.\";i:2;s:4:\"อ.\";i:3;s:4:\"พ.\";i:4;s:7:\"พฤ.\";i:5;s:4:\"ศ.\";i:6;s:4:\"ส.\";}', 'a:7:{i:0;s:2:\"Su\";i:1;s:2:\"Mo\";i:2;s:2:\"Tu\";i:3;s:2:\"We\";i:4;s:2:\"Th\";i:5;s:2:\"Fr\";i:6;s:2:\"Sa\";}', 'a:7:{i:0;s:4:\"ທ.\";i:1;s:4:\"ຈ.\";i:2;s:4:\"ຄ.\";i:3;s:4:\"ພ.\";i:4;s:4:\"ພ.\";i:5;s:4:\"ສ.\";i:6;s:4:\"ສ.\";}');
INSERT INTO `tbl__language` VALUES (46, 'DOWNLOAD_ACTIONS', 'array', 'index', 0, 'a:2:{i:0;s:39:\"ดาวน์โหลดไฟล์\";i:1;s:54:\"เปิดไฟล์ (ที่รู้จัก)\";}', 'a:2:{i:0;s:8:\"Download\";i:1;s:26:\"Open file (know file type)\";}', 'a:2:{i:0;s:33:\"ດາວໂຫຼດແຟ້ມ\";i:1;s:53:\"ເປີດແຟ້ມ(ທີ່ຮູ້ຈັກ)\";}');
INSERT INTO `tbl__language` VALUES (47, 'INVENTORY_CATEGORIES', 'array', 'index', 0, 'a:3:{s:11:\"category_id\";s:24:\"หมวดหมู่\";s:7:\"type_id\";s:18:\"ประเภท\";s:8:\"model_id\";s:18:\"ยี่ห้อ\";}', 'a:3:{s:11:\"category_id\";s:8:\"Category\";s:7:\"type_id\";s:4:\"Type\";s:8:\"model_id\";s:5:\"Brand\";}', 'a:3:{s:11:\"category_id\";s:24:\"ຫມວດຫມູ່\";s:7:\"type_id\";s:15:\"ປະເພດ\";s:8:\"model_id\";s:18:\"ຍີ່ຫໍ້\";}');
INSERT INTO `tbl__language` VALUES (48, 'INVENTORY_STATUS', 'array', 'index', 0, 'a:2:{i:0;s:42:\"เลิกใช้งานแล้ว\";i:1;s:30:\"ใช้งานอยู่\";}', 'a:2:{i:0;s:8:\"Inactive\";i:1;s:6:\"Active\";}', 'a:2:{i:0;s:36:\"ປິດການໃຊ້ວຽກ\";i:1;s:30:\"ຍັງເຮັດວຽກ\";}');
INSERT INTO `tbl__language` VALUES (49, 'LEAVE_PERIOD', 'array', 'index', 0, 'a:3:{i:0;s:21:\"เต็มวัน\";i:1;s:36:\"ครึ่งวันเช้า\";i:2;s:36:\"ครึ่งวันบ่าย\";}', 'a:3:{i:0;s:7:\"All day\";i:1;s:16:\"Half day morning\";i:2;s:18:\"Half day afternoon\";}', 'a:3:{i:0;s:21:\"ມື້ເຕັມ\";i:1;s:39:\"ມື້ເຊົ້າເຄິ່ງ\";i:2;s:45:\"ຕອນບ່າຍມື້ເຄິ່ງ\";}');
INSERT INTO `tbl__language` VALUES (50, 'LEAVE_STATUS', 'array', 'index', 0, 'a:3:{i:0;s:27:\"รออนุมัติ\";i:1;s:21:\"อนุมัติ\";i:2;s:30:\"ไม่อนุมัติ\";}', 'a:3:{i:0;s:7:\"Pending\";i:1;s:7:\"Approve\";i:2;s:11:\"Not allowed\";}', 'a:3:{i:0;s:69:\"ການອະນຸມັດທີ່ຍັງຄ້າງຢູ່\";i:1;s:21:\"ອະນຸມັດ\";i:2;s:48:\"ບໍ່ໄດ້ຮັບອະນຸມັດ\";}');
INSERT INTO `tbl__language` VALUES (51, 'LINE_FOLLOW_MESSAGE', 'text', 'index', 0, 'สวัสดี คุณ :name นี่คือบัญชีทางการของ :title เราจะส่งข่าวสารถึงคุณผ่านช่องทางนี้', 'Hello, :name This is :title official account. We will send you news via this channel.', 'ສະບາຍດີ, :name ນີ້ແມ່ນບັນຊີທາງການຂອງ :title ພວກເຮົາຈະສົ່ງຂ່າວໃຫ້ທ່ານຜ່ານຊ່ອງທາງນີ້.');
INSERT INTO `tbl__language` VALUES (52, 'LINE_REPLY_MESSAGE', 'text', 'index', 0, 'ขออภัยไม่สามารถตอบกลับข้อความนี้ได้', 'Sorry, can&#039;t reply to this message.', 'ຂໍອະໄພ, ບໍ່ສາມາດຕອບກັບຂໍ້ຄວາມນີ້ໄດ້.');
INSERT INTO `tbl__language` VALUES (53, 'LOGIN_FIELDS', 'array', 'index', 0, 'a:4:{s:8:\"username\";s:30:\"ชื่อผู้ใช้\";s:5:\"email\";s:15:\"อีเมล\";s:5:\"phone\";s:39:\"เบอร์โทรศัพท์\";s:7:\"id_card\";s:30:\"เลขประชาชน\";}', 'a:4:{s:8:\"username\";s:8:\"Username\";s:5:\"email\";s:5:\"Email\";s:5:\"phone\";s:5:\"Phone\";s:7:\"id_card\";s:18:\"Identification No.\";}', 'a:4:{s:8:\"username\";s:27:\"ຊື່ຜູ້ໃຊ້\";s:5:\"email\";s:15:\"ອີເມວ\";s:5:\"phone\";s:30:\"ເບີໂທລະສັບ\";s:7:\"id_card\";s:39:\"ເລກບັດປະຈຳຕົວ\";}');
INSERT INTO `tbl__language` VALUES (54, 'LOGIN_TYPIES', 'array', 'index', 0, 'a:2:{i:0;s:45:\"ไม่ต้องเข้าระบบ\";i:1;s:51:\"เมื่อเข้าระบบแล้ว\";}', 'a:2:{i:0;s:17:\"No need to log in\";i:1;s:16:\"After logging in\";}', 'a:2:{i:0;s:66:\"ສາມາດອ່ານເຂົ້າສູ່ລະບົບ\";i:1;s:99:\"ສາມາດອ່ານເຂົ້າສູ່ລະບົບຮຽບຮ້ອຍແລ້ວ\";}');
INSERT INTO `tbl__language` VALUES (55, 'MAIL_PROGRAMS', 'array', 'index', 0, 'a:3:{i:0;s:43:\"ส่งจดหมายด้วย PHP\";i:1;s:72:\"ส่งจดหมายด้วย PHPMailer+SMTP (แนะนำ)\";i:2;s:58:\"ส่งจดหมายด้วย PHPMailer+PHP Mail\";}', 'a:3:{i:0;s:13:\"Send with PHP\";i:1;s:38:\"Send with PHPMailer+SMTP (recommended)\";i:2;s:28:\"Send with PHPMailer+PHP Mail\";}', 'a:3:{i:0;s:46:\"ສົ່ງຈົດໝາຍດ້ວຍ PHP\";i:1;s:75:\"ສົ່ງຈົດໝາຍດ້ວຍ PHPMailer+SMTP (ແນະນຳ)\";i:2;s:61:\"ສົ່ງຈົດໝາຍດ້ວຍ PHPMailer+PHP Mail\";}');
INSERT INTO `tbl__language` VALUES (56, 'MONTH_LONG', 'array', 'index', 0, 'a:12:{i:1;s:18:\"มกราคม\";i:2;s:30:\"กุมภาพันธ์\";i:3;s:18:\"มีนาคม\";i:4;s:18:\"เมษายน\";i:5;s:21:\"พฤษภาคม\";i:6;s:24:\"มิถุนายน\";i:7;s:21:\"กรกฎาคม\";i:8;s:21:\"สิงหาคม\";i:9;s:21:\"กันยายน\";i:10;s:18:\"ตุลาคม\";i:11;s:27:\"พฤศจิกายน\";i:12;s:21:\"ธันวาคม\";}', 'a:12:{i:1;s:7:\"January\";i:2;s:8:\"February\";i:3;s:5:\"March\";i:4;s:5:\"April\";i:5;s:3:\"May\";i:6;s:4:\"June\";i:7;s:4:\"July\";i:8;s:6:\"August\";i:9;s:9:\"September\";i:10;s:7:\"October\";i:11;s:8:\"November\";i:12;s:8:\"December\";}', 'a:12:{i:1;s:18:\"ມັງກອນ\";i:2;s:15:\"ກຸມພາ\";i:3;s:12:\"ມີນາ\";i:4;s:12:\"ເມສາ\";i:5;s:21:\"ພຶດສະພາ\";i:6;s:18:\"ມິຖຸນາ\";i:7;s:21:\"ກໍລະກົດ\";i:8;s:15:\"ສິງຫາ\";i:9;s:15:\"ກັນຍາ\";i:10;s:12:\"ຕຸລາ\";i:11;s:15:\"ພະຈິກ\";i:12;s:15:\"ທັນວາ\";}');
INSERT INTO `tbl__language` VALUES (57, 'MONTH_SHORT', 'array', 'index', 0, 'a:12:{i:1;s:8:\"ม.ค.\";i:2;s:8:\"ก.พ.\";i:3;s:11:\"มี.ค.\";i:4;s:11:\"เม.ย.\";i:5;s:8:\"พ.ค.\";i:6;s:11:\"มิ.ย.\";i:7;s:8:\"ก.ค.\";i:8;s:8:\"ส.ค.\";i:9;s:8:\"ก.ย.\";i:10;s:8:\"ต.ค.\";i:11;s:8:\"พ.ย.\";i:12;s:8:\"ธ.ค.\";}', 'a:12:{i:1;s:3:\"Jan\";i:2;s:3:\"Feb\";i:3;s:3:\"Mar\";i:4;s:3:\"Apr\";i:5;s:3:\"May\";i:6;s:3:\"Jun\";i:7;s:3:\"Jul\";i:8;s:3:\"Aug\";i:9;s:3:\"Sep\";i:10;s:3:\"Oct\";i:11;s:3:\"Nov\";i:12;s:3:\"Dec\";}', 'a:12:{i:1;s:8:\"ມ.ກ.\";i:2;s:8:\"ກ.ພ.\";i:3;s:11:\"ມີ.ນ.\";i:4;s:11:\"ເມ.ສ.\";i:5;s:8:\"ພ.ພ.\";i:6;s:11:\"ມິ.ນ.\";i:7;s:8:\"ກ.ກ.\";i:8;s:8:\"ສ.ຫ.\";i:9;s:8:\"ກ.ຍ.\";i:10;s:8:\"ຕ.ລ.\";i:11;s:8:\"ພ.ຈ.\";i:12;s:8:\"ທ.ວ.\";}');
INSERT INTO `tbl__language` VALUES (58, 'Name', 'text', 'index', 0, 'ชื่อ นามสกุล', 'Name Surname', 'ຊື່ ນາມສະກຸນ');
INSERT INTO `tbl__language` VALUES (59, 'PERMISSIONS', 'array', 'index', 0, 'a:2:{s:10:\"can_config\";s:60:\"สามารถตั้งค่าระบบได้\";s:22:\"can_view_usage_history\";s:93:\"สามารถดูประวัติการใช้งานระบบได้\";}', 'a:2:{s:10:\"can_config\";s:24:\"Can configure the system\";s:22:\"can_view_usage_history\";s:33:\"Able to view system usage history\";}', 'a:2:{s:10:\"can_config\";s:60:\"ສາມາດຕັ້ງຄ່າລະບົບໄດ້\";s:22:\"can_view_usage_history\";s:90:\"ສາມາດເບິ່ງປະຫວັດການນໍາໃຊ້ລະບົບ\";}');
INSERT INTO `tbl__language` VALUES (60, 'PERSONNEL_DETAILS', 'array', 'index', 0, 'a:1:{s:3:\"job\";s:9:\"งาน\";}', 'a:1:{s:3:\"job\";s:3:\"Job\";}', 'a:1:{s:3:\"job\";s:9:\"ວຽກ\";}');
INSERT INTO `tbl__language` VALUES (61, 'PUBLISHEDS', 'array', 'index', 0, 'a:2:{i:0;s:45:\"ระงับการเผยแพร่\";i:1;s:21:\"เผยแพร่\";}', 'a:2:{i:0;s:11:\"Unpublished\";i:1;s:9:\"Published\";}', 'a:2:{i:0;s:45:\"ລະງັບການເຜີຍແຜ່\";i:1;s:21:\"ເຜີຍແຜ່\";}');
INSERT INTO `tbl__language` VALUES (62, 'ROOM_CUSTOM_TEXT', 'array', 'index', 0, 'a:3:{s:8:\"building\";s:37:\"อาคาร/สถานที่\";s:6:\"number\";s:30:\"เลขที่ห้อง\";s:5:\"seats\";s:36:\"จำนวนที่นั่ง\";}', 'a:3:{s:8:\"building\";s:8:\"Building\";s:6:\"number\";s:8:\"Room No.\";s:5:\"seats\";s:15:\"Number of seats\";}', 'a:3:{s:8:\"building\";s:40:\"ອາຄານ/ສະຖານທີ່\";s:6:\"number\";s:12:\"ຫ້ອງ\";s:5:\"seats\";s:42:\"ຈໍານວນບ່ອນນັ່ງ\";}');
INSERT INTO `tbl__language` VALUES (63, 'SEXES', 'array', 'index', 0, 'a:3:{s:1:\"u\";s:21:\"ไม่ระบุ\";s:1:\"f\";s:12:\"หญิง\";s:1:\"m\";s:9:\"ชาย\";}', 'a:3:{s:1:\"u\";s:13:\"Not specified\";s:1:\"f\";s:6:\"Female\";s:1:\"m\";s:4:\"Male\";}', 'a:3:{s:1:\"u\";s:30:\"ບໍ່ໄດ້ລະບຸ\";s:1:\"f\";s:9:\"ຍິງ\";s:1:\"m\";s:9:\"ຊາຍ\";}');
INSERT INTO `tbl__language` VALUES (64, 'SMTPSECURIES', 'array', 'index', 0, 'a:2:{s:0:\"\";s:57:\"การเชื่อมต่อแบบปกติ\";s:3:\"ssl\";s:72:\"การเชื่อมต่อที่ปลอดภัย (SSL)\";}', 'a:2:{s:0:\"\";s:10:\"Clear Text\";s:3:\"ssl\";s:38:\"Server using a secure connection (SSL)\";}', 'a:2:{s:0:\"\";s:66:\"ການເຊື່ອມຕໍ່ແບບປົກກະຕິ\";s:3:\"ssl\";s:66:\"ການເຊື່ອມຕໍ່ທີ່ປອດໄຟ (SSL)\";}');
INSERT INTO `tbl__language` VALUES (65, 'THEME_WIDTH', 'array', 'index', 0, 'a:3:{s:7:\"default\";s:33:\"ค่าเริ่มต้น\";s:4:\"wide\";s:15:\"กว้าง\";s:9:\"fullwidth\";s:30:\"กว้างพิเศษ\";}', 'a:3:{s:7:\"default\";s:7:\"Default\";s:4:\"wide\";s:4:\"Wide\";s:9:\"fullwidth\";s:10:\"Extra wide\";}', 'a:3:{s:7:\"default\";s:36:\"ຄ່າເລີ່ມຕົ້ນ\";s:4:\"wide\";s:15:\"ກວ້າງ\";s:9:\"fullwidth\";s:30:\"ກວ້າງພິເສດ\";}');
INSERT INTO `tbl__language` VALUES (66, 'TIME_FORMAT', 'text', 'index', 0, 'H:i น.', 'H:i', 'H:i');
INSERT INTO `tbl__language` VALUES (67, 'URGENCIES', 'array', 'index', 0, 'a:3:{i:0;s:21:\"ด่วนมาก\";i:1;s:12:\"ด่วน\";i:2;s:12:\"ปกติ\";}', 'a:3:{i:0;s:7:\"Quickly\";i:1;s:5:\"Quick\";i:2;s:6:\"Normal\";}', 'a:3:{i:0;s:24:\"ດ່ວນຫລາຍ\";i:1;s:12:\"ດ່ວນ\";i:2;s:18:\"ປະກະຕິ\";}');
INSERT INTO `tbl__language` VALUES (68, 'YEAR_OFFSET', 'int', 'index', 0, '543', '0', '0');
INSERT INTO `tbl__language` VALUES (69, ':name for new members Used when members need to specify', 'text', 'index', 0, ':name เริ่มต้นสำหรับสมาชิกใหม่ ใช้ในกรณีที่สมาชิกจำเป็นต้องระบุ', NULL, ':name ສໍາລັບສະມາຊິກໃຫມ່ ໃຊ້ໃນເວລາທີ່ສະມາຊິກຕ້ອງການກໍານົດ');
INSERT INTO `tbl__language` VALUES (70, '0.0.0.0 mean all IP addresses', 'text', 'index', 0, '0.0.0.0 หมายถึงอนุญาตทั้งหมด', NULL, '0.0.0.0 ຫມາຍຄວາມວ່າອະນຸຍາດໃຫ້ທັງຫມົດ');
INSERT INTO `tbl__language` VALUES (71, 'A new document has been sent to you. Please check back.', 'text', 'index', 0, 'มีเอกสารใหม่ส่งถึงคุณ กรุณากลับไปตรวจสอบ', NULL, 'ເອກະສານໃໝ່ໄດ້ຖືກສົ່ງໄປຫາເຈົ້າແລ້ວ. ກະລຸນາກວດເບິ່ງຄືນ');
INSERT INTO `tbl__language` VALUES (72, 'Accept all', 'text', 'index', 0, 'ยอมรับทั้งหมด', NULL, 'ຍອມຮັບທັງຫມົດ');
INSERT INTO `tbl__language` VALUES (73, 'Accept this agreement', 'text', 'index', 0, 'ยอมรับข้อตกลง', NULL, 'ຍອມຮັບຂໍ້ຕົກລົງ');
INSERT INTO `tbl__language` VALUES (74, 'Add', 'text', 'index', 0, 'เพิ่ม', NULL, 'ເພີ່ມ');
INSERT INTO `tbl__language` VALUES (75, 'Add friend', 'text', 'index', 0, 'เพิ่มเพื่อน', NULL, 'ເພີ່ມເພື່ອນ');
INSERT INTO `tbl__language` VALUES (76, 'Address', 'text', 'index', 0, 'ที่อยู่', NULL, 'ທີ່ຢູ່');
INSERT INTO `tbl__language` VALUES (77, 'Address details', 'text', 'index', 0, 'รายละเอียดที่อยู่', NULL, 'ລາຍລະອຽດທີ່ຢູ່');
INSERT INTO `tbl__language` VALUES (78, 'Administrator status It is of utmost importance to do everything', 'text', 'index', 0, 'สถานะผู้ดูแลระบบ มีความสำคัญสูงสุดสามารถทำได้ทุกอย่าง', NULL, 'ສະຖານະຜູ້ເບິ່ງແຍງລະບົບມີຄວາມສຳຄັນສຸງທີ່ສຸດສາມາດເຮັດໄດ້ທຸກຢ່າງ');
INSERT INTO `tbl__language` VALUES (79, 'All :count entries, displayed :start to :end, page :page of :total pages', 'text', 'index', 0, 'ทั้งหมด :count รายการ, แสดง :start ถึง :end, หน้าที่ :page จากทั้งหมด :total หน้า', NULL, 'ທັງໝົດ :count ລາຍການ, ສະແດງ :start ເຖິງ :end, ໜ້າທີ່ :page ຈາກທັງໝົດ:total ໜ້າ');
INSERT INTO `tbl__language` VALUES (80, 'All cars', 'text', 'index', 0, 'ยานพาหนะทั้งหมด', NULL, 'ລົດທັງຫມົດ');
INSERT INTO `tbl__language` VALUES (81, 'all items', 'text', 'index', 0, 'ทั้งหมด', NULL, 'ທັງໝົດ');
INSERT INTO `tbl__language` VALUES (82, 'All rooms', 'text', 'index', 0, NULL, NULL, 'ຫ້ອງທັງຫມົດ');
INSERT INTO `tbl__language` VALUES (83, 'Always enabled', 'text', 'index', 0, 'เปิดใช้งานตลอดเวลา', NULL, 'ເປີດສະເໝີ');
INSERT INTO `tbl__language` VALUES (84, 'anyone', 'text', 'index', 0, 'ใครก็ได้', NULL, 'ໃຜ');
INSERT INTO `tbl__language` VALUES (85, 'API settings', 'text', 'index', 0, 'ตั้งค่า API', NULL, 'ຕັ້ງຄ່າ API');
INSERT INTO `tbl__language` VALUES (86, 'Applicant', 'text', 'index', 0, 'ผู้ขอใช้', NULL, 'ຜູ້ສະໝັກ');
INSERT INTO `tbl__language` VALUES (87, 'Approval', 'text', 'index', 0, 'ผู้อนุมัติ', NULL, 'ການອະນຸມັດ');
INSERT INTO `tbl__language` VALUES (88, 'Approval date', 'text', 'index', 0, NULL, NULL, 'ວັນທີປະຕິບັດ');
INSERT INTO `tbl__language` VALUES (89, 'Approve', 'text', 'index', 0, 'อนุมัติ', NULL, 'ອະນຸມັດ');
INSERT INTO `tbl__language` VALUES (90, 'Approver', 'text', 'index', 0, NULL, NULL, 'ຜູ້ປະຕິບັດ');
INSERT INTO `tbl__language` VALUES (91, 'Approving/editing reservations', 'text', 'index', 0, NULL, NULL, 'ການອະນຸມັດ/ແກ້ໄຂການຈອງ');
INSERT INTO `tbl__language` VALUES (92, 'Attendees number', 'text', 'index', 0, NULL, NULL, 'ຈໍານວນຜູ້ເຂົ້າຮ່ວມ');
INSERT INTO `tbl__language` VALUES (93, 'Authentication require', 'text', 'index', 0, 'การตรวจสอบความถูกต้อง', NULL, 'ການກວດກາຄວາມຖືກຕ້ອງ');
INSERT INTO `tbl__language` VALUES (94, 'Avatar', 'text', 'index', 0, 'รูปสมาชิก', NULL, 'ຮູບແທນຕົວ');
INSERT INTO `tbl__language` VALUES (95, 'Background color', 'text', 'index', 0, 'สีพื้นหลัง', NULL, 'ສີພື້ນຫລັງ');
INSERT INTO `tbl__language` VALUES (96, 'Background image', 'text', 'index', 0, 'รูปภาพพื้นหลัง', NULL, 'ພາບພື້ນຫລັງ');
INSERT INTO `tbl__language` VALUES (97, 'Begin date', 'text', 'index', 0, 'วันที่เริ่มต้น', NULL, 'ວັນເລີ່ມຕົ້ນ');
INSERT INTO `tbl__language` VALUES (98, 'Begin time', 'text', 'index', 0, 'เวลาเริ่มต้น', NULL, 'ເລີ່ມເວລາ');
INSERT INTO `tbl__language` VALUES (99, 'Book a room', 'text', 'index', 0, 'จองห้อง', NULL, 'ຈອງຫ້ອງ');
INSERT INTO `tbl__language` VALUES (100, 'Book a vehicle', 'text', 'index', 0, 'จองยานพาหนะ', NULL, 'ຈອງລົດ');
INSERT INTO `tbl__language` VALUES (101, 'Booking', 'text', 'index', 0, 'การจอง', NULL, 'ການຈອງ');
INSERT INTO `tbl__language` VALUES (102, 'Booking are not available at select time', 'text', 'index', 0, 'ไม่สามารถใช้งานได้ในเวลาที่เลือก', NULL, 'ບໍ່ມີເວລາທີ່ເລືອກ.');
INSERT INTO `tbl__language` VALUES (103, 'Booking calendar', 'text', 'index', 0, 'ปฏิทินการจอง', NULL, 'ປະຕິທິນການຈອງ');
INSERT INTO `tbl__language` VALUES (104, 'Booking date', 'text', 'index', 0, 'วันที่จอง', NULL, 'ວັນທີຈອງ');
INSERT INTO `tbl__language` VALUES (105, 'Booking today', 'text', 'index', 0, 'การจองวันนี้', NULL, 'ຈອງໃນມື້ນີ້');
INSERT INTO `tbl__language` VALUES (106, 'Brand', 'text', 'index', 0, 'ยี่ห้อ', NULL, 'ຍີ່ຫໍ້');
INSERT INTO `tbl__language` VALUES (107, 'Browse file', 'text', 'index', 0, 'เลือกไฟล์', NULL, 'ເລືອກໄຟລ໌');
INSERT INTO `tbl__language` VALUES (108, 'Browse image uploaded, type :type', 'text', 'index', 0, 'เลือกรูปภาพอัปโหลด ชนิด :type', NULL, 'ເລືອກຮູບພາບອັບໂຫຼດຊະນິດ :type');
INSERT INTO `tbl__language` VALUES (109, 'Can be approve', 'text', 'index', 0, 'สามารถอนุมัติได้', NULL, 'ສາມາດອະນຸມັດ');
INSERT INTO `tbl__language` VALUES (110, 'Can handle all documents', 'text', 'index', 0, 'สามารถจัดการเอกสารทั้งหมดได้', NULL, 'ສາມາດຈັດການເອກະສານທັງໝົດໄດ້');
INSERT INTO `tbl__language` VALUES (111, 'Can login', 'text', 'index', 0, 'สามารถเข้าระบบได้', NULL, 'ສາມາດເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (112, 'Can manage the', 'text', 'index', 0, 'สามารถจัดการ', NULL, 'ສາມາດຈັດການ');
INSERT INTO `tbl__language` VALUES (113, 'Can not be performed this request. Because they do not find the information you need or you are not allowed', 'text', 'index', 0, 'ไม่สามารถดำเนินการตามที่ร้องขอได้ เนื่องจากไม่พบข้อมูลที่ต้องการ หรือ คุณไม่มีสิทธิ์', NULL, 'ບໍ່ສາມາດດຳເນີນການຕາມທີ່ຮ້ອງຂໍໄດ້ເນື່ອງຈາກບໍ່ພົບຂໍ້ມູນທີ່ຕ້ອງການ ຫຼື ທ່ານບໍ່ມີສິດ');
INSERT INTO `tbl__language` VALUES (114, 'Can select multiple files', 'text', 'index', 0, 'สามารถเลือกได้หลายไฟล์', NULL, 'ສາມາດເລືອກເອກະສານໄດ້ຫຼາຍແບບ');
INSERT INTO `tbl__language` VALUES (115, 'Can select multiple files, total size not exceeding :size', 'text', 'index', 0, 'สามารถเลือกได้หลายไฟล์ ขนาดรวม ไม่เกิน :size', NULL, 'ສາມາດເລືອກເອົາໄຟລ໌ຫຼາຍ, ຂະຫນາດທັງຫມົດບໍ່ເກີນ :size');
INSERT INTO `tbl__language` VALUES (116, 'Can set the module', 'text', 'index', 0, 'สามารถตั้งค่าโมดูลได้', NULL, 'ສາມາດຕັ້ງໂມດູນໄດ້');
INSERT INTO `tbl__language` VALUES (117, 'Can upload file', 'text', 'index', 0, 'สามารถอัปโหลดไฟล์ได้', NULL, 'ສາມາດອັບໂຫຼດແຟ້ມໄດ້');
INSERT INTO `tbl__language` VALUES (118, 'Can upload your document file', 'text', 'index', 0, 'สามารถอัปโหลดไฟล์เอกสารได้', NULL, 'ສາມາດອັບໂຫຼດແຟ້ມເອກະສານໄດ້');
INSERT INTO `tbl__language` VALUES (119, 'Can view or download file', 'text', 'index', 0, 'สามารถดูหรือดาวน์โหลดเอกสารได้', NULL, 'ສາມາດເບິ່ງຫລືດາວໂຫລດເອກະສານໄດ້');
INSERT INTO `tbl__language` VALUES (120, 'Can view report', 'text', 'index', 0, 'สามารถดูรายงานได้', NULL, 'ສາມາດເບິ່ງບົດລາຍງານ');
INSERT INTO `tbl__language` VALUES (121, 'Can&#039;t login', 'text', 'index', 0, 'ไม่สามารถเข้าระบบได้', NULL, 'ບໍ່ສາມາດເຂົ້າສູ່ລະບົບໄດ້');
INSERT INTO `tbl__language` VALUES (122, 'Cancel', 'text', 'index', 0, 'ยกเลิก', NULL, 'ຍົກເລີກ');
INSERT INTO `tbl__language` VALUES (123, 'Canceled successfully', 'text', 'index', 0, 'ยกเลิกเรียบร้อย', NULL, 'ຍົກເລີກສົບຜົນສໍາເລັດ');
INSERT INTO `tbl__language` VALUES (124, 'Cancellation', 'text', 'index', 0, 'การยกเลิก', NULL, 'ການຍົກເລີກ');
INSERT INTO `tbl__language` VALUES (125, 'Cannot select this option', 'text', 'index', 0, 'ไม่สามารถเลือกตัวเลือกนี้ได้', NULL, 'ທາງເລືອກນີ້ບໍ່ສາມາດເລືອກໄດ້.');
INSERT INTO `tbl__language` VALUES (126, 'Car reservation', 'text', 'index', 0, 'ใบจองรถ', NULL, 'ການຈອງລົດ');
INSERT INTO `tbl__language` VALUES (127, 'Change language', 'text', 'index', 0, 'สลับภาษา', NULL, 'ປ່ຽນພາສາ');
INSERT INTO `tbl__language` VALUES (128, 'Chauffeur', 'text', 'index', 0, 'พนักงานขับรถ', NULL, 'ຜູ້ຂັບລົດ');
INSERT INTO `tbl__language` VALUES (129, 'Choose from a list of members (can choose multiple people)', 'text', 'index', 0, 'เลือกจากรายชื่อสมาชิก (สามารถเลือกได้หลายคน)', NULL, 'ເລືອກຈາກລາຍຊື່ສະມາຊິກ (ຈື່ໄດ້ທຸກ)');
INSERT INTO `tbl__language` VALUES (130, 'Clear selected', 'text', 'index', 0, 'ไม่เลือก', NULL, 'ບໍ່ເລືອກ');
INSERT INTO `tbl__language` VALUES (131, 'Click to edit', 'text', 'index', 0, 'คลิกเพื่อแก้ไข', NULL, 'ກົດເພື່ອແກ້ໄຂ');
INSERT INTO `tbl__language` VALUES (132, 'Color', 'text', 'index', 0, 'สี', NULL, 'ສີ');
INSERT INTO `tbl__language` VALUES (133, 'Comment', 'text', 'index', 0, 'หมายเหตุ', NULL, 'ຫມາຍ​ເຫດ​');
INSERT INTO `tbl__language` VALUES (134, 'Communication', 'text', 'index', 0, 'การติดต่อ', NULL, 'ຕິດຕໍ່');
INSERT INTO `tbl__language` VALUES (135, 'Confirm password', 'text', 'index', 0, 'ยืนยันรหัสผ่าน', NULL, 'ຢືນຢັນລະຫັດຜ່ານ');
INSERT INTO `tbl__language` VALUES (136, 'Congratulations, your email address has been verified. please login', 'text', 'index', 0, 'ยินดีด้วย ที่อยู่อีเมลของคุณได้รับการยืนยันเรียบร้อยแล้ว กรุณาเข้าสู่ระบบ', NULL, 'ຂໍສະແດງຄວາມຍິນດີ, ທີ່ຢູ່ອີເມວຂອງທ່ານໄດ້ຮັບການຢັ້ງຢືນແລ້ວ. ກະລຸນາເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (137, 'Contact information during leave', 'text', 'index', 0, 'ข้อมูลการติดต่อระหว่างการลา', NULL, 'ຕິດຕໍ່ຂໍ້ມູນໃນເວລາພັກຜ່ອນ');
INSERT INTO `tbl__language` VALUES (138, 'Contact name', 'text', 'index', 0, 'ชื่อผู้จอง', NULL, 'ຕົວແທນການຈອງ');
INSERT INTO `tbl__language` VALUES (139, 'Cookie Policy', 'text', 'index', 0, 'นโยบายคุกกี้', NULL, 'ນະໂຍບາຍຄຸກກີ');
INSERT INTO `tbl__language` VALUES (140, 'COOKIE_NECESSARY_DETAILS', 'text', 'index', 0, 'คุกกี้พื้นฐาน จำเป็นต่อการใช้งานเว็บไซต์ ใช้เพื่อการรักษาความปลอดภัยและให้เว็บไซต์สามารถทำงานได้อย่างถูกต้อง', NULL, 'ຄຸກກີພື້ນຖານ ມີຄວາມຈໍາເປັນໃນການນໍາໃຊ້ເວັບໄຊທ໌ ມັນຖືກນໍາໃຊ້ເພື່ອຈຸດປະສົງຄວາມປອດໄພແລະເພື່ອໃຫ້ເວັບໄຊທ໌ເຮັດວຽກຢ່າງຖືກຕ້ອງ.');
INSERT INTO `tbl__language` VALUES (141, 'COOKIE_POLICY_DETAILS', 'text', 'index', 0, 'เราใช้คุกกี้ (Cookies) หรือเทคโนโลยีที่คล้ายคลึงกันเท่าที่จำเป็น เพื่อใช้ในการเข้าถึงสินค้าหรือบริการ และติดตามการใช้งานของคุณเท่านั้น หากคุณไม่ต้องการให้มีคุกกี้ไว้ในคอมพิวเตอร์ของคุณ คุณสามารถตั้งค่าบราวเซอร์เพื่อปฏิเสธการจัดเก็บคุกกี้ก่อนที่จะใช้งานเว็บไซต์ หรือใช้โหมดไม่ระบุตัวตนเพื่อเข้าใช้งานเว็บไซต์ก็ได้', NULL, 'ພວກເຮົາໃຊ້ຄຸກກີ (Cookies) ຫຼືເຕັກໂນໂລຢີທີ່ຄ້າຍຄືກັນໃນຂອບເຂດທີ່ຈໍາເປັນ. ສໍາລັບການນໍາໃຊ້ໃນການເຂົ້າເຖິງສິນຄ້າຫຼືການບໍລິການ ແລະພຽງແຕ່ຕິດຕາມການນໍາໃຊ້ຂອງທ່ານ ຖ້າ​ຫາກ​ວ່າ​ທ່ານ​ບໍ່​ຕ້ອງ​ການ cookies ໃນ​ຄອມ​ພິວ​ເຕີ​ຂອງ​ທ່ານ​ ທ່ານສາມາດຕັ້ງຕົວທ່ອງເວັບຂອງທ່ານເພື່ອປະຕິເສດການເກັບຮັກສາ cookies. ກ່ອນທີ່ຈະນໍາໃຊ້ເວັບໄຊທ໌ ທ່ານຍັງສາມາດໃຊ້ໂໝດບໍ່ເປີດເຜີຍຕົວຕົນເພື່ອເຂົ້າຫາເວັບໄຊທ໌ໄດ້.');
INSERT INTO `tbl__language` VALUES (142, 'Country', 'text', 'index', 0, 'ประเทศ', NULL, 'ປະເທດ');
INSERT INTO `tbl__language` VALUES (143, 'Create', 'text', 'index', 0, 'สร้าง', NULL, 'ສ້າງ');
INSERT INTO `tbl__language` VALUES (144, 'Create new account', 'text', 'index', 0, 'สร้างบัญชีใหม่', NULL, 'ສ້າງບັນຊີໃໝ່');
INSERT INTO `tbl__language` VALUES (145, 'Created', 'text', 'index', 0, 'สร้างเมื่อ', NULL, 'ສ້າງເມື່ອ');
INSERT INTO `tbl__language` VALUES (146, 'Dark mode', 'text', 'index', 0, 'โหมดมืด', NULL, 'ໂໝດມືດ');
INSERT INTO `tbl__language` VALUES (147, 'Data controller', 'text', 'index', 0, 'ผู้ควบคุม/ใช้ ข้อมูล', NULL, 'ຜູ້​ຄວບ​ຄຸມຂໍ້ມູນ');
INSERT INTO `tbl__language` VALUES (148, 'Date', 'text', 'index', 0, 'วันที่', NULL, 'ວັນທີ');
INSERT INTO `tbl__language` VALUES (149, 'Date of leave', 'text', 'index', 0, 'วันที่ลา', NULL, 'ວັນພັກ');
INSERT INTO `tbl__language` VALUES (150, 'days', 'text', 'index', 0, 'วัน', NULL, 'ມື້');
INSERT INTO `tbl__language` VALUES (151, 'Delete', 'text', 'index', 0, 'ลบ', NULL, 'ລືບ');
INSERT INTO `tbl__language` VALUES (152, 'Deleting a reservation (booker)', 'text', 'index', 0, 'การลบรายการจอง (ผู้จอง)', NULL, 'ລຶບການຈອງ (ຜູ້ຈອງ)');
INSERT INTO `tbl__language` VALUES (153, 'Demo Mode', 'text', 'index', 0, 'โหมดตัวอย่าง', NULL, 'ຕົວຢ່າງ');
INSERT INTO `tbl__language` VALUES (154, 'Department', 'text', 'index', 0, NULL, NULL, 'ຜະແນກ');
INSERT INTO `tbl__language` VALUES (155, 'Description', 'text', 'index', 0, 'คำอธิบาย', NULL, 'ຄຳອະທິບາຍ');
INSERT INTO `tbl__language` VALUES (156, 'Detail', 'text', 'index', 0, 'รายละเอียด', NULL, 'ລາຍະລະອຽດ');
INSERT INTO `tbl__language` VALUES (157, 'Details of', 'text', 'index', 0, 'รายละเอียดของ', NULL, 'ລາຍລະອຽດຂອງ');
INSERT INTO `tbl__language` VALUES (158, 'Device user', 'text', 'index', 0, NULL, NULL, 'ຜູ້ໃຊ້');
INSERT INTO `tbl__language` VALUES (159, 'Director', 'text', 'index', 0, NULL, NULL, 'ຜູ້ອຳນວຍການ');
INSERT INTO `tbl__language` VALUES (160, 'Do not want', 'text', 'index', 0, NULL, NULL, 'ບໍ່ຕ້ອງການ');
INSERT INTO `tbl__language` VALUES (161, 'Document', 'text', 'index', 0, 'เอกสาร', NULL, 'ເອກະສານ');
INSERT INTO `tbl__language` VALUES (162, 'Document management system', 'text', 'index', 0, 'ระบบจัดเก็บเอกสาร', NULL, 'ລະບົບການເກັບຮັກສາເອກະສານ');
INSERT INTO `tbl__language` VALUES (163, 'Document No.', 'text', 'index', 0, 'เลขที่เอกสาร', NULL, 'ເລກທີເອກະສານ');
INSERT INTO `tbl__language` VALUES (164, 'Document number', 'text', 'index', 0, 'เลขที่เอกสาร', NULL, 'ເລກທີເອກະສານ');
INSERT INTO `tbl__language` VALUES (165, 'Document title', 'text', 'index', 0, 'เรื่อง', NULL, 'ເລື່ອງ');
INSERT INTO `tbl__language` VALUES (166, 'Download', 'text', 'index', 0, 'ดาวน์โหลด', NULL, 'ດາວໂຫຼດ');
INSERT INTO `tbl__language` VALUES (167, 'Download history', 'text', 'index', 0, 'ประวัติการดาวน์โหลด', NULL, 'ປະຫວັດການດາວໂຫຼດ');
INSERT INTO `tbl__language` VALUES (168, 'Downloading is a signed document', 'text', 'index', 0, NULL, NULL, 'ການດາວໂຫຼດຖືວ່າເປັນການລົງຊື່ຮັບເອກະສານ');
INSERT INTO `tbl__language` VALUES (169, 'Drag and drop to reorder', 'text', 'index', 0, 'ลากและวางเพื่อจัดลำดับใหม่', NULL, 'ລາກແລ້ວວາງລົງເພື່ອຈັດຮຽງໃໝ່');
INSERT INTO `tbl__language` VALUES (170, 'E-Document', 'text', 'index', 0, 'งานสารบรรณ', NULL, 'ວຽກງານສາລະບານ');
INSERT INTO `tbl__language` VALUES (171, 'E-Document list', 'text', 'index', 0, 'รายการเอกสาร', NULL, 'ລາຍການເອກະສານ');
INSERT INTO `tbl__language` VALUES (172, 'E-Documents', 'text', 'index', 0, 'เอกสาร', NULL, 'ເອກະສານ');
INSERT INTO `tbl__language` VALUES (173, 'E-Leave', 'text', 'index', 0, 'ระบบลางาน', NULL, 'ລະບົບລາພັກວຽກ');
INSERT INTO `tbl__language` VALUES (174, 'Edit', 'text', 'index', 0, 'แก้ไข', NULL, 'ແກ້ໄຂ');
INSERT INTO `tbl__language` VALUES (175, 'Editing your account', 'text', 'index', 0, 'แก้ไขข้อมูลส่วนตัว', NULL, 'ແກ້ໄຂຂໍ້ມູນສ່ວນຕົວສະມາຊິກ');
INSERT INTO `tbl__language` VALUES (176, 'Email', 'text', 'index', 0, 'อีเมล', NULL, 'ອີເມວ');
INSERT INTO `tbl__language` VALUES (177, 'Email address used for login or request a new password', 'text', 'index', 0, 'ที่อยู่อีเมล ใช้สำหรับการเข้าระบบหรือการขอรหัสผ่านใหม่', NULL, 'ທີ່ຢູ່ອີເມວໃຊ້ສຳລັບການເຂົ້າລະບົບຫຼືການຂໍລະຫັດໃໝ່');
INSERT INTO `tbl__language` VALUES (178, 'Email address verification', 'text', 'index', 0, 'ยืนยันที่อยู่อีเมล', NULL, 'ຢືນຢັນທີ່ຢູ່ອີເມວ');
INSERT INTO `tbl__language` VALUES (179, 'Email addresses for sender and do not reply such as no-reply@domain.tld', 'text', 'index', 0, 'ทีอยู่อีเมลใช้เป็นผู้ส่งจดหมาย สำหรับจดหมายที่ไม่ต้องการตอบกลับ เช่น no-reply@domain.tld', NULL, 'ທີ່ຢູ່ອີເມວໃຊ້ເປັນຜູ້ສົ່ງຈົດໝາຍ ສຳລັບຈົດໝາຍທີ່ບໍ່ຕ້ອງການຕອບກັບເຊັ່ນ no-reply@domain.tld');
INSERT INTO `tbl__language` VALUES (180, 'Email encoding', 'text', 'index', 0, 'รหัสภาษาของจดหมาย', NULL, 'ລະຫັດພາສາຂອງຈົດໝາຍ');
INSERT INTO `tbl__language` VALUES (181, 'Email settings', 'text', 'index', 0, 'ตั้งค่าอีเมล', NULL, 'ຕັ້ງຄ່າອີເມວ');
INSERT INTO `tbl__language` VALUES (182, 'Email the relevant person', 'text', 'index', 0, 'ส่งอีเมลแจ้งผู้ที่เกี่ยวข้องด้วย', NULL, 'ສົ່ງອີເມວຫາບຸກຄົນທີ່ກ່ຽວຂ້ອງ.');
INSERT INTO `tbl__language` VALUES (183, 'Email was not verified', 'text', 'index', 0, 'ยังไม่ได้ยืนยันอีเมล', NULL, 'ອີເມວບໍ່ໄດ້ຖືກຢືນຢັນ');
INSERT INTO `tbl__language` VALUES (184, 'Emailing', 'text', 'index', 0, 'การส่งอีเมล', NULL, 'ສົ່ງອີເມວ');
INSERT INTO `tbl__language` VALUES (185, 'Enable SSL encryption for sending email', 'text', 'index', 0, 'เปิดใช้งานการเข้ารหัส SSL สำหรับการส่งอีเมล', NULL, 'ເປີດໃຊ້ການເຂົ້າລະຫັດ SSL ສຳລັບການສົ່ງອີເມວ');
INSERT INTO `tbl__language` VALUES (186, 'End date', 'text', 'index', 0, 'วันที่สิ้นสุด', NULL, 'ວັນສິ້ນສຸດ');
INSERT INTO `tbl__language` VALUES (187, 'End date must be greater than begin date', 'text', 'index', 0, 'วันที่สิ้นสุดต้องมากกว่าวันที่เริ่มต้น', NULL, 'ວັນສິ້ນສຸດຕ້ອງຫຼາຍກວ່າວັນທີເລີ່ມຕົ້ນ.');
INSERT INTO `tbl__language` VALUES (188, 'End date must be greater than or equal to the start date', 'text', 'index', 0, 'วันที่สิ้นสุดต้องมากกว่าหรือเท่ากับวันที่เริ่มต้น', NULL, 'ວັນທີສິ້ນສຸດຕ້ອງຈະໃຫຍ່ກວ່າຫຼືເທົ່າກັບວັນທີເລີ່ມຕົ້ນ.');
INSERT INTO `tbl__language` VALUES (189, 'End time', 'text', 'index', 0, 'เวลาสิ้นสุด', NULL, 'ເວລາສິ້ນສຸດ');
INSERT INTO `tbl__language` VALUES (190, 'English lowercase letters and numbers, not less than 6 digits', 'text', 'index', 0, 'ภาษาอังกฤษตัวพิมพ์เล็กและตัวเลข ไม่น้อยกว่า 6 หลัก', NULL, 'ໂຕພິມນ້ອຍພາສາອັງກິດ ແລະຕົວເລກ, ບໍ່ຕໍ່າກວ່າ 6 ຕົວເລກ');
INSERT INTO `tbl__language` VALUES (191, 'Enter 0 if you want unlimited leave', 'text', 'index', 0, 'กรอก 0 ถ้าต้องการลาได้ไม่จำกัด', NULL, 'ໃສ່ເບີ 0 ຖ້າທ່ານຕ້ອງການການພັກຜ່ອນແບບບໍ່ຈຳກັດ');
INSERT INTO `tbl__language` VALUES (192, 'Enter the domain name you want to allow or enter * for all domains. or leave it blank if you want to use it on this domain only', 'text', 'index', 0, 'กรอกชื่อโดเมนที่ต้องการอนุญาต หรือกรอก * สำหรับทุกโดเมน หรือเว้นว่างไว้ถ้าต้องการให้ใช้งานได้บนโดเมนนี้เท่านั้น', NULL, 'ໃສ່ຊື່ໂດເມນທີ່ທ່ານຕ້ອງການທີ່ຈະອະນຸຍາດໃຫ້ຫຼືໃສ່ * ສໍາລັບໂດເມນທັງຫມົດ. ຫຼືປ່ອຍໃຫ້ມັນຫວ່າງຖ້າທ່ານຕ້ອງການໃຊ້ມັນຢູ່ໃນໂດເມນນີ້ເທົ່ານັ້ນ');
INSERT INTO `tbl__language` VALUES (193, 'Enter the email address registered. A new password will be sent to this email address.', 'text', 'index', 0, 'กรอกที่อยู่อีเมลที่ลงทะเบียนไว้ ระบบจะส่งรหัสผ่านใหม่ไปยังที่อยู่อีเมลนี้', NULL, 'ເພີ່ມທີ່ຢູ່ອີເມວທີ່ລົງທະບຽນໄວ້ ລະບົບຈະສົ່ງລະຫັດຜ່ານໃໝ່ໄປຍັງທີ່ຢູ່ອີເມວນີ້');
INSERT INTO `tbl__language` VALUES (194, 'Enter the LINE user ID you received when adding friends. Or type userId sent to the official account to request a new user ID. This information is used for receiving private messages from the system via LINE.', 'text', 'index', 0, 'กรอก user ID ของไลน์ที่ได้ตอนเพิ่มเพื่อน หรือพิมพ์คำว่า userId ส่งไปยังบัญชีทางการเพื่อขอ user ID ใหม่ ข้อมูลนี้ใช้สำหรับการรับข้อความส่วนตัวที่มาจากระบบผ่านไลน์', NULL, 'ໃສ່ user ID ຂອງ LINE ທີ່ທ່ານໄດ້ຮັບໃນເວລາເພີ່ມເພື່ອນ. ຫຼືພິມ userId ທີ່ຖືກສົ່ງໄປຫາບັນຊີທາງການເພື່ອຮ້ອງຂໍ user ID ໃຫມ່. ຂໍ້ມູນນີ້ແມ່ນໃຊ້ສໍາລັບການຮັບຂໍ້ຄວາມສ່ວນຕົວຈາກລະບົບຜ່ານ LINE.');
INSERT INTO `tbl__language` VALUES (195, 'Enter your password again', 'text', 'index', 0, 'กรอกรหัสผ่านของคุณอีกครั้ง', NULL, 'ໃສ່ລະຫັດຜ່ານຂອງທ່ານອີກຄັ້ງ');
INSERT INTO `tbl__language` VALUES (196, 'entries', 'text', 'index', 0, 'รายการ', NULL, 'ລາຍການ');
INSERT INTO `tbl__language` VALUES (197, 'Equipment', 'text', 'index', 0, 'พัสดุ', NULL, 'ພັສດຸ');
INSERT INTO `tbl__language` VALUES (198, 'Expiration date', 'text', 'index', 0, 'วันหมดอายุ', NULL, 'ວັນໝົດອາຍຸ');
INSERT INTO `tbl__language` VALUES (199, 'Fax', 'text', 'index', 0, 'โทรสาร', NULL, 'ແຟັກ');
INSERT INTO `tbl__language` VALUES (200, 'File', 'text', 'index', 0, 'ไฟล์', NULL, 'ແຟ້ມ');
INSERT INTO `tbl__language` VALUES (201, 'File name', 'text', 'index', 0, 'ชื่อไฟล์', NULL, 'ຊື່ແຟ້ມຂໍ້ມູນ');
INSERT INTO `tbl__language` VALUES (202, 'File not found', 'text', 'index', 0, 'ไม่พบไฟล์ที่ต้องการ', NULL, 'ບໍ່ພົບແຟ້ມທີ່ຕ້ອງການ');
INSERT INTO `tbl__language` VALUES (203, 'File size is less than :size', 'text', 'index', 0, 'ขนาดของไฟล์ไม่เกิน :size', NULL, 'ຂະໜາດຂອງແຟ້ມບໍ່ເກີນ:size');
INSERT INTO `tbl__language` VALUES (204, 'Find equipment by', 'text', 'index', 0, 'ค้นหาพัสดุโดย', NULL, 'ຄົ້ນຫາພັສດຸຈາກ');
INSERT INTO `tbl__language` VALUES (205, 'Fiscal year', 'text', 'index', 0, 'ปีงบประมาณ', NULL, 'ປີງົບປະມານ');
INSERT INTO `tbl__language` VALUES (206, 'Footer', 'text', 'index', 0, 'ส่วนท้าย', NULL, 'ສ່ວນທ້າຍ');
INSERT INTO `tbl__language` VALUES (207, 'for login by LINE account', 'text', 'index', 0, 'สำหรับการเข้าระบบโดยบัญชีไลน์', NULL, 'ສໍາລັບການເຂົ້າສູ່ລະບົບດ້ວຍບັນຊີ LINE');
INSERT INTO `tbl__language` VALUES (208, 'Forgot', 'text', 'index', 0, 'ลืมรหัสผ่าน', NULL, 'ລືມລະຫັດຜ່ານ');
INSERT INTO `tbl__language` VALUES (209, 'from', 'text', 'index', 0, 'จาก', NULL, 'ຈາກ');
INSERT INTO `tbl__language` VALUES (210, 'General', 'text', 'index', 0, 'ทั่วไป', NULL, 'ທົ່ວໄປ');
INSERT INTO `tbl__language` VALUES (211, 'General site settings', 'text', 'index', 0, 'ตั้งค่าพื้นฐานของเว็บไซต์', NULL, 'ຕັ້ງຄ່າພື້ນຖານຂອງເວັບໄຊ');
INSERT INTO `tbl__language` VALUES (212, 'Get a repair', 'text', 'index', 0, 'แจ้งซ่อม', NULL, 'ແຈ້ງຊ່ອມ');
INSERT INTO `tbl__language` VALUES (213, 'Get new password', 'text', 'index', 0, 'ขอรหัสผ่าน', NULL, 'ຂໍລະຫັດຜ່ານ');
INSERT INTO `tbl__language` VALUES (214, 'go to page', 'text', 'index', 0, 'ไปหน้าที่', NULL, 'ໄປທີ່ໜ້າ');
INSERT INTO `tbl__language` VALUES (215, 'Header', 'text', 'index', 0, 'ส่วนหัว', NULL, 'ສ່ວນຫົວ');
INSERT INTO `tbl__language` VALUES (216, 'Height', 'text', 'index', 0, 'สูง', NULL, 'ສູງ');
INSERT INTO `tbl__language` VALUES (217, 'History', 'text', 'index', 0, 'ติดตามการสั่งซ่อมของฉัน', NULL, 'ຕິດຕາມການສັ່ງຊ່ອມຂອງຂ້ອຍ');
INSERT INTO `tbl__language` VALUES (218, 'Home', 'text', 'index', 0, 'หน้าหลัก', NULL, 'ໜ້າຫຼັກ');
INSERT INTO `tbl__language` VALUES (219, 'How to define user authentication for mail servers. If you enable it, you must configure below correctly.', 'text', 'index', 0, 'กำหนดวิธีการตรวจสอบผู้ใช้สำหรับเมล์เซิร์ฟเวอร์ หากคุณเปิดใช้งานคุณต้องกำหนดค่าต่างๆด้านล่างถูกต้อง', NULL, 'ກຳນົດວິທີການກວດສອບຜູ້ໃຊ້ສຳລັບເມນເຊິບເວີຫາກທ່ານເປີດໃຊ້ການທ່ານຕ້ອງກຳນົດຄ່າຕ່າງໆດ້ານລຸ່ມຖືກຕ້ອງ');
INSERT INTO `tbl__language` VALUES (220, 'hrs.', 'text', 'index', 0, 'ชม.', NULL, 'ຊົ່ວໂມງ');
INSERT INTO `tbl__language` VALUES (221, 'Identification No.', 'text', 'index', 0, 'เลขประชาชน', NULL, 'ເລກບັດປະຈຳຕົວ');
INSERT INTO `tbl__language` VALUES (222, 'Image', 'text', 'index', 0, 'รูปภาพ', NULL, 'ຮູບພາບ');
INSERT INTO `tbl__language` VALUES (223, 'Image size is in pixels', 'text', 'index', 0, 'ขนาดของรูปภาพเป็นพิกเซล', NULL, 'ຂະໜາດຂອງຮູບພາບເປັນພິກເຊວ');
INSERT INTO `tbl__language` VALUES (224, 'Import', 'text', 'index', 0, 'นำเข้า', NULL, 'ນຳເຂົ້າ');
INSERT INTO `tbl__language` VALUES (225, 'Informer', 'text', 'index', 0, 'ผู้แจ้งซ่อม', NULL, 'ຜູ້ແຈ້ງຊ່ອມ');
INSERT INTO `tbl__language` VALUES (226, 'Initial booking status', 'text', 'index', 0, 'สถานะการจองเริ่มต้น', NULL, 'ສະຖານະການຈອງເບື້ອງຕົ້ນ');
INSERT INTO `tbl__language` VALUES (227, 'Initial repair status', 'text', 'index', 0, 'สถานะซ่อมเริ่มต้น', NULL, 'ສະຖານະການສ້ອມແປງເບື້ອງຕົ້ນ');
INSERT INTO `tbl__language` VALUES (228, 'Installed modules', 'text', 'index', 0, 'โมดูลที่ติดตั้งแล้ว', NULL, 'ໂມດູນທີ່ຕິດຕັ້ງ');
INSERT INTO `tbl__language` VALUES (229, 'Invalid :name', 'text', 'index', 0, ':name ไม่ถูกต้อง', NULL, ':name ບໍ່ຖືກຕ້ອງ');
INSERT INTO `tbl__language` VALUES (230, 'Inventory', 'text', 'index', 0, 'คลังสินค้า', NULL, 'ຄັງສິນຄ້າ');
INSERT INTO `tbl__language` VALUES (231, 'Job No.', 'text', 'index', 0, 'เลขที่ใบแจ้งซ่อม', NULL, 'ໝາຍເລກຮັບ');
INSERT INTO `tbl__language` VALUES (232, 'Job today', 'text', 'index', 0, 'งานซ่อมวันนี้', NULL, 'ວຽກຊ່ອມວັນນີ້');
INSERT INTO `tbl__language` VALUES (233, 'Key', 'text', 'index', 0, 'คีย์', NULL, 'ແປ້ນພີມ');
INSERT INTO `tbl__language` VALUES (234, 'Language', 'text', 'index', 0, 'ภาษา', NULL, 'ພາສາ');
INSERT INTO `tbl__language` VALUES (235, 'Leave', 'text', 'index', 0, 'ลา', NULL, 'ລາ');
INSERT INTO `tbl__language` VALUES (236, 'Leave conditions', 'text', 'index', 0, 'เงื่อนไขการลา', NULL, 'ເງື່ອນໄຂການໃຫ້ລາ');
INSERT INTO `tbl__language` VALUES (237, 'Leave empty for generate auto', 'text', 'index', 0, 'เว้นว่างไว้เพื่อสร้างโดยอัตโนมัติ', NULL, 'ປ່ອຍຫວ່າງໄວ້ເພື່ອສ້າງອັດໂນມັດ');
INSERT INTO `tbl__language` VALUES (238, 'Leave history', 'text', 'index', 0, 'ประวัติการลา', NULL, 'ປະຫວັດສາດການພັກ');
INSERT INTO `tbl__language` VALUES (239, 'Leave type', 'text', 'index', 0, 'ประเภทการลา', NULL, 'ປະເພດການພັກວຽກ');
INSERT INTO `tbl__language` VALUES (240, 'LINE group account', 'text', 'index', 0, 'บัญชีไลน์กลุ่ม', NULL, 'ບັນຊີກຸ່ມ LINE');
INSERT INTO `tbl__language` VALUES (241, 'LINE group name', 'text', 'index', 0, 'ชื่อกลุ่ม LINE', NULL, 'ຊື່ກຸ່ມ LINE');
INSERT INTO `tbl__language` VALUES (242, 'LINE official account (with @ prefix, e.g. @xxxx)', 'text', 'index', 0, 'บัญชีทางการของไลน์ (มี @ นำหน้า เช่น @xxxx)', NULL, 'ບັນຊີທາງການຂອງ LINE (ມີ @ ຄໍານໍາຫນ້າ, ເຊັ່ນ: @xxxx)');
INSERT INTO `tbl__language` VALUES (243, 'LINE settings', 'text', 'index', 0, 'ตั้งค่าไลน์', NULL, 'ຕັ້ງ​ຄ່າ LINE');
INSERT INTO `tbl__language` VALUES (244, 'List of', 'text', 'index', 0, 'รายการ', NULL, 'ລາຍການ');
INSERT INTO `tbl__language` VALUES (245, 'List of IPs that allow connection 1 line per 1 IP', 'text', 'index', 0, 'รายการไอพีแอดเดรสทั้งหมดที่อนุญาต 1 บรรทัดต่อ 1 ไอพี', NULL, 'ລາຍຊື່ IP ທີ່ອະນຸຍາດໃຫ້ເຊື່ອມຕໍ່ 1 ເສັ້ນຕໍ່ 1 IP');
INSERT INTO `tbl__language` VALUES (246, 'Local time', 'text', 'index', 0, 'เวลาท้องถิ่น', NULL, 'ເວລາທ້ອງຖິ່ນ');
INSERT INTO `tbl__language` VALUES (247, 'Login', 'text', 'index', 0, 'เข้าสู่ระบบ', NULL, 'ເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (248, 'Login as', 'text', 'index', 0, 'เข้าระบบเป็น', NULL, 'ເຂົ້າ​ສູ່​ລະ​ບົບ​ເປັນ');
INSERT INTO `tbl__language` VALUES (249, 'Login by', 'text', 'index', 0, 'เข้าระบบโดย', NULL, 'ເຂົ້າສູ່ລະບົບໂດຍ');
INSERT INTO `tbl__language` VALUES (250, 'Login information', 'text', 'index', 0, 'ข้อมูลการเข้าระบบ', NULL, 'ຂໍ້ມູນການເຂົ້າລະບົບ');
INSERT INTO `tbl__language` VALUES (251, 'Login page', 'text', 'index', 0, 'หน้าเข้าสู่ระบบ', NULL, 'ໜ້າເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (252, 'Login with an existing account', 'text', 'index', 0, 'เข้าระบบด้วยบัญชีสมาชิกที่มีอยู่แล้ว', NULL, 'ເຂົ້າລະບົບດ້ວຍບັນຊີສະມາຊິກທີ່ມີຢູ່ແລ້ວ');
INSERT INTO `tbl__language` VALUES (253, 'Logo', 'text', 'index', 0, 'โลโก', NULL, 'ໂລໂກ');
INSERT INTO `tbl__language` VALUES (254, 'Logout', 'text', 'index', 0, 'ออกจากระบบ', NULL, 'ອອກຈາກລະບົບ');
INSERT INTO `tbl__language` VALUES (255, 'Logout successful', 'text', 'index', 0, 'ออกจากระบบเรียบร้อย', NULL, 'ອອກຈາກລະບົບຮຽບຮ້ອຍ');
INSERT INTO `tbl__language` VALUES (256, 'Mail program', 'text', 'index', 0, 'โปรแกรมส่งอีเมล', NULL, 'ໂປຮແກຮມສົ່ງອີເມວ');
INSERT INTO `tbl__language` VALUES (257, 'Mail server', 'text', 'index', 0, 'เซิร์ฟเวอร์อีเมล', NULL, 'ເຊີບເວີອີເມວ');
INSERT INTO `tbl__language` VALUES (258, 'Mail server port number (default is 25, for GMail used 465, 587 for DirectAdmin).', 'text', 'index', 0, 'หมายเลขพอร์ตของเมล์เซิร์ฟเวอร์ (ค่าปกติคือ 25, สำหรับ gmail ใช้ 465, 587 สำหรับ DirectAdmin)', NULL, 'ໝາຍເລກພອດຂອງເມວເຊີບເວີ(ຄ່າປົກກະຕິຄື 25, ສຳລັບ gmail ໃຊ້ 465, 587 ສຳລັບ DirectAdmin)');
INSERT INTO `tbl__language` VALUES (259, 'Mail server settings', 'text', 'index', 0, 'ค่ากำหนดของเมล์เซิร์ฟเวอร์', NULL, 'ຄ່າກຳນົດຂອງເມວເຊີບເວີ');
INSERT INTO `tbl__language` VALUES (260, 'Manage languages', 'text', 'index', 0, 'จัดการภาษา', NULL, 'ຈັດການພາສາ');
INSERT INTO `tbl__language` VALUES (261, 'Member list', 'text', 'index', 0, 'รายชื่อสมาชิก', NULL, 'ລາຍຊື່ສະມາຊິກ');
INSERT INTO `tbl__language` VALUES (262, 'Member status', 'text', 'index', 0, 'สถานะสมาชิก', NULL, 'ສະຖານະສະມາຊິກ');
INSERT INTO `tbl__language` VALUES (263, 'Message', 'text', 'index', 0, 'ข้อความ', NULL, 'ຂໍ້ຄວາມ');
INSERT INTO `tbl__language` VALUES (264, 'Message displayed on login page', 'text', 'index', 0, 'ข้อความแสดงในหน้าเข้าสู่ระบบ', NULL, 'ຂໍ້ຄວາມສະແດງຢູ່ໃນຫນ້າເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (265, 'minutes', 'text', 'index', 0, NULL, NULL, 'ນາທີ');
INSERT INTO `tbl__language` VALUES (266, 'Module', 'text', 'index', 0, 'โมดูล', NULL, 'ໂມດູນ');
INSERT INTO `tbl__language` VALUES (267, 'Module settings', 'text', 'index', 0, 'ตั้งค่าโมดูล', NULL, 'ຕັ້ງຄ່າໂມດູນ');
INSERT INTO `tbl__language` VALUES (268, 'My Booking', 'text', 'index', 0, NULL, NULL, 'ການຈອງຂອງຂ້ອຍ');
INSERT INTO `tbl__language` VALUES (269, 'My device', 'text', 'index', 0, 'อุปกรณ์ของฉัน', NULL, 'ອຸປະກອນຂອງຂ້ອຍ');
INSERT INTO `tbl__language` VALUES (270, 'Necessary cookies', 'text', 'index', 0, 'คุกกี้พื้นฐานที่จำเป็น', NULL, 'ຄຸກກີພື້ນຖານທີ່ຈໍາເປັນ');
INSERT INTO `tbl__language` VALUES (271, 'New', 'text', 'index', 0, 'ใหม่', NULL, 'ໃຫມ່');
INSERT INTO `tbl__language` VALUES (272, 'New document', 'text', 'index', 0, 'เอกสารใหม่', NULL, 'ເອກະສານໃໝ່');
INSERT INTO `tbl__language` VALUES (273, 'New members', 'text', 'index', 0, 'สมาชิกใหม่', NULL, 'ສະມາຊິກໃໝ່');
INSERT INTO `tbl__language` VALUES (274, 'no larger than :size', 'text', 'index', 0, 'ขนาดไม่เกิน :size', NULL, 'ຂະໜາດບໍ່ເກີນ :size');
INSERT INTO `tbl__language` VALUES (275, 'No need to fill in English text. If the English text matches the Key', 'text', 'index', 0, 'ไม่จำเป็นต้องกรอกข้อความในภาษาอังกฤษ หากข้อความในภาษาอังกฤษตรงกับคีย์', NULL, 'ບໍ່ຈຳເປັນເພີ່ມຂໍ້ຄວາມໃນພາສາອັງກິດຫາກຂໍ້ຄວາມໃນພາສານອັງກົງກັບແປ້ນພີມ');
INSERT INTO `tbl__language` VALUES (276, 'not a registered user', 'text', 'index', 0, 'ไม่พบสมาชิกนี้ลงทะเบียนไว้', NULL, 'ບໍ່ພົບສະມາຊິກນີ້ລົງທະບຽນໄວ້');
INSERT INTO `tbl__language` VALUES (277, 'Not specified', 'text', 'index', 0, 'ไม่ระบุ', NULL, 'ບໍ່ໄດ້ກໍານົດ');
INSERT INTO `tbl__language` VALUES (278, 'Note or additional notes', 'text', 'index', 0, 'คำอธิบายหรือหมายเหตุเพิ่มเติม', NULL, 'ຄໍາອະທິບາຍຫລືຫມາຍເຫດເພີ່ມເຕີມ');
INSERT INTO `tbl__language` VALUES (279, 'Notification', 'text', 'index', 0, 'การแจ้งเตือน', NULL, 'ຄໍາປະກາດ');
INSERT INTO `tbl__language` VALUES (280, 'Notify relevant parties when booking details are modified by customers', 'text', 'index', 0, 'แจ้งเตือนไปยังผู้ที่เกี่ยวข้องเมื่อมีการแก้ไขรายละเอียดการจองโดยผู้จอง', NULL, 'ແຈ້ງໃຫ້ພາກສ່ວນທີ່ກ່ຽວຂ້ອງຊາບໃນເວລາທີ່ລາຍລະອຽດການຈອງຖືກດັດແກ້ໂດຍລູກຄ້າ');
INSERT INTO `tbl__language` VALUES (281, 'Number of leave days', 'text', 'index', 0, 'จำนวนวันลา', NULL, 'ຈຳນວນວັນຢຸດ');
INSERT INTO `tbl__language` VALUES (282, 'Number of seats', 'text', 'index', 0, 'จำนวนที่นั่ง', NULL, 'ຈໍານວນບ່ອນນັ່ງ');
INSERT INTO `tbl__language` VALUES (283, 'Number of travelers', 'text', 'index', 0, 'จำนวนผู้เดินทาง', NULL, 'ຈໍານວນຜູ້ຍ່າງທາງ');
INSERT INTO `tbl__language` VALUES (284, 'Number such as %04d (%04d means 4 digits, maximum 11 digits)', 'text', 'index', 0, 'เลขที่ เช่น %04d (%04d หมายถึง ตัวเลข 4 หลัก สูงสุด 11 หลัก)', NULL, 'ຕົວເລກເຊັ່ນ %04d (%04d ຫມາຍຄວາມວ່າ 4 ຕົວເລກ, ສູງສຸດ 11 ຕົວເລກ)');
INSERT INTO `tbl__language` VALUES (285, 'Operator', 'text', 'index', 0, 'ผู้ปฏิบัติงาน', NULL, 'ຜູ້ປະຕິບັດວຽກ');
INSERT INTO `tbl__language` VALUES (286, 'Order', 'text', 'index', 0, 'ลำดับ', NULL, 'ລຳດັບ');
INSERT INTO `tbl__language` VALUES (287, 'Order of persons in positions', 'text', 'index', 0, 'ลำดับบุคคลในตำแหน่ง', NULL, 'ລຳດັບບຸກຄົນໃນຕຳແໜ່ງ');
INSERT INTO `tbl__language` VALUES (288, 'Other', 'text', 'index', 0, 'อื่นๆ', NULL, 'ອື່ນໆ');
INSERT INTO `tbl__language` VALUES (289, 'Page details', 'text', 'index', 0, 'รายละเอียดของหน้า', NULL, 'ລາຍລະອຽດຂອງໜ້າ');
INSERT INTO `tbl__language` VALUES (290, 'Password', 'text', 'index', 0, 'รหัสผ่าน', NULL, 'ລະຫັດຜ່ານ');
INSERT INTO `tbl__language` VALUES (291, 'Password of the mail server. (To change the fill.)', 'text', 'index', 0, 'รหัสผ่านของเมล์เซิร์ฟเวอร์ (ต้องการเปลี่ยน ให้กรอก)', NULL, 'ລະຫັດຜ່ານຂອງເມວເຊີບເວີ (ຕ້ອງການປ່ຽນ ໃຫ້ເພີ່ມ)');
INSERT INTO `tbl__language` VALUES (292, 'Passwords must be at least four characters', 'text', 'index', 0, 'รหัสผ่านต้องไม่น้อยกว่า 4 ตัวอักษร', NULL, 'ລະຫັດຜ່ານຕ້ອງບໍ່ຕ່ຳກວ່າ 4 ຕົວອັກສອນ');
INSERT INTO `tbl__language` VALUES (293, 'Permission', 'text', 'index', 0, 'สิทธิ์การใช้งาน', NULL, 'ສິດໃນການໃຊ້ວຽກ');
INSERT INTO `tbl__language` VALUES (294, 'Personnel', 'text', 'index', 0, 'บุคลากร', NULL, 'ພະນັກງານ');
INSERT INTO `tbl__language` VALUES (295, 'Personnel list', 'text', 'index', 0, 'รายชื่อบุคลากร', NULL, 'ລາຍຊື່ພະນັກງານ');
INSERT INTO `tbl__language` VALUES (296, 'persons', 'text', 'index', 0, 'ท่าน', NULL, 'ທ່ານ');
INSERT INTO `tbl__language` VALUES (297, 'Phone', 'text', 'index', 0, 'โทรศัพท์', NULL, 'ເບີໂທລະສັບ');
INSERT INTO `tbl__language` VALUES (298, 'Please check the new member registration.', 'text', 'index', 0, 'กรุณาตรวจสอบการลงทะเบียนสมาชิกใหม่', NULL, 'ກະລຸນາກວດສອບການລົງທະບຽນສະມາຊິກໃໝ່.');
INSERT INTO `tbl__language` VALUES (299, 'Please click the link to verify your email address.', 'text', 'index', 0, 'กรุณาคลิกลิงค์เพื่อยืนยันที่อยู่อีเมล', NULL, 'ກະລຸນາຄລິກທີ່ລິ້ງເພື່ອຢືນຢັນທີ່ຢູ່ອີເມວຂອງທ່ານ');
INSERT INTO `tbl__language` VALUES (300, 'Please fill in', 'text', 'index', 0, 'กรุณากรอก', NULL, 'ກະລຸນາຕື່ມຂໍ້ມູນໃສ່');
INSERT INTO `tbl__language` VALUES (301, 'Please fill up this form', 'text', 'index', 0, 'กรุณากรอกแบบฟอร์มนี้', NULL, 'ກະລຸນາຕື່ມແບບຟອມນີ້');
INSERT INTO `tbl__language` VALUES (302, 'Please log in', 'text', 'index', 0, 'กรุณาเข้าระบบ', NULL, 'ກະລຸນາເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (303, 'Please log in to continue', 'text', 'index', 0, 'กรุณาเข้าระบบ ก่อนดำเนินการต่อ', NULL, 'ກະລຸນາເຂົ້າລະບົບ ກ່ອນທີ່ຈະດຳເນີນການ');
INSERT INTO `tbl__language` VALUES (304, 'Please login', 'text', 'index', 0, 'กรุณาเข้าระบบ', NULL, 'ກະລຸນາເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (305, 'Please select', 'text', 'index', 0, 'กรุณาเลือก', NULL, 'ກະລຸນາເລືອກ');
INSERT INTO `tbl__language` VALUES (306, 'Please select :name at least one item', 'text', 'index', 0, 'กรุณาเลือก :name อย่างน้อย 1 รายการ', NULL, 'ກະລຸນາເລືອກ :name ຢ່າງໜ້ອຍ 1 ລາຍການ');
INSERT INTO `tbl__language` VALUES (307, 'Please select from the search results', 'text', 'index', 0, 'กรุณาเลือกจากผลลัพท์การค้นหา', NULL, 'ກະລຸນາເລືອກຈາກຜົນການຊອກຫາ');
INSERT INTO `tbl__language` VALUES (308, 'Port', 'text', 'index', 0, 'พอร์ต', NULL, 'ພອດ');
INSERT INTO `tbl__language` VALUES (309, 'Prefix', 'text', 'index', 0, 'คำนำหน้า', NULL, 'ຄຳນຳໜ້າ');
INSERT INTO `tbl__language` VALUES (310, 'Prefix, if changed The number will be counted again. You can enter %Y%M (year, month).', 'text', 'index', 0, 'คำนำหน้า ถ้ามีการเปลี่ยนแปลง เลขที่จะนับหนึ่งใหม่ สามารถใส่ %Y%M (ปี, เดือน) ได้', NULL, 'ຄໍານໍາຫນ້າ, ຖ້າມີການປ່ຽນແປງ ຕົວເລກທີ່ຈະນັບອີກຄັ້ງສາມາດໃສ່ເປັນ %Y%M (ປີ, ເດືອນ).');
INSERT INTO `tbl__language` VALUES (311, 'Prename', 'text', 'index', 0, 'คำนำหน้าชื่อ', NULL, 'ຄຳນຳໜ້າຊື່');
INSERT INTO `tbl__language` VALUES (312, 'Print', 'text', 'index', 0, 'พิมพ์', NULL, 'ພິມ');
INSERT INTO `tbl__language` VALUES (313, 'Privacy Policy', 'text', 'index', 0, 'นโยบายความเป็นส่วนตัว', NULL, 'ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ');
INSERT INTO `tbl__language` VALUES (314, 'Problems and repairs details', 'text', 'index', 0, 'รายละเอียดการซ่อม/ปัญหา', NULL, 'ລາຍະລະອຽດການຊ່ອມ/ບັນຫາ');
INSERT INTO `tbl__language` VALUES (315, 'Profile', 'text', 'index', 0, 'ข้อมูลส่วนตัว', NULL, 'ຂໍ້ມູນສ່ວນຕົວ');
INSERT INTO `tbl__language` VALUES (316, 'Province', 'text', 'index', 0, 'จังหวัด', NULL, 'ແຂວງ');
INSERT INTO `tbl__language` VALUES (317, 'Reason', 'text', 'index', 0, 'เหตุผล', NULL, 'ເຫດ​ຜົນ');
INSERT INTO `tbl__language` VALUES (318, 'Reasons for leave', 'text', 'index', 0, 'เหตุผลการลา', NULL, 'ເຫດຜົນຂອງການພັກ');
INSERT INTO `tbl__language` VALUES (319, 'Received', 'text', 'index', 0, 'รับแล้ว', NULL, 'ຮັບແລ້ວ');
INSERT INTO `tbl__language` VALUES (320, 'Received date', 'text', 'index', 0, 'วันที่รับ', NULL, 'ວັນທີ່ຮັບ');
INSERT INTO `tbl__language` VALUES (321, 'Received document', 'text', 'index', 0, 'เอกสารขาเข้า', NULL, 'ເອກະສານຂາເຂົ້າ');
INSERT INTO `tbl__language` VALUES (322, 'Recipient', 'text', 'index', 0, 'ผู้รับเอกสาร', NULL, 'ຜູ້ຮັບເອກະສານ');
INSERT INTO `tbl__language` VALUES (323, 'Register', 'text', 'index', 0, 'สมัครสมาชิก', NULL, 'ສະໝັກສະມາຊິກ');
INSERT INTO `tbl__language` VALUES (324, 'Register successfully Please log in', 'text', 'index', 0, 'ลงทะเบียนเรียบร้อยแล้วกรุณาเข้าสู่ระบบ', NULL, 'ລົງທະບຽນຢ່າງສຳເລັດຜົນກະລຸນາເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (325, 'Register successfully, We have sent complete registration information to :email', 'text', 'index', 0, 'ลงทะเบียนสมาชิกใหม่เรียบร้อย เราได้ส่งข้อมูลการลงทะเบียนไปยัง :email', NULL, 'ລົງທະບຽນສຳເລັດແລ້ວ ເຮົາໄດ້ສົ່ງຂໍ້ມູນການລົງທະບຽນໄປທີ່ :email');
INSERT INTO `tbl__language` VALUES (326, 'Registered successfully Please check your email :email and click the link to verify your email.', 'text', 'index', 0, 'ลงทะเบียนเรียบร้อย กรุณาตรวจสอบอีเมล์ :email และคลิงลิงค์ยืนยันอีเมล', NULL, 'ລົງທະບຽນສົບຜົນສໍາເລັດ ກະ​ລຸ​ນາ​ກວດ​ສອບ​ອີ​ເມວ​ຂອງ​ທ່ານ :email ແລະ​ຄລິກ​ໃສ່​ການ​ເຊື່ອມ​ຕໍ່​ເພື່ອ​ກວດ​ສອບ​ອີ​ເມວ​ຂອງ​ທ່ານ​.');
INSERT INTO `tbl__language` VALUES (327, 'Registration number of the document', 'text', 'index', 0, NULL, NULL, 'ເລກທະບຽນຂອງເອກະສານ');
INSERT INTO `tbl__language` VALUES (328, 'Remember me', 'text', 'index', 0, 'จำการเข้าระบบ', NULL, 'ຈົດຈຳການເຂົ້າລະບົບ');
INSERT INTO `tbl__language` VALUES (329, 'Remove', 'text', 'index', 0, 'ลบ', NULL, 'ລຶບ');
INSERT INTO `tbl__language` VALUES (330, 'Repair', 'text', 'index', 0, 'แจ้งซ่อม', NULL, 'ວຽກຊ່ອມ');
INSERT INTO `tbl__language` VALUES (331, 'Repair details', 'text', 'index', 0, 'รายละเอียดใบรับซ่อม', NULL, 'ສ້ອມແປງລາຍລະອຽດ');
INSERT INTO `tbl__language` VALUES (332, 'Repair history', 'text', 'index', 0, 'ติดตามการสั่งซ่อมของฉัน', NULL, 'ຕິດຕາມການສັ່ງຊ່ອມຂອງຂ້ອຍ');
INSERT INTO `tbl__language` VALUES (333, 'Repair job description', 'text', 'index', 0, 'รายละเอียดการซ่อม', NULL, 'ລາຍະລະອຽດການຊ່ອມ');
INSERT INTO `tbl__language` VALUES (334, 'Repair jobs', 'text', 'index', 0, 'งานซ่อม', NULL, 'ວຽກຊ່ອມ');
INSERT INTO `tbl__language` VALUES (335, 'Repair list', 'text', 'index', 0, 'รายการซ่อม', NULL, 'ລາຍະການຊ່ອມ');
INSERT INTO `tbl__language` VALUES (336, 'Repair note', 'text', 'index', 0, 'หมายเหตุการซ่อม', NULL, 'ຫມາຍເຫດການຊ່ອມ');
INSERT INTO `tbl__language` VALUES (337, 'Repair process', 'text', 'index', 0, 'สถานะการซ่อมปัจจุบัน', NULL, 'ສະຖານະການສ້ອມແປງໃນປະຈຸບັນ');
INSERT INTO `tbl__language` VALUES (338, 'Repair receipt', 'text', 'index', 0, 'ใบแจ้งซ่อม', NULL, 'ແຈ້ງການຊ່ອມແຊມ');
INSERT INTO `tbl__language` VALUES (339, 'Repair status', 'text', 'index', 0, 'สถานะการซ่อม', NULL, 'ສະຖານະການຊ່ອມ');
INSERT INTO `tbl__language` VALUES (340, 'Repair status successful', 'text', 'index', 0, 'สถานะการซ่อมสำเร็จ', NULL, 'ການສ້ອມແປງສະຖານະພາບສຳເລັດແລ້ວ');
INSERT INTO `tbl__language` VALUES (341, 'Repair system', 'text', 'index', 0, 'ระบบแจ้งซ่อม', NULL, 'ລະບົບແຈ້ງຊ່ອມ');
INSERT INTO `tbl__language` VALUES (342, 'Repairman', 'text', 'index', 0, 'ช่างซ่อม', NULL, 'ຊ່າງຊ່ອມ');
INSERT INTO `tbl__language` VALUES (343, 'Report', 'text', 'index', 0, 'รายงาน', NULL, 'ລາຍງານ');
INSERT INTO `tbl__language` VALUES (344, 'Request for leave', 'text', 'index', 0, 'คำขออนุมัติลา', NULL, 'ຮ້ອງຂໍລາພັກ');
INSERT INTO `tbl__language` VALUES (345, 'Requested department', 'text', 'index', 0, NULL, NULL, 'ພະແນກຮ້ອງຂໍ');
INSERT INTO `tbl__language` VALUES (346, 'resized automatically', 'text', 'index', 0, 'ปรับขนาดอัตโนมัติ', NULL, 'ປັບຂະໜາດອັດຕະໂນມັດ');
INSERT INTO `tbl__language` VALUES (347, 'Room', 'text', 'index', 0, 'ห้อง', NULL, 'ຫ້ອງ');
INSERT INTO `tbl__language` VALUES (348, 'Room name', 'text', 'index', 0, 'ชื่อห้อง', NULL, 'ຊື່ຫ້ອງ');
INSERT INTO `tbl__language` VALUES (349, 'Room No.', 'text', 'index', 0, 'หมายเลขห้อง', NULL, 'ຫ້ອງຈໍານວນຫ້ອງ');
INSERT INTO `tbl__language` VALUES (350, 'Save', 'text', 'index', 0, 'บันทึก', NULL, 'ບັນທຶກ');
INSERT INTO `tbl__language` VALUES (351, 'Save and email completed', 'text', 'index', 0, 'บันทึกและส่งอีเมลเรียบร้อย', NULL, 'ບັນທຶກແລະສົ່ງອີເມວຮຽນຮ້ອຍ');
INSERT INTO `tbl__language` VALUES (352, 'Saved successfully', 'text', 'index', 0, 'บันทึกเรียบร้อย', NULL, 'ບັນທຶກຮຽບຮ້ອຍ');
INSERT INTO `tbl__language` VALUES (353, 'scroll to top', 'text', 'index', 0, 'เลื่อนขึ้นด้านบน', NULL, 'ເລື່ອນຂື້ນດ້ານເທິງ');
INSERT INTO `tbl__language` VALUES (354, 'Search', 'text', 'index', 0, 'ค้นหา', NULL, 'ຄົ້ນຫາ');
INSERT INTO `tbl__language` VALUES (355, 'Search <strong>:search</strong> found :count entries, displayed :start to :end, page :page of :total pages', 'text', 'index', 0, 'ค้นหา <strong>:search</strong> พบ :count รายการ แสดงรายการที่ :start - :end หน้าที่ :page จากทั้งหมด :total หน้า', NULL, 'ຄົ້ນຫາ <strong>:search</strong> ພົບ :count ລາຍການ ສະແດງລາຍການທີ່:start - :end ໜ້າທີ່:page ຈາກທັງໝົດ :total ໜ້າ');
INSERT INTO `tbl__language` VALUES (356, 'select all', 'text', 'index', 0, 'เลือกทั้งหมด', NULL, 'ເລືອກທັງໝົດ');
INSERT INTO `tbl__language` VALUES (357, 'Select the member name you want to send to Can choose many people', 'text', 'index', 0, NULL, NULL, 'ເລືອກຊື່ສະມາຊິກທີ່ທ່ານຕ້ອງການສົ່ງໄປ ສາມາດເລືອກປະຊາຊົນຈໍານວນຫຼາຍ');
INSERT INTO `tbl__language` VALUES (358, 'Select the status in which the booker can delete his or her entry. Or not selected at all, it can only be deleted by the approver.', 'text', 'index', 0, NULL, NULL, 'ເລືອກສະຖານະທີ່ຜູ້ຈອງສາມາດລຶບການເຂົ້າມາຂອງລາວໄດ້. ຫຼືບໍ່ໄດ້ເລືອກເລີຍ, ມັນສາມາດຖືກລຶບໄດ້ໂດຍຜູ້ອະນຸມັດເທົ່ານັ້ນ');
INSERT INTO `tbl__language` VALUES (359, 'Self drive', 'text', 'index', 0, 'ขับเอง', NULL, 'ຂັບເອງ');
INSERT INTO `tbl__language` VALUES (360, 'Send a notification message to the person concerned', 'text', 'index', 0, 'ส่งข้อความแจ้งเตือนไปยังผู้ที่เกี่ยวข้องด้วย', NULL, 'ສົ່ງຂໍ້ຄວາມແຈ້ງເຕືອນໃຫ້ກັບບຸກຄົນທີ່ກ່ຽວຂ້ອງ');
INSERT INTO `tbl__language` VALUES (361, 'Send a welcome email to new members', 'text', 'index', 0, 'ส่งข้อความต้อนรับสมาชิกใหม่', NULL, 'ສົ່ງອີເມວຕ້ອນຮັບກັບສະມາຊິກໃຫມ່');
INSERT INTO `tbl__language` VALUES (362, 'Send an email notification to the recipient', 'text', 'index', 0, NULL, NULL, 'ສົ່ງອີເມວແຈ້ງເຕືອນໃຫ້ຜູ້ຮັບ');
INSERT INTO `tbl__language` VALUES (363, 'Send Document', 'text', 'index', 0, NULL, NULL, 'ສົ່ງເອກະສານ');
INSERT INTO `tbl__language` VALUES (364, 'Send login authorization email', 'text', 'index', 0, 'ส่งอีเมลอนุมัติการเข้าระบบ', NULL, 'ສົ່ງອີເມວການອະນຸຍາດເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (365, 'Send member confirmation email', 'text', 'index', 0, 'ส่งอีเมลยืนยันสมาชิก', NULL, 'ສົ່ງອີເມລ໌ຢືນຢັນສະມາຊິກ');
INSERT INTO `tbl__language` VALUES (366, 'send message to user When a user adds LINE&#039;s official account as a friend', 'text', 'index', 0, 'ส่งข้อความไปยังผู้ใช้ เมื่อผู้ใช้เพิ่มบัญชีทางการของไลน์เป็นเพื่อน', NULL, 'ສົ່ງຂໍ້ຄວາມຫາຜູ້ໃຊ້ ເມື່ອຜູ້ໃຊ້ເພີ່ມບັນຊີທາງການຂອງ LINE ເປັນໝູ່');
INSERT INTO `tbl__language` VALUES (367, 'Send notification messages When making a transaction', 'text', 'index', 0, 'ส่งข้อความแจ้งเตือนเมื่อมีการทำรายการ', NULL, 'ສົ່ງຂໍ້ຄວາມແຈ້ງເຕືອນເມື່ອມີການເຮັດທຸລະກຳ');
INSERT INTO `tbl__language` VALUES (368, 'Send notification to LINE group when making a transaction', 'text', 'index', 0, NULL, NULL, 'ສົ່ງການແຈ້ງເຕືອນໄປຍັງກຸ່ມໄລເມື່ອມີການເຮັດລາຍະການ');
INSERT INTO `tbl__language` VALUES (369, 'Sender', 'text', 'index', 0, NULL, NULL, 'ຜູ້ສົ່ງ');
INSERT INTO `tbl__language` VALUES (370, 'Sent document', 'text', 'index', 0, 'เอกสารขาออก', NULL, 'ເອກະສານຂາອອກ');
INSERT INTO `tbl__language` VALUES (371, 'Serial/Registration No.', 'text', 'index', 0, 'หมายเลขเครื่อง/เลขทะเบียน', NULL, 'ຫມາຍເລກເຄື່ອງ/ເລກທະບຽນ');
INSERT INTO `tbl__language` VALUES (372, 'Server time', 'text', 'index', 0, 'เวลาเซิร์ฟเวอร์', NULL, 'ເວລາຂອງເຊີບເວີ');
INSERT INTO `tbl__language` VALUES (373, 'Set the application for send an email', 'text', 'index', 0, 'เลือกโปรแกรมที่ใช้ในการส่งอีเมล', NULL, 'ເລືອກໂປຮແກຮມທີ່ໃຊ້ໃນການສົ່ງອີເມວ');
INSERT INTO `tbl__language` VALUES (374, 'Setting up the email system', 'text', 'index', 0, 'การตั้งค่าเกี่ยวกับระบบอีเมล', NULL, 'ການຕັ້ງຄ່າກ່ຽວກັບລະບົບອີເມວ');
INSERT INTO `tbl__language` VALUES (375, 'Settings', 'text', 'index', 0, 'ตั้งค่า', NULL, 'ຕັ້ງຄ່າ');
INSERT INTO `tbl__language` VALUES (376, 'Settings the conditions for member login', 'text', 'index', 0, 'ตั้งค่าเงื่อนไขในการตรวจสอบการเข้าสู่ระบบ', NULL, 'ຕັ້ງເງື່ອນໄຂການກວດສອບການເຂົ້າລະບົບ');
INSERT INTO `tbl__language` VALUES (377, 'Settings the timing of the server to match the local time', 'text', 'index', 0, 'ตั้งค่าเขตเวลาของเซิร์ฟเวอร์ ให้ตรงกันกับเวลาท้องถิ่น', NULL, 'ຕັ້ງຄ່າເຂດເວລາຂອງເຊີບເວີ ໃຫ້ກົງກັບເວລາທ້ອງຖີ່ນ');
INSERT INTO `tbl__language` VALUES (378, 'Sex', 'text', 'index', 0, 'เพศ', NULL, 'ເພດ');
INSERT INTO `tbl__language` VALUES (379, 'Short description about your website', 'text', 'index', 0, 'ข้อความสั้นๆอธิบายว่าเป็นเว็บไซต์เกี่ยวกับอะไร', NULL, 'ຂໍ້ຄວາມສັ້ນໆ ອະທິບາຍວ່າເປັນເວັບໄຊກ່ຽວກັບຫຍັງ');
INSERT INTO `tbl__language` VALUES (380, 'Show', 'text', 'index', 0, 'แสดง', NULL, 'ສະແດງ');
INSERT INTO `tbl__language` VALUES (381, 'Show web title with logo', 'text', 'index', 0, 'แสดงชื่อเว็บและโลโก', NULL, 'ສະແດງຊື່ເວັບແລະໂລໂກ້');
INSERT INTO `tbl__language` VALUES (382, 'Site Name', 'text', 'index', 0, 'ชื่อของเว็บไซต์', NULL, 'ຊື່ຂອງເວັບໄຊ');
INSERT INTO `tbl__language` VALUES (383, 'Site settings', 'text', 'index', 0, 'ตั้งค่าเว็บไซต์', NULL, 'ຕັ້ງຄ່າເວັບໄຊ');
INSERT INTO `tbl__language` VALUES (384, 'size :width*:height pixel', 'text', 'index', 0, 'ขนาด :width*:height พิกเซล', NULL, 'ຂະໜາດ :width*:height ຟິດເຊວล');
INSERT INTO `tbl__language` VALUES (385, 'Size of', 'text', 'index', 0, 'ขนาดของ', NULL, 'ຂະໜາດຂອງ');
INSERT INTO `tbl__language` VALUES (386, 'Size of the file upload', 'text', 'index', 0, 'ขนาดของไฟล์อัปโหลด', NULL, 'ຂະໜາດຂອງແຟ້ມອັບໂຫຼດ');
INSERT INTO `tbl__language` VALUES (387, 'skip to content', 'text', 'index', 0, 'ข้ามไปยังเนื้อหา', NULL, 'ຂ້າມໄປຍັງເນື້ອຫາ');
INSERT INTO `tbl__language` VALUES (388, 'Sorry', 'text', 'index', 0, 'ขออภัย', NULL, 'ຂໍໂທດ');
INSERT INTO `tbl__language` VALUES (389, 'Sorry, cannot find a page called Please check the URL or try the call again.', 'text', 'index', 0, 'ขออภัย ไม่พบหน้าที่เรียก โปรดตรวจสอบ URL หรือลองเรียกอีกครั้ง', NULL, 'ຂໍ​ອະ​ໄພ, ບໍ່​ສາ​ມາດ​ຊອກ​ຫາ​ຫນ້າ​ທີ່​ຮ້ອງ​ຂໍ. ກະ​ລຸ​ນາ​ກວດ​ສອບ URL ຫຼື​ພະ​ຍາ​ຍາມ​ດຶງ​ຂໍ້​ມູນ​ອີກ​ເທື່ອ​ຫນຶ່ງ.');
INSERT INTO `tbl__language` VALUES (390, 'Sorry, Item not found It&#39;s may be deleted', 'text', 'index', 0, 'ขออภัย ไม่พบรายการที่เลือก รายการนี้อาจถูกลบไปแล้ว', NULL, 'ຂໍໂທດ ບໍ່ພົບລາຍການທີ່ເລືອກ ລາຍການນີ້ອາດຖືກລຶບໄປແລ້ວ');
INSERT INTO `tbl__language` VALUES (391, 'Specify the file extension that allows uploading. English lowercase letters and numbers 2-4 characters to separate each type with a comma (,) and without spaces. eg zip,rar,doc,docx', 'text', 'index', 0, 'ระบุนามสกุลของไฟล์ที่สามารถอัปโหลดได้ ภาษาอังกฤษตัวพิมพ์เล็กและตัวเลขสองถึงสี่ตัวอักษร คั่นแต่ละรายการด้วยลูกน้ำ (,)', NULL, 'ລະບົບນາມສະກຸນຂອງແຟ້ມທີ່ສາມາດອັບໂຫຼດໄດ້ ພາສາອັງກິດຕົວພີມນ້ອຍແລະຕົວເລກສອງເຖິງສີ່ຕົວອັກສອນ ຄັ່ນແຕ່ລະລາຍການດ້ວຍເຄື່ອງໝາຍຈຸດ(,)');
INSERT INTO `tbl__language` VALUES (392, 'Specify the language code of the email, as utf-8', 'text', 'index', 0, 'ระบุรหัสภาษาของอีเมลที่ส่ง เช่น utf-8', NULL, 'ລະບຸລະຫັດພາສາຂອງອີເມວທີ່ສົ່ງເຊັ່ນ utf-8');
INSERT INTO `tbl__language` VALUES (393, 'Start a new line with the web name', 'text', 'index', 0, 'ขึ้นบรรทัดใหม่ชื่อเว็บ', NULL, 'ເລີ່ມແຖວໃໝ່ຊື່ເວັບ');
INSERT INTO `tbl__language` VALUES (394, 'Start date', 'text', 'index', 0, 'วันที่เริ่มต้น', NULL, 'ວັນທີເລີ່ມຕົ້ນ');
INSERT INTO `tbl__language` VALUES (395, 'Statistics for leave', 'text', 'index', 0, 'สถิติการลา', NULL, 'ສະຖິຕິການລາພັກ');
INSERT INTO `tbl__language` VALUES (396, 'Status', 'text', 'index', 0, 'สถานะ', NULL, 'ສະຖານະ');
INSERT INTO `tbl__language` VALUES (397, 'Status for general members', 'text', 'index', 0, 'สถานะสำหรับสมาชิกทั่วไป', NULL, 'ສະຖານະສຳລັບສະມາຊິກທົ່ວໄປ');
INSERT INTO `tbl__language` VALUES (398, 'Status of members who are drivers', 'text', 'index', 0, NULL, NULL, 'ສະຖານະພາບຂອງສະມາຊິກຜູ້ຂັບລົດ');
INSERT INTO `tbl__language` VALUES (399, 'Status of members who are personnel', 'text', 'index', 0, 'สถานะของสมาชิกที่เป็นบุคลากร', NULL, 'ສະຖານະພາບຂອງສະມາຊິກຜູ້ທີ່ມີພະນັກງານ');
INSERT INTO `tbl__language` VALUES (400, 'Stock', 'text', 'index', 0, 'สต๊อก', NULL, 'ຫຸ້ນ');
INSERT INTO `tbl__language` VALUES (401, 'Style', 'text', 'index', 0, 'รูปแบบ', NULL, 'ຮູບແບບ');
INSERT INTO `tbl__language` VALUES (402, 'Successfully deleted', 'text', 'index', 0, 'ลบเรียบร้อย', NULL, 'ລຶບສຳເລັດແລ້ວ');
INSERT INTO `tbl__language` VALUES (403, 'Successfully imported :count items', 'text', 'index', 0, 'นำเข้าสำเร็จ :count รายการ', NULL, 'ນຳເຂົ້າສຳເລັດ:count ລາຍການ');
INSERT INTO `tbl__language` VALUES (404, 'Text color', 'text', 'index', 0, 'สีตัวอักษร', NULL, 'ສີຕົວອັກສອນ');
INSERT INTO `tbl__language` VALUES (405, 'The document number prefix, such as %Y%M, is replaced with the year and month. When the prefix changes (New month starts) The number will count to 1 again.', 'text', 'index', 0, 'คำนำหน้าเลขที่เอกสาร เช่น %Y%M จะถูกแทนที่ด้วยปีและเดือน เมื่อคำนำหน้าเปลี่ยน (ขึ้นเดือนใหม่) ตัวเลขจะไปนับ 1 ใหม่', NULL, 'ຄຳນຳໜ້າໝາຍເລກເອກະສານ, ເຊັ່ນ %Y%M, ຖືກແທນທີ່ດ້ວຍປີ ແລະເດືອນ. ເມື່ອຄໍານໍາຫນ້າປ່ຽນແປງ (ເດືອນໃໝ່ເລີ່ມ) ຕົວເລກຈະນັບເປັນ 1 ອີກຄັ້ງ');
INSERT INTO `tbl__language` VALUES (406, 'The e-mail address of the person or entity that has the authority to make decisions about the collection, use or dissemination of personal data.', 'text', 'index', 0, 'ที่อยู่อีเมลของบุคคลหรือนิติบุคคลที่มีอำนาจตัดสินใจเกี่ยวกับการเก็บรวบรวม ใช้ หรือเผยแพร่ข้อมูลส่วนบุคคล', NULL, 'ທີ່ຢູ່ອີເມລ໌ຂອງບຸກຄົນຫຼືຫນ່ວຍງານທີ່ມີອໍານາດໃນການຕັດສິນໃຈກ່ຽວກັບການລວບລວມ, ການນໍາໃຊ້ຫຼືການເຜີຍແຜ່ຂໍ້ມູນສ່ວນບຸກຄົນ.');
INSERT INTO `tbl__language` VALUES (407, 'The file size larger than the limit', 'text', 'index', 0, 'ขนาดของไฟล์ใหญ่กว่าที่กำหนด', NULL, 'ຂະຫນາດຂອງໄຟໃຫຍ່ກວ່າທີ່ກໍາຫນົດ');
INSERT INTO `tbl__language` VALUES (408, 'The list of members in the selected status will be displayed in the personnel module', 'text', 'index', 0, 'รายชื่อสมาชิกในสถานะที่เลือกจะถูกแสดงในโมดูลบุคลากร', NULL, 'ບັນຊີລາຍຊື່ຂອງສະມາຊິກໃນສະຖານະທີ່ເລືອກຈະຖືກສະແດງໃນໂມດູນບຸກຄົນ.');
INSERT INTO `tbl__language` VALUES (409, 'The members status of the site', 'text', 'index', 0, 'สถานะของสมาชิกของเว็บไซต์', NULL, 'ສະຖານະຂອງສະມາຂິກຂອງເວັບໄຊ');
INSERT INTO `tbl__language` VALUES (410, 'The message has been sent to the admin successfully. Please wait a moment for the admin to approve the registration. You can log back in later if approved.', 'text', 'index', 0, 'ส่งข้อความไปยังผู้ดูแลระบบเรียบร้อยแล้ว กรุณารอสักครู่เพื่อให้ผู้ดูแลระบบอนุมัติการลงทะเบียน คุณสามารถกลับมาเข้าระบบได้ในภายหลังหากได้รับการอนุมัติแล้ว', NULL, 'ຂໍ້ຄວາມດັ່ງກ່າວໄດ້ຖືກສົ່ງໄປຫາຜູ້ເບິ່ງແຍງຢ່າງສໍາເລັດຜົນ. ກະລຸນາລໍຖ້າໃຫ້ຜູ້ເບິ່ງແຍງລະບົບອະນຸມັດການລົງທະບຽນ. ທ່ານສາມາດເຂົ້າສູ່ລະບົບຄືນໄດ້ໃນພາຍຫຼັງຖ້າໄດ້ຮັບການອະນຸມັດ.');
INSERT INTO `tbl__language` VALUES (411, 'The name of the document when downloaded. If empty, use the name of the uploaded file. (Thai language available)', 'text', 'index', 0, 'ชื่อของเอกสารเมื่อดาวน์โหลด ถ้าไม่ระบุช่องนี้ จะใช้ชื่อของไฟล์ที่อัปโหลด (สามารถใช้ภาษาไทยได้)', NULL, 'ຊື່ຂອງເອກະສານເມື່ອດາວໂຫຼດ ຖ້າບໍ່ລະບຸຊ່ອງນີ້ ຈະໃຊ້ຊື່ຂອງແຟ້ມທີ່ອັບໂຫຼດ(ສາມາດໃຊ້ພາສາລາວໄດ້)');
INSERT INTO `tbl__language` VALUES (412, 'The name of the mail server as localhost or smtp.gmail.com (To change the settings of your email is the default. To remove this box entirely.)', 'text', 'index', 0, 'ชื่อของเมล์เซิร์ฟเวอร์ เช่น localhost หรือ smtp.gmail.com (ต้องการเปลี่ยนค่ากำหนดของอีเมลทั้งหมดเป็นค่าเริ่มต้น ให้ลบข้อความในช่องนี้ออกทั้งหมด)', NULL, 'ຊື່ຂອງເມວເຊີບເວີເຊັ່ນ localhost หรือ chitdpt@gmail.com (ຕ້ອງປ່ຽນຄ່າກຳນົດຂອງອີເມວທັງໝົດເປັນຄ່າເລີ່ມຕົ້ນ ໃຫ້ລຶບຂໍ້ຄວາມໃນຊ່ອງນີ້ອອກທັງໝົດ)');
INSERT INTO `tbl__language` VALUES (413, 'The recipient is listed in the selected group can be downloaded.', 'text', 'index', 0, 'ผู้รับในกลุ่มที่เลือกสามารถดาวน์โหลดเอกสารได้', NULL, 'ຜຸ້ຮັບໃນກຸ່ມທີ່ເລືອກສາມາດດາວໂຫຼດ');
INSERT INTO `tbl__language` VALUES (414, 'The recipient was not found. or no recipients found in the selected department.', 'text', 'index', 0, 'ไม่พบผู้รับ หรือไม่พบผู้รับในแผนกที่เลือก', NULL, 'ບໍ່ພົບຜູ້ຮັບ. ຫຼືບໍ່ພົບຜູ້ຮັບໃນພະແນກທີ່ເລືອກ.');
INSERT INTO `tbl__language` VALUES (415, 'The size of the files can be uploaded. (Should not exceed the value of the Server :upload_max_filesize.)', 'text', 'index', 0, 'ขนาดของไฟล์ที่สามารถอัปโหลดได้ (ไม่ควรเกินค่ากำหนดของเซิร์ฟเวอร์ :upload_max_filesize)', NULL, 'ຂະໜາດຂອງແຟ້ມທີ່ສາມາດອັບໂຫຼດໄດ້(ບໍ່ຄວນເກີນຄ່າກຳນົດຂອງເຊີບເວີ :upload_max_filesize)');
INSERT INTO `tbl__language` VALUES (416, 'The type of file is invalid', 'text', 'index', 0, 'ชนิดของไฟล์ไม่รองรับ', NULL, 'ຊະນິດຂອງແຟ້ມບໍ່ຮອງຮັບ');
INSERT INTO `tbl__language` VALUES (417, 'Theme', 'text', 'index', 0, 'ธีม', NULL, 'ຮູບແບບສີສັນ');
INSERT INTO `tbl__language` VALUES (418, 'There are new documents sent to you.', 'text', 'index', 0, 'มีเอกสารใหม่ส่งถึงคุณ', NULL, 'ມີເອກະສານໃໝ່ສົ່ງເຖິ່ງທ່ານ');
INSERT INTO `tbl__language` VALUES (419, 'This :name already exist', 'text', 'index', 0, 'มี :name นี้อยู่ก่อนแล้ว', NULL, 'ມີ :name ນີ້ຢູ່ກ່ອນແລ້ວ');
INSERT INTO `tbl__language` VALUES (420, 'This website uses cookies to provide our services. To find out more about our use of cookies, please see our :privacy.', 'text', 'index', 0, 'เว็บไซต์นี้มีการใช้คุกกี้เพื่อปรับปรุงการให้บริการ หากต้องการข้อมูลเพิ่มเติมเกี่ยวกับการใช้คุกกี้ของเรา โปรดดู :privacy', NULL, 'ເວັບໄຊທ໌ນີ້ໃຊ້ຄຸກກີເພື່ອປັບປຸງການບໍລິການ. ສໍາລັບຂໍ້ມູນເພີ່ມເຕີມກ່ຽວກັບການນໍາໃຊ້ຄຸກກີຂອງພວກເຮົາ, ເບິ່ງ :privacy');
INSERT INTO `tbl__language` VALUES (421, 'Time', 'text', 'index', 0, 'เวลา', NULL, 'ເວລາ');
INSERT INTO `tbl__language` VALUES (422, 'Time zone', 'text', 'index', 0, 'เขตเวลา', NULL, 'ເຂດເວລາ');
INSERT INTO `tbl__language` VALUES (423, 'times', 'text', 'index', 0, 'ครั้ง', NULL, 'ຄັ້ງ');
INSERT INTO `tbl__language` VALUES (424, 'to', 'text', 'index', 0, 'ถึง', NULL, 'ເຖິງ');
INSERT INTO `tbl__language` VALUES (425, 'To change your password, enter your password to match the two inputs', 'text', 'index', 0, 'ถ้าต้องการเปลี่ยนรหัสผ่าน กรุณากรอกรหัสผ่านสองช่องให้ตรงกัน', NULL, 'ຖ້າຕ້ອງການປ່ຽນລະຫັດຜ່ານກະລຸນາເພີ່ມລະຫັດຜ່ານສອງຊ່ອງໃຫ້ກົງກັນ');
INSERT INTO `tbl__language` VALUES (426, 'Topic', 'text', 'index', 0, 'หัวข้อ', NULL, 'ຫົວຂໍ້');
INSERT INTO `tbl__language` VALUES (427, 'Total', 'text', 'index', 0, 'รวม', NULL, 'ລວມ');
INSERT INTO `tbl__language` VALUES (428, 'Transaction date', 'text', 'index', 0, 'วันที่ทำรายการ', NULL, 'ວັນທີ່ເຮັດລາຍະການ');
INSERT INTO `tbl__language` VALUES (429, 'Transaction history', 'text', 'index', 0, 'ประวัติการทำรายการ', NULL, 'ປະວັດການເຮັດລາຍະການ');
INSERT INTO `tbl__language` VALUES (430, 'Type', 'text', 'index', 0, 'ประเภท', NULL, 'ປະເພດ');
INSERT INTO `tbl__language` VALUES (431, 'Type of file uploads', 'text', 'index', 0, 'ชนิดของไฟล์อัปโหลด', NULL, 'ຊະນິດຂອງແຟ້ມອັບໂຫຼດ');
INSERT INTO `tbl__language` VALUES (432, 'Unable to complete the transaction', 'text', 'index', 0, 'ไม่สามารถทำรายการนี้ได้', NULL, 'ບໍ່ສາມາດເຮັດລາຍການນີ້ໄດ້');
INSERT INTO `tbl__language` VALUES (433, 'Unit', 'text', 'index', 0, NULL, NULL, 'ໜ່ວຍ');
INSERT INTO `tbl__language` VALUES (434, 'Unlimited', 'text', 'index', 0, 'ไม่จำกัด', NULL, 'ບໍ່ຈຳກັດ');
INSERT INTO `tbl__language` VALUES (435, 'Update repair status', 'text', 'index', 0, 'ปรับปรุงสถานะการซ่อม', NULL, 'ປັບປຸງສະຖານະພາບ');
INSERT INTO `tbl__language` VALUES (436, 'Upload', 'text', 'index', 0, 'อัปโหลด', NULL, 'ອັບໂຫຼດ');
INSERT INTO `tbl__language` VALUES (437, 'Upload :type files', 'text', 'index', 0, 'อัปโหลดไฟล์ :type', NULL, 'ອັບໂຫຼດແຟ້ມຂໍ້ມູນ :type');
INSERT INTO `tbl__language` VALUES (438, 'Uploaded images are resized automatically', 'text', 'index', 0, 'รูปภาพที่อัปโหลดจะถูกปรับขนาดโดยอัตโนมัติ', NULL, 'ຮູບພາບທີ່ອັບໂຫຼດຈະຖືກປັບຂະໜາດໂດຍອັດຕະໂນມັດ');
INSERT INTO `tbl__language` VALUES (439, 'Urgency', 'text', 'index', 0, 'ความเร่งด่วน', NULL, 'ຄວາມໄວດ່ວນ');
INSERT INTO `tbl__language` VALUES (440, 'URL must begin with http:// or https://', 'text', 'index', 0, 'URL ต้องขึ้นต้นด้วย http:// หรือ https://', NULL, 'URL ຕ້ອງເລີ່ມຕົ້ນດ້ວຍ http:// ຫຼື https://');
INSERT INTO `tbl__language` VALUES (441, 'Usage details', 'text', 'index', 0, 'รายละเอียดการขอใช้', NULL, 'ລາຍະລະອຽດການໃຊ້');
INSERT INTO `tbl__language` VALUES (442, 'Usage history', 'text', 'index', 0, 'ประวัติการใช้งาน', NULL, 'ປະ​ຫວັດ​ການ​ນໍາ​ໃຊ້​');
INSERT INTO `tbl__language` VALUES (443, 'Use the theme&#039;s default settings.', 'text', 'index', 0, 'ใช้การตั้งค่าเริ่มต้นของธีม', NULL, 'ໃຊ້ການຕັ້ງຄ່າເລີ່ມຕົ້ນຂອງຮູບແບບສີສັນ.');
INSERT INTO `tbl__language` VALUES (444, 'User', 'text', 'index', 0, 'สมาชิก', NULL, 'ສະມາຊິກ');
INSERT INTO `tbl__language` VALUES (445, 'Username', 'text', 'index', 0, 'ชื่อผู้ใช้', NULL, 'ຊື່ຜູ້ໃຊ້');
INSERT INTO `tbl__language` VALUES (446, 'Username for the mail server. (To change, enter a new value.)', 'text', 'index', 0, 'ชื่อผู้ใช้ของเมล์เซิร์ฟเวอร์ (ต้องการเปลี่ยน ให้กรอก)', NULL, 'ຊື່ຜູ້ໃຊ້ຂອງເມວເຊີບເວີ (ຕ້ອງການປ່ຽນ ໃຫ້ເພີ່ມ)');
INSERT INTO `tbl__language` VALUES (447, 'Users', 'text', 'index', 0, 'สมาชิก', NULL, 'ສະມາຊິກ');
INSERT INTO `tbl__language` VALUES (448, 'Vehicle', 'text', 'index', 0, NULL, NULL, 'ຍານພາຫະນະ');
INSERT INTO `tbl__language` VALUES (449, 'Vehicle booking report', 'text', 'index', 0, NULL, NULL, 'ບົດລາຍງານການຈອງຍານພາຫະນະ');
INSERT INTO `tbl__language` VALUES (450, 'Vehicle No.', 'text', 'index', 0, 'เลขทะเบียน', NULL, 'ເລກທະບຽນ');
INSERT INTO `tbl__language` VALUES (451, 'Vehicles cannot be used at the selected time', 'text', 'index', 0, 'ยานพาหนะไม่สามารถใช้งานได้ในเวลาที่เลือก', NULL, 'ບໍ່ສາມາດໃຊ້ຍານພາຫະນະໄດ້ໃນເວລາທີ່ເລືອກ');
INSERT INTO `tbl__language` VALUES (452, 'Version', 'text', 'index', 0, 'รุ่น', NULL, 'ຮຸ່ນ');
INSERT INTO `tbl__language` VALUES (453, 'Vice-Director', 'text', 'index', 0, 'รองผู้อำนวยการ', NULL, 'ຮອງພະແນກ ປທສ ແຂວງສະຫວັນນະເຂດ');
INSERT INTO `tbl__language` VALUES (454, 'Waiting list', 'text', 'index', 0, 'รายการรอตรวจสอบ', NULL, 'ລາຍຊື່ລໍຖ້າ');
INSERT INTO `tbl__language` VALUES (455, 'Waiting to check from the staff', 'text', 'index', 0, 'รอตรวจสอบจากเจ้าหน้าที่', NULL, 'ລໍຖ້າການກວດສອບຈາກພະນັກງານ');
INSERT INTO `tbl__language` VALUES (456, 'Website template', 'text', 'index', 0, 'แม่แบบเว็บไซต์', NULL, 'ແມ່ແບບເວັບໄຊທ໌');
INSERT INTO `tbl__language` VALUES (457, 'Website title', 'text', 'index', 0, 'ชื่อเว็บ', NULL, 'ຊື່ເວັບ');
INSERT INTO `tbl__language` VALUES (458, 'Welcome', 'text', 'index', 0, 'สวัสดี', NULL, 'ສະບາຍດີ');
INSERT INTO `tbl__language` VALUES (459, 'Welcome %s, login complete', 'text', 'index', 0, 'สวัสดี คุณ %s ยินดีต้อนรับเข้าสู่ระบบ', NULL, 'ສະບາຍດີທ່ານ %s ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ລະບົບ');
INSERT INTO `tbl__language` VALUES (460, 'Welcome new members', 'text', 'index', 0, 'ยินดีต้อนรับสมาชิกใหม่', NULL, 'ຍິນດີຕ້ອນຮັບສະມາຊິກໃໝ່');
INSERT INTO `tbl__language` VALUES (461, 'When download', 'text', 'index', 0, 'เมื่อคลิกดาวน์โหลด', NULL, 'ເມື່ອກົດດາວໂຫຼດ');
INSERT INTO `tbl__language` VALUES (462, 'When enabled Social accounts can be logged in as an administrator. (Some abilities will not be available)', 'text', 'index', 0, 'เมื่อเปิดใช้งาน บัญชีโซเชียลจะสามารถเข้าระบบเป็นผู้ดูแลได้ (ความสามารถบางอย่างจะไม่สามารถใช้งานได้)', NULL, 'ເມື່ອເປີດໃຊ້ງານ ບັນຊີສັງຄົມສາມາດເຂົ້າສູ່ລະບົບເປັນຜູ້ບໍລິຫານ. (ຄວາມສາມາດບາງຢ່າງຈະບໍ່ມີ)');
INSERT INTO `tbl__language` VALUES (463, 'When enabled, a cookies consent banner will be displayed.', 'text', 'index', 0, 'เมื่อเปิดใช้งานระบบจะแสดงแบนเนอร์ขออนุญาตใช้งานคุ้กกี้', NULL, 'ເມື່ອເປີດໃຊ້ງານແລ້ວ, ປ້າຍໂຄສະນາການຍິນຍອມຂອງ cookies ຈະສະແດງຂຶ້ນ.');
INSERT INTO `tbl__language` VALUES (464, 'When enabled, Members registered with email must also verify their email address. It is not recommended to use in conjunction with other login methods.', 'text', 'index', 0, 'เมื่อเปิดใช้งาน สมาชิกที่ลงทะเบียนด้วยอีเมลจะต้องยืนยันที่อยู่อีเมลด้วย ไม่แนะนำให้ใช้ร่วมกับการเข้าระบบด้วยช่องทางอื่นๆ', NULL, 'ເມື່ອເປີດໃຊ້ ສະມາຊິກທີ່ລົງທະບຽນກັບອີເມລ໌ຈະຕ້ອງຢືນຢັນທີ່ຢູ່ອີເມວຂອງເຂົາເຈົ້າ. ມັນບໍ່ໄດ້ຖືກແນະນໍາໃຫ້ໃຊ້ຮ່ວມກັບວິທີການເຂົ້າສູ່ລະບົບອື່ນໆ.');
INSERT INTO `tbl__language` VALUES (465, 'Width', 'text', 'index', 0, 'กว้าง', NULL, 'ກວ້າງ');
INSERT INTO `tbl__language` VALUES (466, 'With selected', 'text', 'index', 0, 'ทำกับที่เลือก', NULL, 'ເຮັດກັບທີ່ເລືອກ');
INSERT INTO `tbl__language` VALUES (467, 'You can enter your LINE user ID below on your personal information page. to link your account to this official account', 'text', 'index', 0, 'คุณสามารถกรอก LINE user ID ด้านล่างในหน้าข้อมูลส่วนตัวของคุณ เพื่อผูกบัญชีของคุณเข้ากับบัญชีทางการนี้ได้', NULL, 'ທ່ານສາມາດໃສ່ LINE user ID ຂອງທ່ານຂ້າງລຸ່ມນີ້ຢູ່ໃນຫນ້າຂໍ້ມູນສ່ວນຕົວຂອງທ່ານ. ເພື່ອເຊື່ອມຕໍ່ບັນຊີຂອງທ່ານກັບບັນຊີທາງການນີ້');
INSERT INTO `tbl__language` VALUES (468, 'You can login at', 'text', 'index', 0, 'คุณสามารถเข้าระบบได้ที่', NULL, 'ທ່ານສາມາດເຂົ້າສູ່ລະບົບໄດ້ທີ່');
INSERT INTO `tbl__language` VALUES (469, 'You can select multiple groups', 'text', 'index', 0, 'สามารถเลือกได้หลายแผนก', NULL, 'ເຈົ້າສາມາດເລືອກຫຼາຍພະແນກ');
INSERT INTO `tbl__language` VALUES (470, 'You haven&#039;t verified your email address. Please check your email. and click the link in the email', 'text', 'index', 0, 'คุณยังไม่ได้ยืนยันที่อยู่อีเมล กรุณาตรวจสอบอีเมลของคุณ และคลิกลิงค์ในอีเมล', NULL, 'ທ່ານຍັງບໍ່ໄດ້ຢືນຢັນທີ່ຢູ່ອີເມວຂອງທ່ານ. ກະລຸນາກວດເບິ່ງອີເມວຂອງທ່ານ. ແລະຄລິກໃສ່ການເຊື່ອມຕໍ່ໃນອີເມລ໌');
INSERT INTO `tbl__language` VALUES (471, 'You want to', 'text', 'index', 0, 'คุณต้องการ', NULL, 'ທ່ານຕ້ອງການ');
INSERT INTO `tbl__language` VALUES (472, 'Your account has been approved.', 'text', 'index', 0, 'บัญชีของท่านได้รับการอนุมัติเรียบร้อยแล้ว', NULL, 'ບັນຊີຂອງທ່ານໄດ້ຮັບການອະນຸມັດແລ້ວ.');
INSERT INTO `tbl__language` VALUES (473, 'Your account has not been approved, please wait or contact the administrator.', 'text', 'index', 0, 'บัญชีของท่านยังไม่ได้รับการอนุมัติ กรุณารอ หรือติดต่อสอบถามไปยังผู้ดูแล', NULL, 'ບັນຊີຂອງທ່ານບໍ່ໄດ້ຮັບການອະນຸມັດ, ກະລຸນາລໍຖ້າ ຫຼືຕິດຕໍ່ຜູ້ເບິ່ງແຍງລະບົບ.');
INSERT INTO `tbl__language` VALUES (474, 'Your message was sent successfully', 'text', 'index', 0, 'ส่งข้อความไปยังผู้ที่เกี่ยวข้องเรียบร้อยแล้ว', NULL, 'ສົ່ງຂໍ້ຄວາມໄປຍັງຜູ້ຮັບຮຽບຮ້ອຍແລ້ວ');
INSERT INTO `tbl__language` VALUES (475, 'Your new password is', 'text', 'index', 0, 'รหัสผ่านใหม่ของคุณคือ', NULL, 'ລະຫັດຜ່ານໃໝ່ຂອງທ່ານຄື');
INSERT INTO `tbl__language` VALUES (476, 'Your registration information', 'text', 'index', 0, 'ข้อมูลการลงทะเบียนของคุณ', NULL, 'ຂໍ້ມູນການລົງທະບຽນຂອງທ່ານ');
INSERT INTO `tbl__language` VALUES (477, 'Zipcode', 'text', 'index', 0, 'รหัสไปรษณีย์', NULL, 'ລະຫັດໄປສະນີ');
INSERT INTO `tbl__language` VALUES (478, 'Accept member verification request', 'text', 'index', 0, 'ยอมรับคำขอยืนยันสมาชิก', NULL, NULL);
INSERT INTO `tbl__language` VALUES (479, 'Already registered The system has sent an OTP code to the number you registered. Please check the SMS and enter the code to confirm your phone number.', 'text', 'index', 0, 'ลงทะเบียนเรียบร้อยแล้ว ระบบได้ส่งรหัส OTP ไปยังเบอร์ที่ท่านได้ลงทะเบียนไว้ กรุณาตรวจสอบ SMS แล้วให้นำรหัสมากรอกเพื่อเป็นการยืนยันเบอร์โทรศัพท์', NULL, NULL);
INSERT INTO `tbl__language` VALUES (480, 'Approval No. :no', 'text', 'index', 0, 'อนุมัติลำดับที่ :no', NULL, NULL);
INSERT INTO `tbl__language` VALUES (481, 'Attached file', 'text', 'index', 0, 'ไฟล์แนบ', NULL, NULL);
INSERT INTO `tbl__language` VALUES (482, 'Department head', 'text', 'index', 0, 'หัวหน้าแผนก', NULL, NULL);
INSERT INTO `tbl__language` VALUES (483, 'Didn&#039;t receive code?', 'text', 'index', 0, 'ไม่ได้รับโค้ด?', NULL, NULL);
INSERT INTO `tbl__language` VALUES (484, 'drag to order', 'text', 'index', 0, 'ลากเพื่อจัดลำดับ', NULL, NULL);
INSERT INTO `tbl__language` VALUES (485, 'ELEAVE_CATEGORIES', 'array', 'index', 0, 'a:1:{s:10:\"department\";s:12:\"แผนก\";}', NULL, NULL);
INSERT INTO `tbl__language` VALUES (486, 'Enter the 4-digit verification code that was sent to your phone number.', 'text', 'index', 0, 'ป้อนรหัสยืนยัน 4 หลักที่ส่งไปยังหมายเลขโทรศัพท์ของคุณ', NULL, NULL);
INSERT INTO `tbl__language` VALUES (487, 'Enter your registered username. A new password will be sent to this username.', 'text', 'index', 0, 'กรอกชื่อผู้ใช้ที่ลงทะเบียนไว้ ระบบจะส่งรหัสผ่านใหม่ไปยังชื่อผู้ใช้นี้', NULL, NULL);
INSERT INTO `tbl__language` VALUES (488, 'Membership has not been confirmed yet.', 'text', 'index', 0, 'ยังไม่ได้ยืนยันสมาชิก', NULL, NULL);
INSERT INTO `tbl__language` VALUES (489, 'Mobile Phone Verification', 'text', 'index', 0, 'ยืนยันหมายเลขโทรศัพท์', NULL, NULL);
INSERT INTO `tbl__language` VALUES (490, 'ใบลา', 'text', 'index', 0, 'ใบลาของฉัน', NULL, NULL);
INSERT INTO `tbl__language` VALUES (491, 'OTP is invalid or expired. Please request a new OTP.', 'text', 'index', 0, 'OTP ไม่ถูกต้องหรือหมดอายุ กรุณาขอ OTP ใหม่', NULL, NULL);
INSERT INTO `tbl__language` VALUES (492, 'Remain', 'text', 'index', 0, 'คงเหลือ', NULL, NULL);
INSERT INTO `tbl__language` VALUES (493, 'Resend', 'text', 'index', 0, 'ส่งใหม่', NULL, NULL);
INSERT INTO `tbl__language` VALUES (494, 'Send a new password request', 'text', 'index', 0, 'ส่งคำขอ ขอรหัสผ่านใหม่', NULL, NULL);
INSERT INTO `tbl__language` VALUES (495, 'Send again in', 'text', 'index', 0, 'ส่งใหม่ในอีก', NULL, NULL);
INSERT INTO `tbl__language` VALUES (496, 'Send login approval notification', 'text', 'index', 0, 'ส่งแจ้งเตือนอนุมัติการเข้าระบบ', NULL, NULL);
INSERT INTO `tbl__language` VALUES (497, 'Sender Name', 'text', 'index', 0, 'ผู้ส่ง', NULL, NULL);
INSERT INTO `tbl__language` VALUES (498, 'showing page', 'text', 'index', 0, 'กำลังแสดงหน้าที่', NULL, NULL);
INSERT INTO `tbl__language` VALUES (499, 'SMS Settings', 'text', 'index', 0, 'ตั้งค่า SMS', NULL, NULL);
INSERT INTO `tbl__language` VALUES (500, 'SMS_SENDER_COMMENT', 'text', 'index', 0, 'บาง Package อาจไม่สามารถกำหนดชื่อผู้ส่งได้ กรุณาตรวจสอบกับผู้ให้บริการ', NULL, NULL);
INSERT INTO `tbl__language` VALUES (501, 'Specify the format of the document number as %04d means adding zeros until the four-digit number on the front, such as 0001.', 'text', 'index', 0, 'กำหนดรูปแบบเลขที่ของเอกสาร เช่น %04d หมายถึง เติมเลขศูนย์ด้านหน้าจนครบสี่หลัก เช่น 0001', NULL, NULL);
INSERT INTO `tbl__language` VALUES (502, 'Status update', 'text', 'index', 0, 'ปรับปรุงสถานะ', NULL, NULL);
INSERT INTO `tbl__language` VALUES (503, 'The system has sent a new OTP code to the phone number you have registered. Please check the SMS and enter the code to confirm the phone number.', 'text', 'index', 0, 'ระบบได้ส่งรหัส OTP ใหม่ไปยังหมายเลขโทรศัพท์ที่ท่านได้ลงทะเบียนไว้แล้ว กรุณาตรวจสอบ SMS แล้วให้นำรหัสมากรอกเพื่อเป็นการยืนยันเบอร์โทรศัพท์', NULL, NULL);
INSERT INTO `tbl__language` VALUES (504, 'Unable to take leave across the fiscal year. If you want to take continuous leave, separate the leave form into two. within that fiscal year', 'text', 'index', 0, 'ไม่สามารถลาข้ามปีงบประมาณได้ ถ้าต้องการลาต่อเนื่องให้แยกใบลาเป็นสองใบ ภายในปีงบประมาณ นั้นๆ', NULL, NULL);
INSERT INTO `tbl__language` VALUES (505, 'Username used for login or request a new password', 'text', 'index', 0, 'ชื่อผู้ใช้ ใช้สำหรับการเข้าระบบหรือการขอรหัสผ่านใหม่', NULL, NULL);
INSERT INTO `tbl__language` VALUES (506, 'Verify Account', 'text', 'index', 0, 'ยืนยันบัญชี', NULL, NULL);
INSERT INTO `tbl__language` VALUES (507, 'Welcome. Phone number has been verified. Please log in again.', 'text', 'index', 0, 'ยินดีต้อนรับ หมายเลขโทรศัพท์ได้รับการยืนยันแล้ว กรุณาเข้าระบบอีกครั้ง', NULL, NULL);
INSERT INTO `tbl__language` VALUES (508, 'You are not affiliated with a department. Please contact the administrator.', 'text', 'index', 0, 'คุณยังไม่ได้สังกัดแผนก กรุณาติดต่อผู้ดูแล', NULL, NULL);
INSERT INTO `tbl__language` VALUES (509, 'You are not affiliated with a department. Please select a department first.', 'text', 'index', 0, 'คุณยังไม่ได้สังกัดแผนก กรุณาเลือกแผนกก่อน', NULL, NULL);
INSERT INTO `tbl__language` VALUES (510, 'Your OTP code is :otp. Please enter this code on the website to confirm your phone number.', 'text', 'index', 0, 'รหัส OTP ของคุณคือ :otp กรุณาป้อนรหัสนี้บนเว็บไซต์เพื่อยืนยันหมายเลขโทรศัพท์ของคุณ', NULL, NULL);

-- ----------------------------
-- Table structure for tbl__leave
-- ----------------------------
DROP TABLE IF EXISTS `tbl__leave`;
CREATE TABLE `tbl__leave`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `num_days` tinyint NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__leave
-- ----------------------------
INSERT INTO `tbl__leave` VALUES (1, 'ลาป่วย', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น\r\nการลาป่วยต้องแนบใบรับรองแพทย์เสมอ\r\nสามารถลาย้อนหลังได้', 15, 1);
INSERT INTO `tbl__leave` VALUES (2, 'ลากิจส่วนตัว', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 10, 1);
INSERT INTO `tbl__leave` VALUES (3, 'ลาคลอดบุตร', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 60, 1);
INSERT INTO `tbl__leave` VALUES (4, 'ลาไปช่วยเหลือภรรยาที่คลอดบุตร', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 30, 1);
INSERT INTO `tbl__leave` VALUES (5, 'ลาเข้ารับการตรวจเลือกทหารหรือเข้ารับการเตรียมพล', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 10, 1);
INSERT INTO `tbl__leave` VALUES (6, 'ลาไปศึกษา ฝึกอบรม ปฏิบัติการวิจัย หรือดูงาน', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 5, 1);
INSERT INTO `tbl__leave` VALUES (8, 'ลาพักผ่อน', '**', 30, 1);

-- ----------------------------
-- Table structure for tbl__leave_items
-- ----------------------------
DROP TABLE IF EXISTS `tbl__leave_items`;
CREATE TABLE `tbl__leave_items`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `leave_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  `closed` tinyint(1) NULL DEFAULT NULL,
  `department` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `communication` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `start_period` tinyint(1) NOT NULL,
  `end_date` date NOT NULL,
  `end_period` tinyint(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `days` float NOT NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `leave_id`(`leave_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__leave_items
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__line
-- ----------------------------
DROP TABLE IF EXISTS `tbl__line`;
CREATE TABLE `tbl__line`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `department` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `token` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__line
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__logs
-- ----------------------------
DROP TABLE IF EXISTS `tbl__logs`;
CREATE TABLE `tbl__logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL,
  `module` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `reason` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `member_id` int NULL DEFAULT NULL,
  `topic` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `datas` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `src_id`(`src_id` ASC) USING BTREE,
  INDEX `module`(`module` ASC) USING BTREE,
  INDEX `action`(`action` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__logs
-- ----------------------------
INSERT INTO `tbl__logs` VALUES (1, 1, 'index', 'User', '2024-09-08 14:56:48', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (2, 0, 'index', 'Save', '2024-09-08 15:05:43', NULL, 1, '{LNG_General site settings}', NULL);
INSERT INTO `tbl__logs` VALUES (3, 1, 'booking', 'Save', '2024-09-08 15:25:54', NULL, 1, '{LNG_Room} ID : 1', NULL);
INSERT INTO `tbl__logs` VALUES (4, 1, 'booking', 'Save', '2024-09-08 15:28:20', NULL, 1, '{LNG_Room} ID : 1', NULL);
INSERT INTO `tbl__logs` VALUES (5, 1, 'booking', 'Save', '2024-09-08 15:32:24', NULL, 1, '{LNG_Room} ID : 1', NULL);
INSERT INTO `tbl__logs` VALUES (6, 1, 'index', 'User', '2024-09-09 23:21:26', NULL, 1, '{LNG_Login} IP 184.22.102.250', NULL);
INSERT INTO `tbl__logs` VALUES (7, 1, 'index', 'User', '2024-09-10 15:08:21', NULL, 1, '{LNG_Login} IP 10.106.41.29', NULL);
INSERT INTO `tbl__logs` VALUES (8, 0, 'index', 'Save', '2024-09-10 15:35:12', NULL, 1, '{LNG_Save} แผนก', NULL);
INSERT INTO `tbl__logs` VALUES (9, 0, 'index', 'Save', '2024-09-10 15:51:59', NULL, 1, '{LNG_Save} แผนก', NULL);
INSERT INTO `tbl__logs` VALUES (10, 1, 'index', 'User', '2024-09-10 16:10:46', NULL, 1, '{LNG_Login} IP 10.106.41.29', NULL);
INSERT INTO `tbl__logs` VALUES (11, 1, 'index', 'User', '2024-09-10 22:32:14', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (12, 1, 'index', 'User', '2024-09-11 21:43:18', NULL, 1, '{LNG_Login} IP 184.22.100.232', NULL);
INSERT INTO `tbl__logs` VALUES (13, 1, 'index', 'User', '2024-09-11 22:52:28', NULL, 1, '{LNG_Login} IP 184.22.100.232', NULL);
INSERT INTO `tbl__logs` VALUES (14, 1, 'index', 'User', '2024-09-12 18:39:24', NULL, 1, '{LNG_Login} IP 49.228.99.171', NULL);
INSERT INTO `tbl__logs` VALUES (15, 1, 'index', 'User', '2024-09-12 20:03:14', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (16, 1, 'booking', 'Save', '2024-09-12 20:38:39', NULL, 1, '{LNG_Room} ID : 1', NULL);
INSERT INTO `tbl__logs` VALUES (17, 1, 'index', 'User', '2024-09-12 22:39:40', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (18, 1, 'index', 'User', '2024-09-13 07:03:31', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (19, 1, 'index', 'User', '2024-09-13 22:51:18', NULL, 1, '{LNG_Login} IP 49.228.104.48', NULL);
INSERT INTO `tbl__logs` VALUES (20, 1, 'booking', 'Save', '2024-09-14 11:33:52', NULL, 1, '{LNG_Room} ID : 1', NULL);
INSERT INTO `tbl__logs` VALUES (21, 1, 'booking', 'Save', '2024-09-14 11:34:48', NULL, 1, '{LNG_Room} ID : 1', NULL);
INSERT INTO `tbl__logs` VALUES (22, 2, 'booking', 'Save', '2024-09-14 11:44:53', NULL, 1, '{LNG_Room} ID : 2', NULL);
INSERT INTO `tbl__logs` VALUES (23, 2, 'booking', 'Save', '2024-09-14 11:45:31', NULL, 1, '{LNG_Room} ID : 2', NULL);
INSERT INTO `tbl__logs` VALUES (24, 2, 'booking', 'Save', '2024-09-14 11:46:08', NULL, 1, '{LNG_Room} ID : 2', NULL);
INSERT INTO `tbl__logs` VALUES (25, 3, 'booking', 'Save', '2024-09-14 11:50:07', NULL, 1, '{LNG_Room} ID : 3', NULL);
INSERT INTO `tbl__logs` VALUES (26, 2, 'booking', 'Save', '2024-09-14 11:50:34', NULL, 1, '{LNG_Room} ID : 2', NULL);
INSERT INTO `tbl__logs` VALUES (27, 1, 'booking', 'Save', '2024-09-14 11:50:55', NULL, 1, '{LNG_Room} ID : 1', NULL);
INSERT INTO `tbl__logs` VALUES (28, 4, 'booking', 'Save', '2024-09-14 11:58:52', NULL, 1, '{LNG_Room} ID : 4', NULL);
INSERT INTO `tbl__logs` VALUES (29, 1, 'index', 'User', '2024-09-14 12:49:25', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (30, 1, 'index', 'User', '2024-09-14 13:32:46', NULL, 1, '{LNG_Editing your account} ID : 11', NULL);
INSERT INTO `tbl__logs` VALUES (31, 11, 'index', 'User', '2024-09-14 13:33:48', NULL, 11, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (32, 11, 'index', 'User', '2024-09-14 13:55:01', NULL, 11, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (33, 1, 'index', 'User', '2024-09-14 15:48:58', NULL, 1, '{LNG_Login} IP 184.22.103.61', NULL);
INSERT INTO `tbl__logs` VALUES (34, 0, 'index', 'Save', '2024-09-14 15:51:10', NULL, 1, '{LNG_General site settings}', NULL);
INSERT INTO `tbl__logs` VALUES (35, 11, 'index', 'User', '2024-09-14 15:51:22', NULL, 11, '{LNG_Login} IP 184.22.103.61', NULL);
INSERT INTO `tbl__logs` VALUES (36, 1, 'index', 'User', '2024-09-14 20:21:31', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (37, 1, 'index', 'User', '2024-09-14 20:28:14', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (38, 0, 'index', 'Save', '2024-09-14 20:29:18', NULL, 1, '{LNG_Save} แผนก', NULL);
INSERT INTO `tbl__logs` VALUES (39, 0, 'personnel', 'Save', '2024-09-14 20:31:44', NULL, 1, '{LNG_Module settings} {LNG_Personnel}', NULL);
INSERT INTO `tbl__logs` VALUES (40, 0, 'index', 'User', '2024-09-14 20:33:18', NULL, 1, '{LNG_Update permission} ID : 3', NULL);
INSERT INTO `tbl__logs` VALUES (41, 0, 'index', 'User', '2024-09-14 20:33:20', NULL, 1, '{LNG_Update permission} ID : 3', NULL);
INSERT INTO `tbl__logs` VALUES (42, 0, 'index', 'Save', '2024-09-14 20:46:59', NULL, 1, '{LNG_Save} ตำแหน่ง', NULL);
INSERT INTO `tbl__logs` VALUES (43, 12, 'index', 'User', '2024-09-14 23:49:00', NULL, 12, '{LNG_Create new account} ID : 12', NULL);
INSERT INTO `tbl__logs` VALUES (44, 13, 'index', 'User', '2024-09-14 23:50:23', NULL, 13, '{LNG_Create new account} ID : 13', NULL);
INSERT INTO `tbl__logs` VALUES (45, 1, 'index', 'User', '2024-09-14 23:50:57', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (46, 0, 'index', 'Save', '2024-09-14 23:53:11', NULL, 1, '{LNG_General site settings}', NULL);
INSERT INTO `tbl__logs` VALUES (47, 14, 'index', 'User', '2024-09-14 23:59:22', NULL, 14, '{LNG_Create new account} ID : 14', NULL);
INSERT INTO `tbl__logs` VALUES (48, 14, 'index', 'User', '2024-09-14 23:59:53', NULL, 14, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (49, 1, 'booking', 'Status', '2024-09-15 00:05:52', NULL, 14, 'รอตรวจสอบ', NULL);
INSERT INTO `tbl__logs` VALUES (50, 2, 'booking', 'Status', '2024-09-15 00:09:19', NULL, 14, 'รอตรวจสอบ', NULL);
INSERT INTO `tbl__logs` VALUES (51, 1, 'index', 'User', '2024-09-15 00:09:52', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (52, 1, 'booking', 'Status', '2024-09-15 00:11:52', NULL, 1, 'อนุมัติ', NULL);
INSERT INTO `tbl__logs` VALUES (53, 2, 'booking', 'Status', '2024-09-15 00:12:34', NULL, 1, 'อนุมัติ', NULL);
INSERT INTO `tbl__logs` VALUES (54, 15, 'index', 'User', '2024-09-15 00:15:57', NULL, 15, '{LNG_Create new account} ID : 15', NULL);
INSERT INTO `tbl__logs` VALUES (55, 1, 'index', 'User', '2024-09-15 00:16:17', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (56, 1, 'index', 'User', '2024-09-15 00:20:48', NULL, 1, '{LNG_Editing your account} ID : 15', NULL);
INSERT INTO `tbl__logs` VALUES (57, 1, 'index', 'User', '2024-09-15 00:23:55', NULL, 1, '{LNG_Editing your account} ID : 14', NULL);
INSERT INTO `tbl__logs` VALUES (58, 1, 'index', 'User', '2024-09-15 00:24:17', NULL, 1, '{LNG_Editing your account} ID : 14', NULL);
INSERT INTO `tbl__logs` VALUES (59, 1, 'index', 'User', '2024-09-15 00:26:42', NULL, 1, '{LNG_Create new account} ID : 16', NULL);
INSERT INTO `tbl__logs` VALUES (60, 1, 'index', 'User', '2024-09-15 00:27:26', NULL, 1, '{LNG_Editing your account} ID : 16', NULL);
INSERT INTO `tbl__logs` VALUES (61, 16, 'index', 'User', '2024-09-15 00:28:37', NULL, 16, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (62, 1, 'index', 'User', '2024-09-15 00:30:54', NULL, 1, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (63, 0, 'edocument', 'Save', '2024-09-15 00:31:23', NULL, 1, '{LNG_Module settings} {LNG_E-Document}', NULL);
INSERT INTO `tbl__logs` VALUES (64, 16, 'index', 'User', '2024-09-15 00:32:09', NULL, 16, '{LNG_Login} IP 203.147.19.129', NULL);
INSERT INTO `tbl__logs` VALUES (65, 3, 'edocument', 'Save', '2024-09-15 00:33:06', NULL, 16, '{LNG_Send Document} ID : 3', NULL);
INSERT INTO `tbl__logs` VALUES (66, 1, 'index', 'User', '2024-09-16 14:02:35', NULL, 1, '{LNG_Login} IP 10.106.41.29', NULL);
INSERT INTO `tbl__logs` VALUES (67, 0, 'index', 'Save', '2024-09-16 14:08:08', NULL, 1, '{LNG_Save} ตำแหน่ง', NULL);
INSERT INTO `tbl__logs` VALUES (68, 1, 'index', 'User', '2024-09-16 14:09:55', NULL, 1, '{LNG_Create new account} ID : 17', NULL);
INSERT INTO `tbl__logs` VALUES (69, 1, 'index', 'User', '2024-09-16 14:13:12', NULL, 1, '{LNG_Editing your account} ID : 17', NULL);
INSERT INTO `tbl__logs` VALUES (70, 17, 'index', 'User', '2024-09-16 14:13:55', NULL, 17, '{LNG_Login} IP 10.106.41.29', NULL);
INSERT INTO `tbl__logs` VALUES (71, 4, 'edocument', 'Save', '2024-09-16 14:17:51', NULL, 17, '{LNG_Send Document} ID : 4', NULL);
INSERT INTO `tbl__logs` VALUES (72, 5, 'edocument', 'Save', '2024-09-16 14:19:31', NULL, 17, '{LNG_Send Document} ID : 5', NULL);
INSERT INTO `tbl__logs` VALUES (73, 1, 'index', 'User', '2024-09-16 14:19:54', NULL, 1, '{LNG_Login} IP 10.106.41.29', NULL);
INSERT INTO `tbl__logs` VALUES (74, 1, 'index', 'User', '2024-09-17 22:27:35', NULL, 1, '{LNG_Login} IP 184.22.103.37', NULL);
INSERT INTO `tbl__logs` VALUES (75, 1, 'index', 'User', '2024-09-18 15:48:43', NULL, 1, '{LNG_Login} IP 10.106.41.29', NULL);

-- ----------------------------
-- Table structure for tbl__number
-- ----------------------------
DROP TABLE IF EXISTS `tbl__number`;
CREATE TABLE `tbl__number`  (
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `prefix` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `auto_increment` int NOT NULL,
  `last_update` date NULL DEFAULT NULL,
  PRIMARY KEY (`type`, `prefix`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__number
-- ----------------------------
INSERT INTO `tbl__number` VALUES ('edocument_format_no', '', 4, '2024-09-15');

-- ----------------------------
-- Table structure for tbl__repair
-- ----------------------------
DROP TABLE IF EXISTS `tbl__repair`;
CREATE TABLE `tbl__repair`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `inventory_id` int NOT NULL,
  `job_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `job_description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `job_id`(`job_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__repair
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__repair_status
-- ----------------------------
DROP TABLE IF EXISTS `tbl__repair_status`;
CREATE TABLE `tbl__repair_status`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `repair_id` int NOT NULL,
  `status` tinyint NOT NULL,
  `operator_id` int NOT NULL,
  `comment` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `member_id` int NOT NULL,
  `create_date` datetime NOT NULL,
  `cost` float NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operator_id`(`operator_id` ASC) USING BTREE,
  INDEX `repair_id`(`repair_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__repair_status
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__reservation
-- ----------------------------
DROP TABLE IF EXISTS `tbl__reservation`;
CREATE TABLE `tbl__reservation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `member_id` int NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `topic` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `attendees` int NOT NULL,
  `begin` datetime NULL DEFAULT NULL,
  `end` datetime NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `reason` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `approve` tinyint(1) NOT NULL,
  `closed` tinyint(1) NOT NULL,
  `department` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__reservation
-- ----------------------------
INSERT INTO `tbl__reservation` VALUES (1, 2, 14, '2024-09-15 00:05:52', 'ประชุมชี้แจงการใช้ระบบสารสนเทศเพื่อสนับสนุนการจัดทำ ปดจ.68 ของ ศปส.ทร.', 'จัดเตรียมห้องประชุมออนไลน์ และเริ่มทดสอบเวลา 1300', 30, '2024-09-17 13:30:01', '2024-09-17 16:30:00', 1, '', 1, 1, '00');
INSERT INTO `tbl__reservation` VALUES (2, 2, 14, '2024-09-15 00:09:19', 'การประชุมติดตามการเสนอโครงการจัดสวัสดิการในเชิงธุรกิจ ฝ่ายแผนโครงและงบประมาณ ศปส.ทร.', 'เตรียมระบบประชุมออนไลน์ และทดสอบเวลา 0900\r\nประธานการประชุม พล.ร.ท.วิทยา สิริบุญโรจน์', 30, '2024-09-18 09:30:01', '2024-09-18 13:30:00', 1, '', 1, 1, '00');

-- ----------------------------
-- Table structure for tbl__reservation_data
-- ----------------------------
DROP TABLE IF EXISTS `tbl__reservation_data`;
CREATE TABLE `tbl__reservation_data`  (
  `reservation_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  INDEX `reservation_id`(`reservation_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__reservation_data
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__rooms
-- ----------------------------
DROP TABLE IF EXISTS `tbl__rooms`;
CREATE TABLE `tbl__rooms`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `published` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__rooms
-- ----------------------------
INSERT INTO `tbl__rooms` VALUES (1, 'ห้องประชุม สปช.ทร.(1)', 'ห้องประชุมขนาดใหญ่ พร้อมสิ่งอำนวยความสะดวกครบถ้วน\r\nมีอุปกรณ์ประชุมออนไลน์', '#01579B', 1);
INSERT INTO `tbl__rooms` VALUES (2, 'ห้องประชุม สปช.ทร.(2)', 'ห้องประชุม ที่นั่งผู้เข้าร่วมประชุม รูปตัว U\r\nห้องประชุมขนาดกลาง จำนวนที่นั่งในที่ประชุม 30 ที่นั่ง\r\nสามารถจัดประขุมออนไลน์ได้', '#006064', 1);
INSERT INTO `tbl__rooms` VALUES (3, 'ห้องประชุมส่วนเทคโนโลยีสารสนเทศ', 'ห้องปฎิบัติการสารสนเทศ กสทจ.สปช.ทร.\r\nเหมาะสำหรับการประชุมเชิงปฏิบัติการสารสนเทศ\r\nมีระบบคอมพิวเตอร์สำหรับผู้เข้าร่วมการอบรม จำนวน 30 ชุด', '#E65100', 1);
INSERT INTO `tbl__rooms` VALUES (4, 'ห้องประชุม กองสารสนเทศจัดการทรัพยากร(กสทจ.สปช.ทร.)', 'ห้องประชุม กสทจ.สปช.ทร. \r\nเป็นห้องประชุมภายในกอง สามารถประชุมออนไลน์ได้\r\nมีจอภาพขนาด 65 นิ้วในการแสดงภาพ', '#33691E', 1);

-- ----------------------------
-- Table structure for tbl__rooms_meta
-- ----------------------------
DROP TABLE IF EXISTS `tbl__rooms_meta`;
CREATE TABLE `tbl__rooms_meta`  (
  `room_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  INDEX `room_id`(`room_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__rooms_meta
-- ----------------------------
INSERT INTO `tbl__rooms_meta` VALUES (3, 'building', 'ชั้น 4 อาคาร กองบัญขาการกองทัพเรือ พื้นที่วังนันทอุทยาน');
INSERT INTO `tbl__rooms_meta` VALUES (3, 'number', 'ห้องประชุมส่วนเทคโนโลยีสารสนเทศ');
INSERT INTO `tbl__rooms_meta` VALUES (3, 'seats', '45 ที่นั่ง');
INSERT INTO `tbl__rooms_meta` VALUES (2, 'building', 'ชั้น 4 อาคารกองบัญชาการกองทัพเรือ พื้นที่วังนันทอุทยาน');
INSERT INTO `tbl__rooms_meta` VALUES (2, 'number', 'สปช.ทร.(2)');
INSERT INTO `tbl__rooms_meta` VALUES (2, 'seats', '30 ที่นั่ง');
INSERT INTO `tbl__rooms_meta` VALUES (1, 'building', 'ชั้น 4 อาคารกองบัญชาการกองทัพเรือ พื้นที่วังนันทอุทยาน');
INSERT INTO `tbl__rooms_meta` VALUES (1, 'number', 'สปช.ทร.(1)');
INSERT INTO `tbl__rooms_meta` VALUES (1, 'seats', '60 ที่นั่ง');
INSERT INTO `tbl__rooms_meta` VALUES (4, 'building', 'ชั้น 4 อาคาร กองบัญชาการกองทัพเรือ พื้นที่วังนันทอุทยาน');
INSERT INTO `tbl__rooms_meta` VALUES (4, 'number', 'ห้องประชุม กสทจ.ฯ');
INSERT INTO `tbl__rooms_meta` VALUES (4, 'seats', '10 ที่นั่ง');

-- ----------------------------
-- Table structure for tbl__user
-- ----------------------------
DROP TABLE IF EXISTS `tbl__user`;
CREATE TABLE `tbl__user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `salt` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `token` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `permission` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sex` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `id_card` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `provinceID` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `zipcode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `country` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'TH',
  `create_date` datetime NULL DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  `social` tinyint(1) NULL DEFAULT 0,
  `line_uid` varchar(33) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `activatecode` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `line_uid`(`line_uid` ASC) USING BTREE,
  INDEX `username`(`username` ASC) USING BTREE,
  INDEX `token`(`token` ASC) USING BTREE,
  INDEX `phone`(`phone` ASC) USING BTREE,
  INDEX `id_card`(`id_card` ASC) USING BTREE,
  INDEX `activatecode`(`activatecode` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__user
-- ----------------------------
INSERT INTO `tbl__user` VALUES (1, 'admin@localhost', '66dd584b29702', '1e0d1befe07b9b9decc185d52f4e24bf414a173c', '3150976c1a68d45459f175a45356b5c335cf0cdf', 1, '', 'แอดมิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TH', '2024-09-08 07:54:51', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (2, 'approver', '66dd584b29702', '86397153f33f87c8309021bbbee723ebbca428f5', NULL, 0, '', 'ผู้อนุมัติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TH', '2024-09-08 07:54:51', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (3, 'driver', '66dd584b29702', '64948569d186528f20fb9f0e6c515c4b3151b80e', NULL, 2, '', 'คนขับรถ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TH', '2024-09-08 07:54:51', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (4, 'head1', '5b1d085ed03ca', '0e7580535a909c899da1089a889d1ca6c2968698', 'f8ada9c8e3b427d2115618326494e58997e00fcd', 2, ',can_approve_eleave,', 'head1', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 00:54:12', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (5, 'head2', 'd1b57d99cabb8', 'f1a0f268aae4ea2f641560cf1be0f0a6e2b1ca06', '154c0915565db24e2a94a4cd9ee8425f11bae604', 2, ',can_approve_eleave,', 'head2', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 01:06:19', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (6, 'head3', 'e633b8e0e25f5', 'e2b95fe5163f800db1c6a66708b1e056286a76d5', 'a7ee5d1b4bf9a734547db41f25c53a35e605d2de', 2, '', 'หัวหน้าแผนก บริหาร', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 01:16:07', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (8, 'test3', 'bc72bc2dc9620', '6c8a8ac93db4c4610b2e47eb933c2fb2832d2c48', '070607f3f328a1f12b1370f31e80389fd9e64b94', 0, '', 'พนักงาน บริหาร', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 01:22:49', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (9, 'test2', '674aae5fa2097', 'ccd3566b0c8145efce84b9a0114cdc752eecbbad', '088668afde3306e81d5cfa65ed96e40fcea354eb', 0, '', 'พนักงาน จัดซื้อจัดจ้าง', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 21:06:47', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (10, 'md', '74456ba46538c', 'd5260892c0276b6ffac244bc3c9af13a75077070', '5daee4c9d2a4232c05fbfe68584356b66da0e477', 3, '', 'ผู้จัดการ อนุมัติหัวหน้าแผนก', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-13 15:47:43', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (11, 'demo@localhost', '66dd584b29702', '1e0d1befe07b9b9decc185d52f4e24bf414a173c', 'fcddf281a8b3e20f65a746d6ac38e4040be630a7', 3, '', 'Demo', 'u', NULL, '', NULL, '', '', '', 'TH', '2024-09-08 07:54:51', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (14, 'chetchawarn.w@navy.mi.th', 'c2681f5b6b127', '299c58818de41d5500703005e49e3f9990f4d44d', '6daa6345034a2a62f626a4efb9764f268e626fcc', 1, ',can_config,can_view_usage_history,can_manage_room,can_manage_car,can_handle_all_edocument,can_upload_edocument,can_manage_eleave,can_approve_eleave,can_manage_inventory,can_manage_personnel,can_manage_repair,can_repair,', 'น.ท.ธีรเชษฐ์ วะดีศิริศักดิ์', 'm', NULL, '358 ซ.ตากสิน 4 ถ.ตากสิน บางยี่เรือ เขตธนบุรี', '58594', '10', 'กรุงเทพมหานคร', '10600', 'TH', '2024-09-14 23:59:22', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (15, 'boriphat.k@navy.mi.th', 'e0c91761bb52e', '6631331edf0bfa2c7ed8c69cb5da480b500fb4a2', NULL, 2, ',can_view_usage_history,can_manage_room,can_manage_car,', 'น.ต.บริพัด เข็มนาค', 'm', '3102002723579', '', NULL, '', '', '', 'TH', '2024-09-15 00:15:57', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (16, 'monchai.s@navy.mi.th', '9a40e5f6a56e8', '2a958ec77f5788b963573d277815f4e888c722fc', 'a571d131024421d025bed6eb412561d21a82e219', 0, ',can_view_usage_history,can_handle_all_edocument,can_upload_edocument,', 'ร.อ.มนต์ชัย ซุ่นคง', 'u', '3801600102554', '', NULL, '', '', '', 'TH', '2024-09-15 00:26:42', NULL, NULL, 1, 0, NULL, '');
INSERT INTO `tbl__user` VALUES (17, 'mathasit.r@navy.mi.th', 'a442efafa9579', '3a24332fac337c1253989af4019a1463d571682b', 'fe1433e61613d561d023ab5fd27afa54085a9b0f', 2, ',can_handle_all_edocument,can_upload_edocument,', 'นาย เมธาสิทธิ์ รอดกุล', 'm', '1101200248195', '', '0632708985', '10', 'กรุงเทพมหานคร', '', 'TH', '2024-09-16 14:09:55', NULL, NULL, 1, 0, NULL, '');

-- ----------------------------
-- Table structure for tbl__user_meta
-- ----------------------------
DROP TABLE IF EXISTS `tbl__user_meta`;
CREATE TABLE `tbl__user_meta`  (
  `value` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `member_id` int NOT NULL,
  INDEX `member_id`(`member_id` ASC, `name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__user_meta
-- ----------------------------
INSERT INTO `tbl__user_meta` VALUES ('2', 'department', 7);
INSERT INTO `tbl__user_meta` VALUES ('3', 'department', 3);
INSERT INTO `tbl__user_meta` VALUES ('2', 'department', 5);
INSERT INTO `tbl__user_meta` VALUES ('3', 'department', 4);
INSERT INTO `tbl__user_meta` VALUES ('1', 'department', 6);
INSERT INTO `tbl__user_meta` VALUES ('1', 'department', 8);
INSERT INTO `tbl__user_meta` VALUES ('2', 'department', 9);
INSERT INTO `tbl__user_meta` VALUES ('1', 'department', 10);
INSERT INTO `tbl__user_meta` VALUES ('3', 'department', 1);
INSERT INTO `tbl__user_meta` VALUES ('1', 'department', 2);
INSERT INTO `tbl__user_meta` VALUES ('1', 'department', 3);
INSERT INTO `tbl__user_meta` VALUES ('12', 'department', 11);
INSERT INTO `tbl__user_meta` VALUES ('02', 'department', 15);
INSERT INTO `tbl__user_meta` VALUES ('13', 'position', 15);
INSERT INTO `tbl__user_meta` VALUES ('03', 'department', 14);
INSERT INTO `tbl__user_meta` VALUES ('12', 'position', 14);
INSERT INTO `tbl__user_meta` VALUES ('03', 'department', 16);
INSERT INTO `tbl__user_meta` VALUES ('15', 'position', 16);
INSERT INTO `tbl__user_meta` VALUES ('02', 'department', 17);
INSERT INTO `tbl__user_meta` VALUES ('23', 'position', 17);

-- ----------------------------
-- Table structure for tbl__vehicles
-- ----------------------------
DROP TABLE IF EXISTS `tbl__vehicles`;
CREATE TABLE `tbl__vehicles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `color` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `published` int NOT NULL DEFAULT 1,
  `seats` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for tbl__vehicles_meta
-- ----------------------------
DROP TABLE IF EXISTS `tbl__vehicles_meta`;
CREATE TABLE `tbl__vehicles_meta`  (
  `vehicle_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  INDEX `vehicle_id`(`vehicle_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl__vehicles_meta
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
