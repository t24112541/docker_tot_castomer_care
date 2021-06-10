-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 06:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_categories`
--
CREATE DATABASE IF NOT EXISTS `customer_categories` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `customer_categories`;

-- --------------------------------------------------------

--
-- Table structure for table `cc_customer`
--

DROP TABLE IF EXISTS `cc_customer`;
CREATE TABLE IF NOT EXISTS `cc_customer` (
  `c_id` int(7) NOT NULL AUTO_INCREMENT,
  `c_name` text COLLATE utf8_unicode_ci NOT NULL,
  `c_lname` text COLLATE utf8_unicode_ci NOT NULL,
  `c_address` text COLLATE utf8_unicode_ci NOT NULL,
  `t_id` int(7) NOT NULL COMMENT 'รหัสประเภทลูกค้า',
  `c_tel` text COLLATE utf8_unicode_ci NOT NULL,
  `c_map` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'link google map',
  `pv_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_customer`
--

TRUNCATE TABLE `cc_customer`;
--
-- Dumping data for table `cc_customer`
--

INSERT INTO `cc_customer` (`c_id`, `c_name`, `c_lname`, `c_address`, `t_id`, `c_tel`, `c_map`, `pv_id`) VALUES
(14, 'สมชาย', 'วงอะไร', 'sadfasdvzxvafdvavaafbabfv', 3, '0852147963', NULL, '36000'),
(15, 'เทพ', 'บุดด้า', 'jhvhghgchg', 3, '0852147963', NULL, '30000');

-- --------------------------------------------------------

--
-- Table structure for table `cc_employee`
--

DROP TABLE IF EXISTS `cc_employee`;
CREATE TABLE IF NOT EXISTS `cc_employee` (
  `e_id` int(7) NOT NULL AUTO_INCREMENT,
  `e_name` text COLLATE utf8_unicode_ci NOT NULL,
  `e_lname` text COLLATE utf8_unicode_ci NOT NULL,
  `ps_id` int(7) NOT NULL COMMENT 'รหัสตำแหน่ง',
  `e_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_tel` text COLLATE utf8_unicode_ci NOT NULL,
  `e_username` text COLLATE utf8_unicode_ci NOT NULL,
  `e_password` text COLLATE utf8_unicode_ci NOT NULL,
  `pv_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1234778 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_employee`
--

TRUNCATE TABLE `cc_employee`;
--
-- Dumping data for table `cc_employee`
--

INSERT INTO `cc_employee` (`e_id`, `e_name`, `e_lname`, `ps_id`, `e_address`, `e_tel`, `e_username`, `e_password`, `pv_id`) VALUES
(1234567, 'admin', 'admin', 1, 'address', '0852114119', 'admin', '21232f29a57a5a73894a0ea801fc3', '36000'),
(1234775, 'corach', 'corach', 1, 'cccc', '0147852369', 'corach', '81dc9bdb2d04dc2036dbd813ed055', '30000'),
(1234776, 'c', 'c', 6, 'c', 'c', 'c1', 'a9f7e9795d6cf79a529102973b8b9', '30000'),
(1234777, 'cpm', 'cpm', 4, 'cpm', '0448514444', 'cpm', '4430671a0eb298557a0bbfd6b85fc', '36000');

-- --------------------------------------------------------

--
-- Table structure for table `cc_equipment`
--

DROP TABLE IF EXISTS `cc_equipment`;
CREATE TABLE IF NOT EXISTS `cc_equipment` (
  `eq_id` int(7) NOT NULL AUTO_INCREMENT,
  `p_id` int(7) NOT NULL,
  `c_id` int(7) NOT NULL,
  `e_id` int(7) NOT NULL,
  `eq_date_install` date DEFAULT current_timestamp(),
  `eq_amount` int(11) DEFAULT NULL,
  `eq_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pv_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `eq_code` text COLLATE utf8_unicode_ci NOT NULL,
  `eq_price` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eq_discount` float DEFAULT NULL,
  PRIMARY KEY (`eq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_equipment`
--

TRUNCATE TABLE `cc_equipment`;
--
-- Dumping data for table `cc_equipment`
--

INSERT INTO `cc_equipment` (`eq_id`, `p_id`, `c_id`, `e_id`, `eq_date_install`, `eq_amount`, `eq_des`, `pv_id`, `eq_code`, `eq_price`, `eq_discount`) VALUES
(1, 4, 14, 1234567, '2021-05-31', 0, 'asdfghjk', NULL, '4485j0010', '220', 1.1),
(2, 5, 14, 1234567, '2021-05-31', 0, 'fslhglzdifhuxliv', NULL, '4485j0002', '2050', 2.4);

-- --------------------------------------------------------

--
-- Table structure for table `cc_equip_status`
--

DROP TABLE IF EXISTS `cc_equip_status`;
CREATE TABLE IF NOT EXISTS `cc_equip_status` (
  `eqs_id` int(7) NOT NULL AUTO_INCREMENT,
  `s_id` int(7) NOT NULL,
  `eq_id` int(7) NOT NULL,
  `e_id` int(7) NOT NULL,
  `eqs_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`eqs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_equip_status`
--

TRUNCATE TABLE `cc_equip_status`;
--
-- Dumping data for table `cc_equip_status`
--

INSERT INTO `cc_equip_status` (`eqs_id`, `s_id`, `eq_id`, `e_id`, `eqs_date`) VALUES
(1, 1, 1, 1234567, '2021-05-31 16:02:20'),
(2, 1, 2, 1234567, '2021-05-31 16:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `cc_position`
--

DROP TABLE IF EXISTS `cc_position`;
CREATE TABLE IF NOT EXISTS `cc_position` (
  `ps_id` int(7) NOT NULL AUTO_INCREMENT,
  `ps_name` text COLLATE utf8_unicode_ci NOT NULL,
  `ps_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_position`
--

TRUNCATE TABLE `cc_position`;
--
-- Dumping data for table `cc_position`
--

INSERT INTO `cc_position` (`ps_id`, `ps_name`, `ps_des`) VALUES
(1, 'วิศวกร1', 'วิศวกรระดับ1'),
(2, 'วิศวกร2', 'วิศวกรระดับ2'),
(4, 'เจ้าหน้าที่ 1', 'เจ้าหน้าที่ปฏิบัติงาน 1'),
(6, 'เจ้าหน้าที่ 2', '222');

-- --------------------------------------------------------

--
-- Table structure for table `cc_product`
--

DROP TABLE IF EXISTS `cc_product`;
CREATE TABLE IF NOT EXISTS `cc_product` (
  `p_id` int(7) NOT NULL AUTO_INCREMENT,
  `p_name` text COLLATE utf8_unicode_ci NOT NULL,
  `p_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_serial_number` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_buy` int(10) DEFAULT 0 COMMENT 'ราคาซื้อ',
  `p_sell` int(10) DEFAULT 0 COMMENT 'ราคาขาย',
  `pv_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_product`
--

TRUNCATE TABLE `cc_product`;
--
-- Dumping data for table `cc_product`
--

INSERT INTO `cc_product` (`p_id`, `p_name`, `p_detail`, `p_serial_number`, `p_buy`, `p_sell`, `pv_id`, `p_amount`) VALUES
(1, 'nrm', 'zvzxvzxcvdz', NULL, 1000, 0, '30000', 10),
(2, 'nrm_fttx', 'zxvzvadfbaertwezdf', NULL, 500, 0, '30000', 1),
(3, 'nrm', '1d', '11111', 100, 0, '30000', 10),
(4, 'cmp_fttx 100/100', 'speed 100/100', NULL, 200, 0, '36000', 1),
(5, 'cpm_cctv', NULL, NULL, 2000, 0, '36000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cc_province`
--

DROP TABLE IF EXISTS `cc_province`;
CREATE TABLE IF NOT EXISTS `cc_province` (
  `pv_id` text COLLATE utf8_unicode_ci NOT NULL,
  `pv_name` text COLLATE utf8_unicode_ci NOT NULL,
  `pv_des` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_province`
--

TRUNCATE TABLE `cc_province`;
--
-- Dumping data for table `cc_province`
--

INSERT INTO `cc_province` (`pv_id`, `pv_name`, `pv_des`) VALUES
('36000', 'ชัยภูมิ', ''),
('30000', 'นครราสีมา', '');

-- --------------------------------------------------------

--
-- Table structure for table `cc_status`
--

DROP TABLE IF EXISTS `cc_status`;
CREATE TABLE IF NOT EXISTS `cc_status` (
  `s_id` int(7) NOT NULL AUTO_INCREMENT,
  `s_name` text COLLATE utf8_unicode_ci NOT NULL,
  `s_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_status`
--

TRUNCATE TABLE `cc_status`;
--
-- Dumping data for table `cc_status`
--

INSERT INTO `cc_status` (`s_id`, `s_name`, `s_des`) VALUES
(1, 'ใช้งาน', 'บลา บลา บลา บลา'),
(2, 'บลา', 'บลาบลาบลาบลา'),
(3, 'บลา', 'บลา'),
(4, 'name_0', 'des_0'),
(5, 'name_1', 'des_1'),
(6, 'name_2', 'des_2'),
(7, 'name_3', 'des_3'),
(8, 'name_4', 'des_4'),
(9, 'name_5', 'des_5'),
(10, 'name_6', 'des_6'),
(11, 'name_7', 'des_7'),
(12, 'name_8', 'des_8'),
(13, 'name_9', 'des_9'),
(14, 'name_10', 'des_10'),
(15, 'name_11', 'des_11'),
(16, 'name_12', 'des_12'),
(17, 'name_13', 'des_13'),
(18, 'name_14', 'des_14'),
(19, 'name_15', 'des_15'),
(20, 'name_16', 'des_16'),
(21, 'name_17', 'des_17'),
(22, 'name_18', 'des_18'),
(23, 'name_19', 'des_19'),
(24, 'name_20', 'des_20'),
(25, 'name_21', 'des_21'),
(26, 'name_22', 'des_22'),
(27, 'name_23', 'des_23'),
(28, 'name_24', 'des_24'),
(29, 'name_25', 'des_25'),
(30, 'name_26', 'des_26'),
(31, 'name_27', 'des_27'),
(32, 'name_28', 'des_28'),
(33, 'name_29', 'des_29'),
(34, 'name_30', 'des_30'),
(35, 'name_31', 'des_31'),
(36, 'name_32', 'des_32'),
(37, 'name_33', 'des_33'),
(38, 'name_34', 'des_34'),
(39, 'name_35', 'des_35'),
(40, 'name_36', 'des_36'),
(41, 'name_37', 'des_37'),
(42, 'name_38', 'des_38'),
(43, 'name_39', 'des_39'),
(44, 'name_40', 'des_40'),
(45, 'name_41', 'des_41'),
(46, 'name_42', 'des_42'),
(47, 'name_43', 'des_43'),
(48, 'name_44', 'des_44'),
(49, 'name_45', 'des_45'),
(50, 'name_46', 'des_46'),
(51, 'name_47', 'des_47'),
(52, 'name_48', 'des_48'),
(53, 'name_49', 'des_49'),
(54, 'name_50', 'des_50'),
(55, 'name_51', 'des_51'),
(56, 'name_52', 'des_52'),
(57, 'name_53', 'des_53'),
(58, 'name_54', 'des_54'),
(59, 'name_55', 'des_55'),
(60, 'name_56', 'des_56'),
(61, 'name_57', 'des_57'),
(62, 'name_58', 'des_58'),
(63, 'name_59', 'des_59'),
(64, 'name_60', 'des_60'),
(65, 'name_61', 'des_61'),
(66, 'name_62', 'des_62'),
(67, 'name_63', 'des_63'),
(68, 'name_64', 'des_64'),
(69, 'name_65', 'des_65'),
(70, 'name_66', 'des_66'),
(71, 'name_67', 'des_67'),
(72, 'name_68', 'des_68'),
(73, 'name_69', 'des_69'),
(74, 'name_70', 'des_70'),
(75, 'name_71', 'des_71'),
(76, 'name_72', 'des_72'),
(77, 'name_73', 'des_73'),
(78, 'name_74', 'des_74'),
(79, 'name_75', 'des_75'),
(80, 'name_76', 'des_76'),
(81, 'name_77', 'des_77'),
(82, 'name_78', 'des_78'),
(83, 'name_79', 'des_79'),
(84, 'name_80', 'des_80'),
(85, 'name_81', 'des_81'),
(86, 'name_82', 'des_82'),
(87, 'name_83', 'des_83'),
(88, 'name_84', 'des_84'),
(89, 'name_85', 'des_85'),
(90, 'name_86', 'des_86'),
(91, 'name_87', 'des_87'),
(92, 'name_88', 'des_88'),
(93, 'name_89', 'des_89'),
(94, 'name_90', 'des_90'),
(95, 'name_91', 'des_91'),
(96, 'name_92', 'des_92'),
(97, 'name_93', 'des_93'),
(98, 'name_94', 'des_94'),
(99, 'name_95', 'des_95'),
(100, 'name_96', 'des_96'),
(101, 'name_97', 'des_97'),
(102, 'name_98', 'des_98'),
(103, 'name_99', 'des_99'),
(104, 'name_100', 'des_100');

-- --------------------------------------------------------

--
-- Table structure for table `cc_type`
--

DROP TABLE IF EXISTS `cc_type`;
CREATE TABLE IF NOT EXISTS `cc_type` (
  `t_id` int(7) NOT NULL AUTO_INCREMENT,
  `t_name` text COLLATE utf8_unicode_ci NOT NULL,
  `t_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `cc_type`
--

TRUNCATE TABLE `cc_type`;
--
-- Dumping data for table `cc_type`
--

INSERT INTO `cc_type` (`t_id`, `t_name`, `t_des`) VALUES
(2, 'ทั่วไป', '...'),
(3, 'VIP', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
