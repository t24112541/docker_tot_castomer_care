/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : customer_categories

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 27/07/2021 14:20:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cc_contract
-- ----------------------------
DROP TABLE IF EXISTS `cc_contract`;
CREATE TABLE `cc_contract`  (
  `con_id` int(5) NOT NULL AUTO_INCREMENT,
  `con_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `c_id` int(7) NOT NULL,
  `con_date` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `con_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`con_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_contract
-- ----------------------------
INSERT INTO `cc_contract` VALUES (1, 'ติดตั้ง cctv', 1, '2021-07-01', 'lllllllll');
INSERT INTO `cc_contract` VALUES (2, 'super cus', 1, '2021-06-30', 'xfgdxgn');
INSERT INTO `cc_contract` VALUES (3, 'เช่า cctv', 2, '2021-07-01', 'zkldfhgilzdfhu');
INSERT INTO `cc_contract` VALUES (4, 'nnnn', 2, '2021-07-01', 'zxcvbnm,.');
INSERT INTO `cc_contract` VALUES (5, 'gggggggggggggggggg', 3, '2021-07-02', 'xfgjxgn');

-- ----------------------------
-- Table structure for cc_customer
-- ----------------------------
DROP TABLE IF EXISTS `cc_customer`;
CREATE TABLE `cc_customer`  (
  `c_id` int(7) NOT NULL AUTO_INCREMENT COMMENT 'รหัสลูกค้า',
  `c_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อ',
  `c_lname` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุล',
  `c_address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่อยู่',
  `t_id` int(7) NOT NULL COMMENT 'รหัสประเภทลูกค้า',
  `c_tel` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ติดต่อ',
  `c_map` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'link google map',
  `pv_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'รหัสจังหวัด',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_customer
-- ----------------------------
INSERT INTO `cc_customer` VALUES (1, 'สมชาย', 'วงอะไร', '111111', 2, '0852147963', NULL, '36000');
INSERT INTO `cc_customer` VALUES (2, 'เทพ', 'ไม่รวมกลุ่ม', 'vahalla', 3, '0884659452', NULL, '36000');
INSERT INTO `cc_customer` VALUES (3, 'องค์การบริหารส่วนตำบลหนองนาแซง', '-', 'dxgngdhmnjkuggggggg', 3, '0852147963', NULL, '36000');

-- ----------------------------
-- Table structure for cc_employee
-- ----------------------------
DROP TABLE IF EXISTS `cc_employee`;
CREATE TABLE `cc_employee`  (
  `e_id` int(7) NOT NULL AUTO_INCREMENT,
  `e_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `e_lname` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ps_id` int(7) NOT NULL COMMENT 'รหัสตำแหน่ง',
  `e_address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `e_tel` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `e_username` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `e_password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pv_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`e_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1234780 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_employee
-- ----------------------------
INSERT INTO `cc_employee` VALUES (1234567, 'admin', 'admin', 1, 'chaiyaphum cpm', '0852114119', 'admin', '21232f29a57a5a73894a0ea801fc3', '36000');
INSERT INTO `cc_employee` VALUES (1234778, '1', '1', 1, '11', '1', '1', 'c4ca42380b92382dcc509af75849b', '36000');
INSERT INTO `cc_employee` VALUES (1234779, '2', '2', 4, '2', '2', '2', 'c81e728dd4c2f63f067f89c14862c', '30000');

-- ----------------------------
-- Table structure for cc_equip_status
-- ----------------------------
DROP TABLE IF EXISTS `cc_equip_status`;
CREATE TABLE `cc_equip_status`  (
  `eqs_id` int(7) NOT NULL AUTO_INCREMENT,
  `s_id` int(7) NOT NULL,
  `eq_id` int(7) NOT NULL,
  `e_id` int(7) NOT NULL,
  `eqs_date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`eqs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_equip_status
-- ----------------------------
INSERT INTO `cc_equip_status` VALUES (20, 1, 1, 1234567, '2021-06-10 14:55:46');
INSERT INTO `cc_equip_status` VALUES (21, 1, 2, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (22, 1, 3, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (23, 1, 4, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (24, 1, 5, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (25, 1, 6, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (26, 1, 7, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (27, 1, 8, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (28, 1, 9, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (29, 1, 10, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (30, 1, 11, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (31, 1, 12, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (32, 1, 13, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (33, 1, 14, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (34, 1, 1, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (35, 1, 2, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (36, 1, 3, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (37, 1, 4, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (38, 1, 5, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (39, 1, 6, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (40, 1, 7, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (41, 1, 8, 1234567, NULL);
INSERT INTO `cc_equip_status` VALUES (42, 1, 9, 1234778, NULL);
INSERT INTO `cc_equip_status` VALUES (43, 1, 10, 1234567, NULL);

-- ----------------------------
-- Table structure for cc_equipment
-- ----------------------------
DROP TABLE IF EXISTS `cc_equipment`;
CREATE TABLE `cc_equipment`  (
  `eq_id` int(7) NOT NULL AUTO_INCREMENT COMMENT 'รหัสการติดตั้ง',
  `p_id` int(7) NOT NULL COMMENT 'รหัสสินค้า',
  `c_id` int(7) NOT NULL COMMENT 'รหัสลูกค้า',
  `e_id` int(7) NOT NULL COMMENT 'รหัสพนักงาน',
  `eq_date_install` date NULL DEFAULT NULL COMMENT 'วันที่ติดตั้ง',
  `eq_amount` int(11) NULL DEFAULT NULL COMMENT 'จำนวนติดตั้ง',
  `eq_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'รายละเอียดการติดตั้ง',
  `con_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'รหัสสัญญา',
  `eq_code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'เลขวงจร',
  `eq_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'ราคาขาย',
  `eq_discount` float NULL DEFAULT NULL COMMENT 'ส่วนลด',
  `eq_base` float NULL DEFAULT NULL COMMENT 'ต้นทุน',
  `eq_date_y` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'สำหรับทำกราฟปี',
  `eq_date_m` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'สำหรับทำกราฟเดือน',
  `eq_date_d` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'สำหรับทพกราฟวัน',
  PRIMARY KEY (`eq_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_equipment
-- ----------------------------
INSERT INTO `cc_equipment` VALUES (7, 1, 2, 1234567, '2021-04-01', NULL, '-', '3', '4485j0010', '1000', 0, 10000, '2021', '04', '01');
INSERT INTO `cc_equipment` VALUES (2, 2, 1, 1234567, '2021-03-09', NULL, NULL, '1', '4485j0002', '1000', 0, 9000, '2021', '03', '09');
INSERT INTO `cc_equipment` VALUES (3, 2, 1, 1234567, '2021-03-11', NULL, NULL, '1', '4485j0001', '1000', 0, 3000, '2021', '03', '11');
INSERT INTO `cc_equipment` VALUES (4, 1, 1, 1234567, '2020-10-20', NULL, '-', '1', '4485j0003', '2000', 5, 10000, '2020', '10', '20');
INSERT INTO `cc_equipment` VALUES (6, 1, 1, 1234567, '2021-03-17', NULL, '-', '2', '4485j0001', '12000', 0, 123587, '', '', '');
INSERT INTO `cc_equipment` VALUES (8, 2, 2, 1234567, '2021-04-29', NULL, '-', '4', '4485j0002', '1000', 0, 10000, '2021', '04', '29');
INSERT INTO `cc_equipment` VALUES (9, 2, 1, 1234778, '2020-11-19', NULL, '-', '1', 'fvbnm,', '1000', 0, 2000, '2020', '11', '19');

-- ----------------------------
-- Table structure for cc_position
-- ----------------------------
DROP TABLE IF EXISTS `cc_position`;
CREATE TABLE `cc_position`  (
  `ps_id` int(7) NOT NULL AUTO_INCREMENT,
  `ps_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ps_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`ps_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_position
-- ----------------------------
INSERT INTO `cc_position` VALUES (1, 'วิศวกร1', 'วิศวกรระดับ1');
INSERT INTO `cc_position` VALUES (2, 'วิศวกร2', 'วิศวกรระดับ2');
INSERT INTO `cc_position` VALUES (4, 'เจ้าหน้าที่ 1', 'เจ้าหน้าที่ปฏิบัติงาน 1');
INSERT INTO `cc_position` VALUES (6, 'เจ้าหน้าที่ 2', '222');

-- ----------------------------
-- Table structure for cc_product
-- ----------------------------
DROP TABLE IF EXISTS `cc_product`;
CREATE TABLE `cc_product`  (
  `p_id` int(7) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า',
  `p_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อสินค้า',
  `p_detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'รายละเอียด',
  `p_serial_number` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'Serial number',
  `p_buy` int(10) NULL DEFAULT 0 COMMENT 'ราคาซื้อ',
  `p_sell` int(10) NULL DEFAULT 0 COMMENT 'ราคาขาย',
  `pv_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'รหัสจังหวัด',
  `p_amount` int(11) NULL DEFAULT NULL COMMENT 'จำนวน',
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_product
-- ----------------------------
INSERT INTO `cc_product` VALUES (1, 'OLA', NULL, NULL, 0, 0, '36000', NULL);
INSERT INTO `cc_product` VALUES (2, 'CCTV', NULL, NULL, 0, 0, '36000', NULL);
INSERT INTO `cc_product` VALUES (4, 'sss', NULL, NULL, 0, 0, '36000', NULL);
INSERT INTO `cc_product` VALUES (6, 'super wifi', '-', NULL, 0, 0, '36000', NULL);

-- ----------------------------
-- Table structure for cc_province
-- ----------------------------
DROP TABLE IF EXISTS `cc_province`;
CREATE TABLE `cc_province`  (
  `pv_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pv_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pv_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_province
-- ----------------------------
INSERT INTO `cc_province` VALUES ('36000', 'ชัยภูมิ', '');
INSERT INTO `cc_province` VALUES ('30000', 'นครราสีมา', '');
INSERT INTO `cc_province` VALUES ('1111', 'ขอนแก่น', '');
INSERT INTO `cc_province` VALUES ('2222', 'อุดร', '');
INSERT INTO `cc_province` VALUES ('3333', 'เลย', '');
INSERT INTO `cc_province` VALUES ('444', 'มุกดาหาร', '');
INSERT INTO `cc_province` VALUES ('55', 'ปทุม', '');
INSERT INTO `cc_province` VALUES ('5555', 'กทม', '');
INSERT INTO `cc_province` VALUES ('6666', 'ชล', '');
INSERT INTO `cc_province` VALUES ('77', 'ระยอง', '');
INSERT INTO `cc_province` VALUES ('888', 'ฟกหเฟกดเ', '');
INSERT INTO `cc_province` VALUES ('11111111', 'สกล', '');
INSERT INTO `cc_province` VALUES ('321321321', 'ภูเก็ต', '');
INSERT INTO `cc_province` VALUES ('2132', 'นครสวรรค์', '');
INSERT INTO `cc_province` VALUES ('5165', 'เชียงใหม่', '');
INSERT INTO `cc_province` VALUES ('8489', 'เชียงราย', '');
INSERT INTO `cc_province` VALUES ('112334', 'ลำปาง', '');

-- ----------------------------
-- Table structure for cc_status
-- ----------------------------
DROP TABLE IF EXISTS `cc_status`;
CREATE TABLE `cc_status`  (
  `s_id` int(7) NOT NULL AUTO_INCREMENT,
  `s_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_status
-- ----------------------------

-- ----------------------------
-- Table structure for cc_type
-- ----------------------------
DROP TABLE IF EXISTS `cc_type`;
CREATE TABLE `cc_type`  (
  `t_id` int(7) NOT NULL AUTO_INCREMENT,
  `t_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `t_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_type
-- ----------------------------
INSERT INTO `cc_type` VALUES (2, 'ทั่วไป', '...');
INSERT INTO `cc_type` VALUES (3, 'VIP', '');

SET FOREIGN_KEY_CHECKS = 1;
