-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 24, 2024 at 08:57 AM
-- Server version: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_car_reservation`
--

CREATE TABLE `{prefix}_car_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL, 

  `department` varchar(10) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `chauffeur` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `travelers` int(11) NOT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `reason` text DEFAULT NULL,
  `approve` tinyint(1) NOT NULL,
  `closed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_car_reservation_data`
--

CREATE TABLE `{prefix}_car_reservation_data` (
  `reservation_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(150) NOT NULL,
  KEY `reservation_id` (`reservation_id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 


-- --------------------------------------------------------


--
-- Table structure for table `{prefix}_category`
--

CREATE TABLE `{prefix}_category` (
  `type` varchar(20) NOT NULL,
  `category_id` varchar(10) DEFAULT '0',
  `language` varchar(2) DEFAULT '',
  `topic` varchar(150) NOT NULL,
  `color` varchar(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT 1,
  KEY `type` (`type`),
  KEY `category_id` (`category_id`)  -- ย้ายมาไว้ในวงเล็บ
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `{prefix}_category`
--

INSERT INTO `{prefix}_category` (`type`, `category_id`, `topic`, `color`, `published`) VALUES
('department', 1, 'บริหาร', NULL, 1),
('department', 2, 'จัดซื้อจัดจ้าง', NULL, 1),
('department', 3, 'บุคคล', NULL, 1);
--
-- Table structure for table `{prefix}_edocument`
--

CREATE TABLE `{prefix}_edocument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `urgency` tinyint(4) NOT NULL,
  `last_update` int(11) NOT NULL,
  `document_no` varchar(20) NOT NULL,
  `detail` text NOT NULL,
  `topic` varchar(255) NOT NULL,
  `ext` varchar(4) NOT NULL,
  `size` double UNSIGNED NOT NULL,
  `file` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `{prefix}_edocument`
--

INSERT INTO `{prefix}_edocument` (`id`, `sender_id`, `department`, `urgency`, `last_update`, `document_no`, `detail`, `topic`, `ext`, `size`, `file`) VALUES
(1, 2, ',,', 2, 1632052932, 'DOC-0009', 'ส่งให้แอดมิน', 'คำศัพท์ชื่อป้ายห้องในโรงเรียนเป็นภาษาอังกฤษแนบ', 'pdf', 457639, '1545666283.pdf'),
(2, 1, ',1,2,3,', 2, 1545664264, 'DOC-0008', 'ทดสอบ', 'CanonPixmaMP280-MP287-PrinterDriver', 'jpg', 18795, '1545662500.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_edocument_download`
--

CREATE TABLE `{prefix}_edocument_download` (
  `document_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  `last_update` int(11) NOT NULL,
  `department_id` varchar(10) DEFAULT NULL, 

  KEY `document_id` (`document_id`),
  KEY `member_id` (`member_id`)   -- ย้ายมาไว้ในวงเล็บ
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_leave`
--

CREATE TABLE `{prefix}_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(150) NOT NULL,
  `detail` text NOT NULL,
  `num_days` tinyint(4) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `{prefix}_leave`
--

INSERT INTO `{prefix}_leave` (`id`, `topic`, `detail`, `num_days`, `published`) VALUES
(1, 'ลาป่วย', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น\r\nการลาป่วยต้องแนบใบรับรองแพทย์เสมอ\r\nสามารถลาย้อนหลังได้', 15, 1),
(2, 'ลากิจส่วนตัว', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 10, 1),
(3, 'ลาคลอดบุตร', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 60, 1),
(4, 'ลาไปช่วยเหลือภรรยาที่คลอดบุตร', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 30, 1),
(5, 'ลาเข้ารับการตรวจเลือกทหารหรือเข้ารับการเตรียมพล', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 10, 1),
(6, 'ลาไปศึกษา ฝึกอบรม ปฏิบัติการวิจัย หรือดูงาน', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 5, 1),
(8, 'ลาพักผ่อน', '**', 30, 1);
-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_leave_items`
--

CREATE TABLE `{prefix}_leave_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  `closed` tinyint(1) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `detail` text NOT NULL,
  `communication` text NOT NULL,
  `start_date` date NOT NULL,
  `start_period` tinyint(1) NOT NULL,
  `end_date` date NOT NULL,
  `end_period` tinyint(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `days` float NOT NULL DEFAULT 0,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_id` (`leave_id`)
); 

-- --------------------------------------------------------

-- Table structure for table `{prefix}_language`

DROP TABLE IF EXISTS `{prefix}_language`; 

CREATE TABLE `{prefix}_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` text NOT NULL,
  `type` varchar(5) NOT NULL,
  `owner` varchar(20) NOT NULL,
  `js` tinyint(1) NOT NULL,
  `th` text DEFAULT NULL,
  `en` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_line`
--

CREATE TABLE `{prefix}_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `department` varchar(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_logs`
--

CREATE TABLE `{prefix}_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src_id` int(11) NOT NULL,
  `module` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `create_date` datetime NOT NULL,
  `reason` text DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `topic` text NOT NULL,
  `datas` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `src_id` (`src_id`),
  KEY `module` (`module`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_number`
--

CREATE TABLE `{prefix}_number` (
  `type` varchar(20) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `auto_increment` int(11) NOT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`type`,`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_repair`
--

CREATE TABLE `{prefix}_repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `job_id` varchar(20) NOT NULL,
  `job_description` varchar(1000) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_repair_status`
--

CREATE TABLE `{prefix}_repair_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `cost` float DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `operator_id` (`operator_id`),
  KEY `repair_id` (`repair_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_reservation`
--

CREATE TABLE `{prefix}_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `topic` varchar(150) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `attendees` int(11) NOT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `approve` tinyint(1) NOT NULL,
  `closed` tinyint(1) NOT NULL,
  `department` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_reservation_data`
--

CREATE TABLE `{prefix}_reservation_data` (
  `reservation_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(150) NOT NULL,
  KEY `reservation_id` (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_rooms`
--

CREATE TABLE `{prefix}_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `detail` text NOT NULL,
  `color` varchar(20) NOT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `{prefix}_rooms`
--

-- (data for table `{prefix}_rooms`)

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_rooms_meta`
--

CREATE TABLE `{prefix}_rooms_meta` (
  `room_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(150) NOT NULL,
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `{prefix}_rooms_meta`
--

-- (data for table `{prefix}_rooms_meta`)

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_user`
--

CREATE TABLE `{prefix}_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `salt` varchar(32) DEFAULT '',
  `password` varchar(50) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `permission` text DEFAULT '',
  `name` varchar(150) NOT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `id_card` varchar(13) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `provinceID` varchar(3) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `country` varchar(2) DEFAULT 'TH',
  `create_date` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `social` tinyint(1) DEFAULT 0,
  `line_uid` varchar(33) DEFAULT NULL,
  `activatecode` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `line_uid` (`line_uid`),
  KEY `username` (`username`),
  KEY `token` (`token`),
  KEY `phone` (`phone`),
  KEY `id_card` (`id_card`),
  KEY `activatecode` (`activatecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `{prefix}_user` (`id`, `username`, `salt`, `password`, `token`, `status`, `permission`, `name`, `sex`, `id_card`, `address`, `phone`, `provinceID`, `province`, `zipcode`, `country`, `create_date`, `active`, `social`, `line_uid`, `activatecode`) VALUES
(3, 'test1', '2261f70cac53b', 'db213b53e1cfb55c4fe7394c8b6b7ee308c203bf', '5663cb3814def92e378ea76d882f3f94d4c83359', 0, '', 'test1', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 00:50:03', 1, 0, NULL, ''),
(4, 'head1', '5b1d085ed03ca', '0e7580535a909c899da1089a889d1ca6c2968698', 'f8ada9c8e3b427d2115618326494e58997e00fcd', 2, ',can_approve_eleave,', 'head1', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 00:54:12', 1, 0, NULL, ''),
(5, 'head2', 'd1b57d99cabb8', 'f1a0f268aae4ea2f641560cf1be0f0a6e2b1ca06', '154c0915565db24e2a94a4cd9ee8425f11bae604', 2, ',can_approve_eleave,', 'head2', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 01:06:19', 1, 0, NULL, ''),
(6, 'head3', 'e633b8e0e25f5', 'e2b95fe5163f800db1c6a66708b1e056286a76d5', 'a7ee5d1b4bf9a734547db41f25c53a35e605d2de', 2, '', 'หัวหน้าแผนก บริหาร', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 01:16:07', 1, 0, NULL, ''),
(8, 'test3', 'bc72bc2dc9620', '6c8a8ac93db4c4610b2e47eb933c2fb2832d2c48', '070607f3f328a1f12b1370f31e80389fd9e64b94', 0, '', 'พนักงาน บริหาร', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 01:22:49', 1, 0, NULL, ''),
(9, 'test2', '674aae5fa2097', 'ccd3566b0c8145efce84b9a0114cdc752eecbbad', '088668afde3306e81d5cfa65ed96e40fcea354eb', 0, '', 'พนักงาน จัดซื้อจัดจ้าง', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-15 21:06:47', 1, 0, NULL, ''),
(10, 'md', '74456ba46538c', 'd5260892c0276b6ffac244bc3c9af13a75077070', '5daee4c9d2a4232c05fbfe68584356b66da0e477', 3, '', 'ผู้จัดการ อนุมัติหัวหน้าแผนก', 'u', NULL, '', NULL, '', '', '', 'TH', '2023-12-13 15:47:43', 1, 0, NULL, '');-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_user_meta`
--

CREATE TABLE `{prefix}_user_meta` (
  `value` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `member_id` int(11) NOT NULL,
  KEY `member_id` (`member_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `{prefix}_user_meta`
--

INSERT INTO `{prefix}_user_meta` (`value`, `name`, `member_id`) VALUES
('2', 'department', 7),
('3', 'department', 3),
('2', 'department', 5),
('3', 'department', 4),
('1', 'department', 6),
('1', 'department', 8),
('2', 'department', 9),
('1', 'department', 10);
-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_vehicles`
--

CREATE TABLE `{prefix}_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  `seats` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `{prefix}_vehicles`
--

-- (data for table `{prefix}_vehicles`)

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_vehicles_meta`
--

CREATE TABLE `{prefix}_vehicles_meta` (
  `vehicle_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(150) NOT NULL,
  KEY `vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;