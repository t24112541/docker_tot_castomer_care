-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 08:39 AM
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

CREATE TABLE `cc_customer` (
  `c_id` int(7) NOT NULL,
  `c_name` text COLLATE utf8_unicode_ci NOT NULL,
  `c_lname` text COLLATE utf8_unicode_ci NOT NULL,
  `c_address` text COLLATE utf8_unicode_ci NOT NULL,
  `t_id` int(7) NOT NULL COMMENT 'รหัสประเภทลูกค้า',
  `c_tel` text COLLATE utf8_unicode_ci NOT NULL,
  `c_map` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'link google map',
  `pv_id` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_employee`
--

CREATE TABLE `cc_employee` (
  `e_id` int(7) NOT NULL,
  `e_name` text COLLATE utf8_unicode_ci NOT NULL,
  `e_lname` text COLLATE utf8_unicode_ci NOT NULL,
  `ps_id` int(7) NOT NULL COMMENT 'รหัสตำแหน่ง',
  `e_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_tel` text COLLATE utf8_unicode_ci NOT NULL,
  `e_username` text COLLATE utf8_unicode_ci NOT NULL,
  `e_password` text COLLATE utf8_unicode_ci NOT NULL,
  `pv_id` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cc_employee`
--

INSERT INTO `cc_employee` (`e_id`, `e_name`, `e_lname`, `ps_id`, `e_address`, `e_tel`, `e_username`, `e_password`, `pv_id`) VALUES
(1234567, 'admin', 'admin', 1, 'chaiyaphum cpm', '0852114119', 'admin', '21232f29a57a5a73894a0ea801fc3', '36000');

-- --------------------------------------------------------

--
-- Table structure for table `cc_equipment`
--

CREATE TABLE `cc_equipment` (
  `eq_id` int(7) NOT NULL,
  `p_id` int(7) NOT NULL,
  `c_id` int(7) NOT NULL,
  `e_id` int(7) NOT NULL,
  `eq_date_install` date DEFAULT current_timestamp(),
  `eq_amount` int(11) DEFAULT NULL,
  `eq_des` text COLLATE utf8_unicode_ci DEFAULT '-',
  `pv_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `eq_code` text COLLATE utf8_unicode_ci NOT NULL,
  `eq_price` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eq_discount` float DEFAULT 0,
  `eq_base` float DEFAULT NULL,
  `eq_date_y` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `eq_date_m` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `eq_date_d` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_equip_status`
--

CREATE TABLE `cc_equip_status` (
  `eqs_id` int(7) NOT NULL,
  `s_id` int(7) NOT NULL,
  `eq_id` int(7) NOT NULL,
  `e_id` int(7) NOT NULL,
  `eqs_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_position`
--

CREATE TABLE `cc_position` (
  `ps_id` int(7) NOT NULL,
  `ps_name` text COLLATE utf8_unicode_ci NOT NULL,
  `ps_des` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `cc_product` (
  `p_id` int(7) NOT NULL,
  `p_name` text COLLATE utf8_unicode_ci NOT NULL,
  `p_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_serial_number` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_buy` int(10) DEFAULT 0 COMMENT 'ราคาซื้อ',
  `p_sell` int(10) DEFAULT 0 COMMENT 'ราคาขาย',
  `pv_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_province`
--

CREATE TABLE `cc_province` (
  `pv_id` text COLLATE utf8_unicode_ci NOT NULL,
  `pv_name` text COLLATE utf8_unicode_ci NOT NULL,
  `pv_des` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `cc_status` (
  `s_id` int(7) NOT NULL,
  `s_name` text COLLATE utf8_unicode_ci NOT NULL,
  `s_des` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_type`
--

CREATE TABLE `cc_type` (
  `t_id` int(7) NOT NULL,
  `t_name` text COLLATE utf8_unicode_ci NOT NULL,
  `t_des` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cc_type`
--

INSERT INTO `cc_type` (`t_id`, `t_name`, `t_des`) VALUES
(2, 'ทั่วไป', '...'),
(3, 'VIP', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cc_customer`
--
ALTER TABLE `cc_customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `cc_employee`
--
ALTER TABLE `cc_employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `cc_equipment`
--
ALTER TABLE `cc_equipment`
  ADD PRIMARY KEY (`eq_id`);

--
-- Indexes for table `cc_equip_status`
--
ALTER TABLE `cc_equip_status`
  ADD PRIMARY KEY (`eqs_id`);

--
-- Indexes for table `cc_position`
--
ALTER TABLE `cc_position`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `cc_product`
--
ALTER TABLE `cc_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `cc_status`
--
ALTER TABLE `cc_status`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `cc_type`
--
ALTER TABLE `cc_type`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cc_customer`
--
ALTER TABLE `cc_customer`
  MODIFY `c_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_employee`
--
ALTER TABLE `cc_employee`
  MODIFY `e_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234778;

--
-- AUTO_INCREMENT for table `cc_equipment`
--
ALTER TABLE `cc_equipment`
  MODIFY `eq_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_equip_status`
--
ALTER TABLE `cc_equip_status`
  MODIFY `eqs_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cc_position`
--
ALTER TABLE `cc_position`
  MODIFY `ps_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cc_product`
--
ALTER TABLE `cc_product`
  MODIFY `p_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_status`
--
ALTER TABLE `cc_status`
  MODIFY `s_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_type`
--
ALTER TABLE `cc_type`
  MODIFY `t_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
