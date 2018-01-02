-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 02, 2018 at 04:08 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` text NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Desktops'),
(2, 'Desktop Accessories'),
(3, 'Laptops'),
(4, 'Laptop Accessories'),
(5, 'Monitors'),
(6, 'Mobile Devices'),
(7, 'Peripherals'),
(8, 'Apple Accessories'),
(9, 'Voice'),
(10, 'Printers');

-- --------------------------------------------------------

--
-- Table structure for table `default_item`
--

DROP TABLE IF EXISTS `default_item`;
CREATE TABLE IF NOT EXISTS `default_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_category` text NOT NULL,
  `item_name` text NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `default_item`
--

INSERT INTO `default_item` (`item_id`, `item_category`, `item_name`) VALUES
(5, 'Desktop Accessories', 'Dell 22\" Speaker Bar'),
(6, 'Desktop Accessories', 'DisplayPort to DisplayPort Cable'),
(7, 'Desktop Accessories', 'DisplayPort to HDMI Cable'),
(8, 'Desktop Accessories', 'DisplayPort to MiniDP Cable'),
(9, 'Desktop Accessories', 'Ergonomic Keyboard'),
(10, 'Desktop Accessories', 'JabraSpeak USB Speakerphone'),
(11, 'Desktop Accessories', 'Fujitsu Scanner'),
(12, 'Desktop Accessories', 'Keyboard/Mouse Combo'),
(13, 'Desktop Accessories', 'Kingston 16GB USB Flashdrive'),
(14, 'Desktop Accessories', 'Kingston 32GB USB Flashdrive'),
(15, 'Desktop Accessories', 'Kingston 64GB USB Flashdrive'),
(16, 'Desktop Accessories', 'Logitech c930e Webcam'),
(17, 'Desktop Accessories', 'Logitech Conference Cam BCC950'),
(18, 'Desktop Accessories', 'Microsoft LifeCam'),
(19, 'Desktop Accessories', 'Muse Soundbar'),
(20, 'Desktop Accessories', 'Power Strips'),
(21, 'Desktop Accessories', 'USB Extension Cable'),
(22, 'Desktop Accessories', 'USB Headset for MOC -Jabra'),
(23, 'Desktop Accessories', 'Wireless Keyboard/Mouse Combo'),
(24, 'Laptops', 'X-Series'),
(25, 'Laptops', 'T-Series'),
(26, 'Laptops', 'X1 Carbon'),
(27, 'Laptops', 'X1 Yoga'),
(28, 'Laptop Accessories', 'Lenovo 65W Slim Tip Power Adapter'),
(29, 'Laptop Accessories', 'Lenovo USB-C Power Adapter'),
(30, 'Laptop Accessories', 'Network Adapter'),
(31, 'Laptop Accessories', 'Lenovo Thinkpad Pro Dock (T/X Series)'),
(32, 'Laptop Accessories', 'Lenovo Thinkpad USB 3.0 Dock (X1 Carbon)'),
(33, 'Laptop Accessories', 'Targus Dock'),
(34, 'Laptop Accessories', 'Lenovo OneLink Dock (Yoga OLED)'),
(35, 'Monitors', '22\"'),
(36, 'Monitors', '24\"'),
(37, 'Monitors', '27\"'),
(38, 'Monitors', '27\"'),
(39, 'Monitors', 'Privacy Filter 22\"'),
(40, 'Monitors', 'Privacy Filter 24\"'),
(41, 'Monitors', 'Privacy Filter 27\"'),
(42, 'Mobile Devices', 'iPad Pro 10.5-Inch Display'),
(43, 'Mobile Devices', 'iPad Pro 12.9-Inch Display'),
(44, 'Mobile Devices', 'iPhone 8'),
(45, 'Mobile Devices', 'iPhone X'),
(46, 'Mobile Devices', 'Mobile HotSpot'),
(47, 'Mobile Devices', 'BB Classic'),
(48, 'Peripherals', 'International Travel Plug Adapter'),
(49, 'Peripherals', 'Logitech iPad Pro Keyboard 10.5'),
(50, 'Peripherals', 'Logitecg iPad Pro keyboard 12.9'),
(51, 'Peripherals', 'Citrix Mouse'),
(52, 'Peripherals', 'HubMax'),
(53, 'Peripherals', 'BB Class Case'),
(54, 'Peripherals', 'BB Charger'),
(55, 'Apple Accessories', 'Apple Pencil'),
(56, 'Apple Accessories', 'Apple TV'),
(57, 'Apple Accessories', 'iPad Pro Smart Cover 10.5\"'),
(58, 'Apple Accessories', 'iPad Pro Smart Cover 12.9\"'),
(59, 'Apple Accessories', 'iPad Pro Smart Keyboard 10.5\"'),
(60, 'Apple Accessories', 'iPad Pro Smart Keyboard 12.9\"'),
(61, 'Apple Accessories', 'Lightning Digital AV Adapter'),
(62, 'Apple Accessories', 'Lightning to USB'),
(63, 'Apple Accessories', 'Mini Display Port to VGA'),
(64, 'Apple Accessories', 'Pen Loop Apple Pencil'),
(65, 'Apple Accessories', 'Thunder Bolt Cable'),
(66, 'Apple Accessories', 'Thunder Bolt to FireWire Adapter'),
(67, 'Apple Accessories', 'USB Ethernet Adapter'),
(68, 'Apple Accessories', 'USB-C Power Adapter'),
(69, 'Apple Accessories', 'USB-C Power Adapter (29W)'),
(70, 'Apple Accessories', 'USB-C Power Adapter (61W)'),
(71, 'Apple Accessories', 'USB-C to Lightning Cable'),
(72, 'Voice', 'Savi 720'),
(73, 'Voice', 'Savi 730'),
(74, 'Voice', 'Savi 740'),
(75, 'Voice', 'Savi 740 Replacement Headset w/battery'),
(76, 'Voice', 'PL-APV63(Avaya)'),
(77, 'Voice', 'PL-APC43(Cisco)'),
(78, 'Voice', 'Polycom'),
(79, 'Printers', 'B&W Local Printer M402dne'),
(80, 'Printers', 'B&W Network Printer'),
(81, 'Printers', 'Color Local Printer M452dn'),
(82, 'Printers', 'Color Network Printer'),
(4, 'Desktops', 'Workstation'),
(3, 'Desktops', 'Thin Desktop'),
(1, 'Desktops', 'Standard Desktop'),
(2, 'Desktops', 'Tiny Desktop');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` int(2) NOT NULL AUTO_INCREMENT,
  `location_name` text NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`) VALUES
(1, '388 Greenwich Street'),
(2, '111 Wall Street'),
(3, 'Midtown'),
(4, 'Support Desk'),
(5, 'new'),
(6, 'new new');

-- --------------------------------------------------------

--
-- Table structure for table `out_record`
--

DROP TABLE IF EXISTS `out_record`;
CREATE TABLE IF NOT EXISTS `out_record` (
  `out_id` int(11) NOT NULL AUTO_INCREMENT,
  `out_category` text NOT NULL,
  `out_item_name` text NOT NULL,
  `out_location` int(11) NOT NULL,
  `out_date` date NOT NULL,
  `out_amount` int(11) NOT NULL,
  `out_ticket_number` text NOT NULL,
  `out_person` text NOT NULL,
  `out_comment` text NOT NULL,
  PRIMARY KEY (`out_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_category` text NOT NULL,
  `item_name` text NOT NULL,
  `item_location` int(11) NOT NULL,
  `item_amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1077 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`item_id`, `item_category`, `item_name`, `item_location`, `item_amount`) VALUES
(1, 'Desktops', 'Standard Desktop', 1, 3),
(2, 'Desktops', 'Tiny Desktop', 1, 1),
(3, 'Desktops', 'Thin Client', 1, 0),
(4, 'Desktops', 'Workstation', 1, 10),
(5, 'Desktop Accessories', 'Dell 22\" Speaker Bar', 1, 0),
(6, 'Desktop Accessories', 'DisplayPort to DisplayPort Cable', 1, 0),
(7, 'Desktop Accessories', 'DisplayPort to HDMI Cable', 1, 0),
(8, 'Desktop Accessories', 'DisplayPort to MiniDP Cable', 1, 0),
(9, 'Desktop Accessories', 'Ergonomic Keyboard', 1, 0),
(10, 'Desktop Accessories', 'JabraSpeak USB Speakerphone', 1, 0),
(11, 'Desktop Accessories', 'Fujitsu Scanner', 1, 0),
(12, 'Desktop Accessories', 'Keyboard/Mouse Combo', 1, 0),
(13, 'Desktop Accessories', 'Kingston 16GB USB Flashdrive', 1, 0),
(14, 'Desktop Accessories', 'Kingston 32GB USB Flashdrive', 1, 0),
(15, 'Desktop Accessories', 'Kingston 64GB USB Flashdrive', 1, 0),
(16, 'Desktop Accessories', 'Logitech c930e Webcam', 1, 0),
(17, 'Desktop Accessories', 'Logitech Conference Cam BCC950', 1, 0),
(18, 'Desktop Accessories', 'Microsoft LifeCam', 1, 0),
(19, 'Desktop Accessories', 'Muse Soundbar', 1, 0),
(20, 'Desktop Accessories', 'Power Strips', 1, 0),
(21, 'Desktop Accessories', 'USB Extension Cable', 1, 0),
(22, 'Desktop Accessories', 'USB Headset for MOC -Jabra', 1, 0),
(23, 'Desktop Accessories', 'Wireless Keyboard/Mouse Combo', 1, 0),
(24, 'Laptops', 'X-Series', 1, 0),
(25, 'Laptops', 'T-Series', 1, 0),
(26, 'Laptops', 'X1 Carbon', 1, 0),
(27, 'Laptops', 'X1 Yoga', 1, 0),
(28, 'Laptop Accessories', 'Lenovo 65W Slim Tip Power Adapter', 1, 0),
(29, 'Laptop Accessories', 'Lenovo USB-C Power Adapter', 1, 0),
(30, 'Laptop Accessories', 'Network Adapter', 1, 0),
(31, 'Laptop Accessories', 'Lenovo Thinkpad Pro Dock (T/X Series)', 1, 0),
(32, 'Laptop Accessories', 'Lenovo Thinkpad USB 3.0 Dock (X1 Carbon)', 1, 0),
(33, 'Laptop Accessories', 'Targus Dock', 1, 0),
(34, 'Laptop Accessories', 'Lenovo OneLink Dock (Yoga OLED)', 1, 0),
(35, 'Monitors', '22\"', 1, 0),
(36, 'Monitors', '24\"', 1, 0),
(37, 'Monitors', '27\"', 1, 0),
(38, 'Monitors', '27\"', 1, 0),
(39, 'Monitors', 'Privacy Filter 22\"', 1, 0),
(40, 'Monitors', 'Privacy Filter 24\"', 1, 0),
(41, 'Monitors', 'Privacy Filter 27\"', 1, 0),
(42, 'Mobile Devices', 'iPad Pro 10.5-Inch Display', 1, 0),
(43, 'Mobile Devices', 'iPad Pro 12.9-Inch Display', 1, 0),
(44, 'Mobile Devices', 'iPhone 8', 1, 0),
(45, 'Mobile Devices', 'iPhone X', 1, 0),
(46, 'Mobile Devices', 'Mobile HotSpot', 1, 0),
(47, 'Mobile Devices', 'BB Classic', 1, 0),
(48, 'Peripherals', 'International Travel Plug Adapter', 1, 0),
(49, 'Peripherals', 'Logitech iPad Pro Keyboard 10.5', 1, 0),
(50, 'Peripherals', 'Logitecg iPad Pro keyboard 12.9', 1, 0),
(51, 'Peripherals', 'Citrix Mouse', 1, 0),
(52, 'Peripherals', 'HubMax', 1, 0),
(53, 'Peripherals', 'BB Class Case', 1, 0),
(54, 'Peripherals', 'BB Charger', 1, 0),
(55, 'Apple Accessories', 'Apple Pencil', 1, 0),
(56, 'Apple Accessories', 'Apple TV', 1, 0),
(57, 'Apple Accessories', 'iPad Pro Smart Cover 10.5\"', 1, 0),
(58, 'Apple Accessories', 'iPad Pro Smart Cover 12.9\"', 1, 0),
(59, 'Apple Accessories', 'iPad Pro Smart Keyboard 10.5\"', 1, 0),
(60, 'Apple Accessories', 'iPad Pro Smart Keyboard 12.9\"', 1, 0),
(61, 'Apple Accessories', 'Lightning Digital AV Adapter', 1, 0),
(62, 'Apple Accessories', 'Lightning to USB', 1, 0),
(63, 'Apple Accessories', 'Mini Display Port to VGA', 1, 0),
(64, 'Apple Accessories', 'Pen Loop Apple Pencil', 1, 0),
(65, 'Apple Accessories', 'Thunder Bolt Cable', 1, 0),
(66, 'Apple Accessories', 'Thunder Bolt to FireWire Adapter', 1, 0),
(67, 'Apple Accessories', 'USB Ethernet Adapter', 1, 0),
(68, 'Apple Accessories', 'USB-C Power Adapter', 1, 0),
(69, 'Apple Accessories', 'USB-C Power Adapter (29W)', 1, 0),
(70, 'Apple Accessories', 'USB-C Power Adapter (61W)', 1, 0),
(71, 'Apple Accessories', 'USB-C to Lightning Cable', 1, 0),
(72, 'Voice', 'Savi 720', 1, 0),
(73, 'Voice', 'Savi 730', 1, 0),
(74, 'Voice', 'Savi 740', 1, 0),
(75, 'Voice', 'Savi 740 Replacement Headset w/battery', 1, 0),
(76, 'Voice', 'PL-APV63(Avaya)', 1, 0),
(77, 'Voice', 'PL-APC43(Cisco)', 1, 0),
(78, 'Voice', 'Polycom', 1, 0),
(79, 'Printers', 'B&W Local Printer M402dne', 1, 0),
(80, 'Printers', 'B&W Network Printer', 1, 0),
(81, 'Printers', 'Color Local Printer M452dn', 1, 0),
(82, 'Printers', 'Color Network Printer', 1, 0),
(83, 'Desktops', 'Standard Desktop', 2, 3),
(84, 'Desktops', 'Tiny Desktop', 2, 0),
(85, 'Desktops', 'Thin Client', 2, 0),
(86, 'Desktops', 'Workstation', 2, 10),
(87, 'Desktop Accessories', 'Dell 22\" Speaker Bar', 2, 1),
(88, 'Desktop Accessories', 'DisplayPort to DisplayPort Cable', 2, 0),
(89, 'Desktop Accessories', 'DisplayPort to HDMI Cable', 2, 0),
(90, 'Desktop Accessories', 'DisplayPort to MiniDP Cable', 2, 0),
(91, 'Desktop Accessories', 'Ergonomic Keyboard', 2, 0),
(92, 'Desktop Accessories', 'JabraSpeak USB Speakerphone', 2, 0),
(93, 'Desktop Accessories', 'Fujitsu Scanner', 2, 0),
(94, 'Desktop Accessories', 'Keyboard/Mouse Combo', 2, 0),
(95, 'Desktop Accessories', 'Kingston 16GB USB Flashdrive', 2, 0),
(96, 'Desktop Accessories', 'Kingston 32GB USB Flashdrive', 2, 0),
(97, 'Desktop Accessories', 'Kingston 64GB USB Flashdrive', 2, 0),
(98, 'Desktop Accessories', 'Logitech c930e Webcam', 2, 0),
(99, 'Desktop Accessories', 'Logitech Conference Cam BCC950', 2, 0),
(100, 'Desktop Accessories', 'Microsoft LifeCam', 2, 0),
(101, 'Desktop Accessories', 'Muse Soundbar', 2, 0),
(102, 'Desktop Accessories', 'Power Strips', 2, 0),
(103, 'Desktop Accessories', 'USB Extension Cable', 2, 0),
(104, 'Desktop Accessories', 'USB Headset for MOC -Jabra', 2, 0),
(105, 'Desktop Accessories', 'Wireless Keyboard/Mouse Combo', 2, 0),
(106, 'Laptops', 'X-Series', 2, 0),
(107, 'Laptops', 'T-Series', 2, 0),
(108, 'Laptops', 'X1 Carbon', 2, 0),
(109, 'Laptops', 'X1 Yoga', 2, 0),
(110, 'Laptop Accessories', 'Lenovo 65W Slim Tip Power Adapter', 2, 0),
(111, 'Laptop Accessories', 'Lenovo USB-C Power Adapter', 2, 0),
(112, 'Laptop Accessories', 'Network Adapter', 2, 0),
(113, 'Laptop Accessories', 'Lenovo Thinkpad Pro Dock (T/X Series)', 2, 0),
(114, 'Laptop Accessories', 'Lenovo Thinkpad USB 3.0 Dock (X1 Carbon)', 2, 0),
(115, 'Laptop Accessories', 'Targus Dock', 2, 0),
(116, 'Laptop Accessories', 'Lenovo OneLink Dock (Yoga OLED)', 2, 0),
(117, 'Monitors', '22\"', 2, 0),
(118, 'Monitors', '24\"', 2, 0),
(119, 'Monitors', '27\"', 2, 0),
(120, 'Monitors', '27\"', 2, 0),
(121, 'Monitors', 'Privacy Filter 22\"', 2, 0),
(122, 'Monitors', 'Privacy Filter 24\"', 2, 0),
(123, 'Monitors', 'Privacy Filter 27\"', 2, 0),
(124, 'Mobile Devices', 'iPad Pro 10.5-Inch Display', 2, 0),
(125, 'Mobile Devices', 'iPad Pro 12.9-Inch Display', 2, 0),
(126, 'Mobile Devices', 'iPhone 8', 2, 0),
(127, 'Mobile Devices', 'iPhone X', 2, 0),
(128, 'Mobile Devices', 'Mobile HotSpot', 2, 0),
(129, 'Mobile Devices', 'BB Classic', 2, 0),
(130, 'Peripherals', 'International Travel Plug Adapter', 2, 0),
(131, 'Peripherals', 'Logitech iPad Pro Keyboard 10.5', 2, 0),
(132, 'Peripherals', 'Logitecg iPad Pro keyboard 12.9', 2, 0),
(133, 'Peripherals', 'Citrix Mouse', 2, 0),
(134, 'Peripherals', 'HubMax', 2, 0),
(135, 'Peripherals', 'BB Class Case', 2, 0),
(136, 'Peripherals', 'BB Charger', 2, 0),
(137, 'Apple Accessories', 'Apple Pencil', 2, 0),
(138, 'Apple Accessories', 'Apple TV', 2, 0),
(139, 'Apple Accessories', 'iPad Pro Smart Cover 10.5\"', 2, 0),
(140, 'Apple Accessories', 'iPad Pro Smart Cover 12.9\"', 2, 0),
(141, 'Apple Accessories', 'iPad Pro Smart Keyboard 10.5\"', 2, 0),
(142, 'Apple Accessories', 'iPad Pro Smart Keyboard 12.9\"', 2, 0),
(143, 'Apple Accessories', 'Lightning Digital AV Adapter', 2, 0),
(144, 'Apple Accessories', 'Lightning to USB', 2, 0),
(145, 'Apple Accessories', 'Mini Display Port to VGA', 2, 0),
(146, 'Apple Accessories', 'Pen Loop Apple Pencil', 2, 0),
(147, 'Apple Accessories', 'Thunder Bolt Cable', 2, 0),
(148, 'Apple Accessories', 'Thunder Bolt to FireWire Adapter', 2, 0),
(149, 'Apple Accessories', 'USB Ethernet Adapter', 2, 0),
(150, 'Apple Accessories', 'USB-C Power Adapter', 2, 0),
(151, 'Apple Accessories', 'USB-C Power Adapter (29W)', 2, 0),
(152, 'Apple Accessories', 'USB-C Power Adapter (61W)', 2, 0),
(153, 'Apple Accessories', 'USB-C to Lightning Cable', 2, 0),
(154, 'Voice', 'Savi 720', 2, 0),
(155, 'Voice', 'Savi 730', 2, 0),
(156, 'Voice', 'Savi 740', 2, 0),
(157, 'Voice', 'Savi 740 Replacement Headset w/battery', 2, 0),
(158, 'Voice', 'PL-APV63(Avaya)', 2, 0),
(159, 'Voice', 'PL-APC43(Cisco)', 2, 0),
(160, 'Voice', 'Polycom', 2, 0),
(161, 'Printers', 'B&W Local Printer M402dne', 2, 0),
(162, 'Printers', 'B&W Network Printer', 2, 0),
(163, 'Printers', 'Color Local Printer M452dn', 2, 0),
(164, 'Printers', 'Color Network Printer', 2, 0),
(165, 'Desktops', 'Standard Desktop', 3, 9),
(166, 'Desktops', 'Tiny Desktop', 3, 0),
(167, 'Desktops', 'Thin Client', 3, 0),
(168, 'Desktops', 'Workstation', 3, 0),
(169, 'Desktop Accessories', 'Dell 22\" Speaker Bar', 3, 0),
(170, 'Desktop Accessories', 'DisplayPort to DisplayPort Cable', 3, 0),
(171, 'Desktop Accessories', 'DisplayPort to HDMI Cable', 3, 0),
(172, 'Desktop Accessories', 'DisplayPort to MiniDP Cable', 3, 0),
(173, 'Desktop Accessories', 'Ergonomic Keyboard', 3, 0),
(174, 'Desktop Accessories', 'JabraSpeak USB Speakerphone', 3, 0),
(175, 'Desktop Accessories', 'Fujitsu Scanner', 3, 0),
(176, 'Desktop Accessories', 'Keyboard/Mouse Combo', 3, 0),
(177, 'Desktop Accessories', 'Kingston 16GB USB Flashdrive', 3, 0),
(178, 'Desktop Accessories', 'Kingston 32GB USB Flashdrive', 3, 0),
(179, 'Desktop Accessories', 'Kingston 64GB USB Flashdrive', 3, 0),
(180, 'Desktop Accessories', 'Logitech c930e Webcam', 3, 0),
(181, 'Desktop Accessories', 'Logitech Conference Cam BCC950', 3, 0),
(182, 'Desktop Accessories', 'Microsoft LifeCam', 3, 0),
(183, 'Desktop Accessories', 'Muse Soundbar', 3, 0),
(184, 'Desktop Accessories', 'Power Strips', 3, 0),
(185, 'Desktop Accessories', 'USB Extension Cable', 3, 0),
(186, 'Desktop Accessories', 'USB Headset for MOC -Jabra', 3, 0),
(187, 'Desktop Accessories', 'Wireless Keyboard/Mouse Combo', 3, 0),
(188, 'Laptops', 'X-Series', 3, 0),
(189, 'Laptops', 'T-Series', 3, 0),
(190, 'Laptops', 'X1 Carbon', 3, 0),
(191, 'Laptops', 'X1 Yoga', 3, 0),
(192, 'Laptop Accessories', 'Lenovo 65W Slim Tip Power Adapter', 3, 0),
(193, 'Laptop Accessories', 'Lenovo USB-C Power Adapter', 3, 0),
(194, 'Laptop Accessories', 'Network Adapter', 3, 0),
(195, 'Laptop Accessories', 'Lenovo Thinkpad Pro Dock (T/X Series)', 3, 0),
(196, 'Laptop Accessories', 'Lenovo Thinkpad USB 3.0 Dock (X1 Carbon)', 3, 0),
(197, 'Laptop Accessories', 'Targus Dock', 3, 0),
(198, 'Laptop Accessories', 'Lenovo OneLink Dock (Yoga OLED)', 3, 0),
(199, 'Monitors', '22\"', 3, 0),
(200, 'Monitors', '24\"', 3, 0),
(201, 'Monitors', '27\"', 3, 0),
(202, 'Monitors', '27\"', 3, 0),
(203, 'Monitors', 'Privacy Filter 22\"', 3, 0),
(204, 'Monitors', 'Privacy Filter 24\"', 3, 0),
(205, 'Monitors', 'Privacy Filter 27\"', 3, 0),
(206, 'Mobile Devices', 'iPad Pro 10.5-Inch Display', 3, 0),
(207, 'Mobile Devices', 'iPad Pro 12.9-Inch Display', 3, 0),
(208, 'Mobile Devices', 'iPhone 8', 3, 0),
(209, 'Mobile Devices', 'iPhone X', 3, 0),
(210, 'Mobile Devices', 'Mobile HotSpot', 3, 0),
(211, 'Mobile Devices', 'BB Classic', 3, 0),
(212, 'Peripherals', 'International Travel Plug Adapter', 3, 0),
(213, 'Peripherals', 'Logitech iPad Pro Keyboard 10.5', 3, 0),
(214, 'Peripherals', 'Logitecg iPad Pro keyboard 12.9', 3, 0),
(215, 'Peripherals', 'Citrix Mouse', 3, 0),
(216, 'Peripherals', 'HubMax', 3, 0),
(217, 'Peripherals', 'BB Class Case', 3, 0),
(218, 'Peripherals', 'BB Charger', 3, 0),
(219, 'Apple Accessories', 'Apple Pencil', 3, 0),
(220, 'Apple Accessories', 'Apple TV', 3, 0),
(221, 'Apple Accessories', 'iPad Pro Smart Cover 10.5\"', 3, 0),
(222, 'Apple Accessories', 'iPad Pro Smart Cover 12.9\"', 3, 0),
(223, 'Apple Accessories', 'iPad Pro Smart Keyboard 10.5\"', 3, 0),
(224, 'Apple Accessories', 'iPad Pro Smart Keyboard 12.9\"', 3, 0),
(225, 'Apple Accessories', 'Lightning Digital AV Adapter', 3, 0),
(226, 'Apple Accessories', 'Lightning to USB', 3, 0),
(227, 'Apple Accessories', 'Mini Display Port to VGA', 3, 0),
(228, 'Apple Accessories', 'Pen Loop Apple Pencil', 3, 0),
(229, 'Apple Accessories', 'Thunder Bolt Cable', 3, 0),
(230, 'Apple Accessories', 'Thunder Bolt to FireWire Adapter', 3, 0),
(231, 'Apple Accessories', 'USB Ethernet Adapter', 3, 0),
(232, 'Apple Accessories', 'USB-C Power Adapter', 3, 0),
(233, 'Apple Accessories', 'USB-C Power Adapter (29W)', 3, 0),
(234, 'Apple Accessories', 'USB-C Power Adapter (61W)', 3, 0),
(235, 'Apple Accessories', 'USB-C to Lightning Cable', 3, 0),
(236, 'Voice', 'Savi 720', 3, 0),
(237, 'Voice', 'Savi 730', 3, 0),
(238, 'Voice', 'Savi 740', 3, 0),
(239, 'Voice', 'Savi 740 Replacement Headset w/battery', 3, 0),
(240, 'Voice', 'PL-APV63(Avaya)', 3, 0),
(241, 'Voice', 'PL-APC43(Cisco)', 3, 0),
(242, 'Voice', 'Polycom', 3, 0),
(243, 'Printers', 'B&W Local Printer M402dne', 3, 0),
(244, 'Printers', 'B&W Network Printer', 3, 0),
(245, 'Printers', 'Color Local Printer M452dn', 3, 0),
(246, 'Printers', 'Color Network Printer', 3, 0),
(247, 'Desktops', 'Standard Desktop', 4, 0),
(248, 'Desktops', 'Tiny Desktop', 4, 0),
(249, 'Desktops', 'Thin Client', 4, 0),
(250, 'Desktops', 'Workstation', 4, 0),
(251, 'Desktop Accessories', 'Dell 22\" Speaker Bar', 4, 0),
(252, 'Desktop Accessories', 'DisplayPort to DisplayPort Cable', 4, 0),
(253, 'Desktop Accessories', 'DisplayPort to HDMI Cable', 4, 0),
(254, 'Desktop Accessories', 'DisplayPort to MiniDP Cable', 4, 0),
(255, 'Desktop Accessories', 'Ergonomic Keyboard', 4, 0),
(256, 'Desktop Accessories', 'JabraSpeak USB Speakerphone', 4, 0),
(257, 'Desktop Accessories', 'Fujitsu Scanner', 4, 0),
(258, 'Desktop Accessories', 'Keyboard/Mouse Combo', 4, 0),
(259, 'Desktop Accessories', 'Kingston 16GB USB Flashdrive', 4, 0),
(260, 'Desktop Accessories', 'Kingston 32GB USB Flashdrive', 4, 0),
(261, 'Desktop Accessories', 'Kingston 64GB USB Flashdrive', 4, 0),
(262, 'Desktop Accessories', 'Logitech c930e Webcam', 4, 0),
(263, 'Desktop Accessories', 'Logitech Conference Cam BCC950', 4, 0),
(264, 'Desktop Accessories', 'Microsoft LifeCam', 4, 0),
(265, 'Desktop Accessories', 'Muse Soundbar', 4, 0),
(266, 'Desktop Accessories', 'Power Strips', 4, 0),
(267, 'Desktop Accessories', 'USB Extension Cable', 4, 0),
(268, 'Desktop Accessories', 'USB Headset for MOC -Jabra', 4, 0),
(269, 'Desktop Accessories', 'Wireless Keyboard/Mouse Combo', 4, 0),
(270, 'Laptops', 'X-Series', 4, 0),
(271, 'Laptops', 'T-Series', 4, 0),
(272, 'Laptops', 'X1 Carbon', 4, 0),
(273, 'Laptops', 'X1 Yoga', 4, 0),
(274, 'Laptop Accessories', 'Lenovo 65W Slim Tip Power Adapter', 4, 0),
(275, 'Laptop Accessories', 'Lenovo USB-C Power Adapter', 4, 0),
(276, 'Laptop Accessories', 'Network Adapter', 4, 0),
(277, 'Laptop Accessories', 'Lenovo Thinkpad Pro Dock (T/X Series)', 4, 0),
(278, 'Laptop Accessories', 'Lenovo Thinkpad USB 3.0 Dock (X1 Carbon)', 4, 0),
(279, 'Laptop Accessories', 'Targus Dock', 4, 0),
(280, 'Laptop Accessories', 'Lenovo OneLink Dock (Yoga OLED)', 4, 0),
(281, 'Monitors', '22\"', 4, 0),
(282, 'Monitors', '24\"', 4, 0),
(283, 'Monitors', '27\"', 4, 0),
(284, 'Monitors', '27\"', 4, 0),
(285, 'Monitors', 'Privacy Filter 22\"', 4, 0),
(286, 'Monitors', 'Privacy Filter 24\"', 4, 0),
(287, 'Monitors', 'Privacy Filter 27\"', 4, 0),
(288, 'Mobile Devices', 'iPad Pro 10.5-Inch Display', 4, 0),
(289, 'Mobile Devices', 'iPad Pro 12.9-Inch Display', 4, 0),
(290, 'Mobile Devices', 'iPhone 8', 4, 0),
(291, 'Mobile Devices', 'iPhone X', 4, 0),
(292, 'Mobile Devices', 'Mobile HotSpot', 4, 0),
(293, 'Mobile Devices', 'BB Classic', 4, 0),
(294, 'Peripherals', 'International Travel Plug Adapter', 4, 0),
(295, 'Peripherals', 'Logitech iPad Pro Keyboard 10.5', 4, 0),
(296, 'Peripherals', 'Logitecg iPad Pro keyboard 12.9', 4, 0),
(297, 'Peripherals', 'Citrix Mouse', 4, 0),
(298, 'Peripherals', 'HubMax', 4, 0),
(299, 'Peripherals', 'BB Class Case', 4, 0),
(300, 'Peripherals', 'BB Charger', 4, 0),
(301, 'Apple Accessories', 'Apple Pencil', 4, 0),
(302, 'Apple Accessories', 'Apple TV', 4, 0),
(303, 'Apple Accessories', 'iPad Pro Smart Cover 10.5\"', 4, 0),
(304, 'Apple Accessories', 'iPad Pro Smart Cover 12.9\"', 4, 0),
(305, 'Apple Accessories', 'iPad Pro Smart Keyboard 10.5\"', 4, 0),
(306, 'Apple Accessories', 'iPad Pro Smart Keyboard 12.9\"', 4, 0),
(307, 'Apple Accessories', 'Lightning Digital AV Adapter', 4, 0),
(308, 'Apple Accessories', 'Lightning to USB', 4, 0),
(309, 'Apple Accessories', 'Mini Display Port to VGA', 4, 0),
(310, 'Apple Accessories', 'Pen Loop Apple Pencil', 4, 0),
(311, 'Apple Accessories', 'Thunder Bolt Cable', 4, 0),
(312, 'Apple Accessories', 'Thunder Bolt to FireWire Adapter', 4, 0),
(313, 'Apple Accessories', 'USB Ethernet Adapter', 4, 0),
(314, 'Apple Accessories', 'USB-C Power Adapter', 4, 0),
(315, 'Apple Accessories', 'USB-C Power Adapter (29W)', 4, 0),
(316, 'Apple Accessories', 'USB-C Power Adapter (61W)', 4, 0),
(317, 'Apple Accessories', 'USB-C to Lightning Cable', 4, 0),
(318, 'Voice', 'Savi 720', 4, 0),
(319, 'Voice', 'Savi 730', 4, 0),
(320, 'Voice', 'Savi 740', 4, 0),
(321, 'Voice', 'Savi 740 Replacement Headset w/battery', 4, 0),
(322, 'Voice', 'PL-APV63(Avaya)', 4, 0),
(323, 'Voice', 'PL-APC43(Cisco)', 4, 0),
(324, 'Voice', 'Polycom', 4, 0),
(325, 'Printers', 'B&W Local Printer M402dne', 4, 0),
(326, 'Printers', 'B&W Network Printer', 4, 0),
(327, 'Printers', 'Color Local Printer M452dn', 4, 0),
(328, 'Printers', 'Color Network Printer', 4, 0),
(338, 'new', '2', 1, 0),
(337, 'new', '1', 1, 0),
(1074, 'Desktops', 'Thin Desktop', 6, 0),
(1073, 'Desktops', 'Workstation', 6, 0),
(1071, 'Printers', 'Color Local Printer M452dn', 6, 0),
(1072, 'Printers', 'Color Network Printer', 6, 0),
(1070, 'Printers', 'B&W Network Printer', 6, 0),
(1027, 'Monitors', '27\"', 6, 0),
(1028, 'Monitors', '27\"', 6, 0),
(1026, 'Monitors', '24\"', 6, 0),
(1025, 'Monitors', '22\"', 6, 0),
(1023, 'Laptop Accessories', 'Targus Dock', 6, 0),
(1024, 'Laptop Accessories', 'Lenovo OneLink Dock (Yoga OLED)', 6, 0),
(1021, 'Laptop Accessories', 'Lenovo Thinkpad Pro Dock (T/X Series)', 6, 0),
(1022, 'Laptop Accessories', 'Lenovo Thinkpad USB 3.0 Dock (X1 Carbon)', 6, 0),
(1020, 'Laptop Accessories', 'Network Adapter', 6, 0),
(1019, 'Laptop Accessories', 'Lenovo USB-C Power Adapter', 6, 0),
(1018, 'Laptop Accessories', 'Lenovo 65W Slim Tip Power Adapter', 6, 0),
(1017, 'Laptops', 'X1 Yoga', 6, 0),
(1015, 'Laptops', 'T-Series', 6, 0),
(1016, 'Laptops', 'X1 Carbon', 6, 0),
(1014, 'Laptops', 'X-Series', 6, 0),
(1013, 'Desktop Accessories', 'Wireless Keyboard/Mouse Combo', 6, 0),
(1012, 'Desktop Accessories', 'USB Headset for MOC -Jabra', 6, 0),
(1011, 'Desktop Accessories', 'USB Extension Cable', 6, 0),
(1009, 'Desktop Accessories', 'Muse Soundbar', 6, 0),
(1010, 'Desktop Accessories', 'Power Strips', 6, 0),
(1007, 'Desktop Accessories', 'Logitech Conference Cam BCC950', 6, 0),
(1008, 'Desktop Accessories', 'Microsoft LifeCam', 6, 0),
(1005, 'Desktop Accessories', 'Kingston 64GB USB Flashdrive', 6, 0),
(1006, 'Desktop Accessories', 'Logitech c930e Webcam', 6, 0),
(1003, 'Desktop Accessories', 'Kingston 16GB USB Flashdrive', 6, 0),
(1004, 'Desktop Accessories', 'Kingston 32GB USB Flashdrive', 6, 0),
(1002, 'Desktop Accessories', 'Keyboard/Mouse Combo', 6, 0),
(1001, 'Desktop Accessories', 'Fujitsu Scanner', 6, 0),
(1000, 'Desktop Accessories', 'JabraSpeak USB Speakerphone', 6, 0),
(999, 'Desktop Accessories', 'Ergonomic Keyboard', 6, 0),
(998, 'Desktop Accessories', 'DisplayPort to MiniDP Cable', 6, 0),
(997, 'Desktop Accessories', 'DisplayPort to HDMI Cable', 6, 0),
(995, 'Desktop Accessories', 'Dell 22\" Speaker Bar', 6, 0),
(996, 'Desktop Accessories', 'DisplayPort to DisplayPort Cable', 6, 0),
(992, 'Desktops', 'Thin Desktop', 5, 0),
(993, 'Desktops', 'Standard Desktop', 5, 0),
(994, 'Desktops', 'Tiny Desktop', 5, 0),
(991, 'Desktops', 'Workstation', 5, 0),
(990, 'Printers', 'Color Network Printer', 5, 0),
(989, 'Printers', 'Color Local Printer M452dn', 5, 0),
(985, 'Voice', 'PL-APC43(Cisco)', 5, 0),
(986, 'Voice', 'Polycom', 5, 0),
(987, 'Printers', 'B&W Local Printer M402dne', 5, 0),
(988, 'Printers', 'B&W Network Printer', 5, 0),
(984, 'Voice', 'PL-APV63(Avaya)', 5, 0),
(983, 'Voice', 'Savi 740 Replacement Headset w/battery', 5, 0),
(982, 'Voice', 'Savi 740', 5, 0),
(981, 'Voice', 'Savi 730', 5, 0),
(980, 'Voice', 'Savi 720', 5, 0),
(978, 'Apple Accessories', 'USB-C Power Adapter (61W)', 5, 0),
(979, 'Apple Accessories', 'USB-C to Lightning Cable', 5, 0),
(976, 'Apple Accessories', 'USB-C Power Adapter', 5, 0),
(977, 'Apple Accessories', 'USB-C Power Adapter (29W)', 5, 0),
(975, 'Apple Accessories', 'USB Ethernet Adapter', 5, 0),
(974, 'Apple Accessories', 'Thunder Bolt to FireWire Adapter', 5, 0),
(973, 'Apple Accessories', 'Thunder Bolt Cable', 5, 0),
(939, 'Laptop Accessories', 'Lenovo Thinkpad Pro Dock (T/X Series)', 5, 0),
(940, 'Laptop Accessories', 'Lenovo Thinkpad USB 3.0 Dock (X1 Carbon)', 5, 0),
(941, 'Laptop Accessories', 'Targus Dock', 5, 0),
(942, 'Laptop Accessories', 'Lenovo OneLink Dock (Yoga OLED)', 5, 0),
(943, 'Monitors', '22\"', 5, 0),
(944, 'Monitors', '24\"', 5, 0),
(945, 'Monitors', '27\"', 5, 0),
(946, 'Monitors', '27\"', 5, 0),
(947, 'Monitors', 'Privacy Filter 22\"', 5, 0),
(948, 'Monitors', 'Privacy Filter 24\"', 5, 0),
(949, 'Monitors', 'Privacy Filter 27\"', 5, 0),
(950, 'Mobile Devices', 'iPad Pro 10.5-Inch Display', 5, 0),
(951, 'Mobile Devices', 'iPad Pro 12.9-Inch Display', 5, 0),
(952, 'Mobile Devices', 'iPhone 8', 5, 0),
(953, 'Mobile Devices', 'iPhone X', 5, 0),
(954, 'Mobile Devices', 'Mobile HotSpot', 5, 0),
(955, 'Mobile Devices', 'BB Classic', 5, 0),
(956, 'Peripherals', 'International Travel Plug Adapter', 5, 0),
(957, 'Peripherals', 'Logitech iPad Pro Keyboard 10.5', 5, 0),
(958, 'Peripherals', 'Logitecg iPad Pro keyboard 12.9', 5, 0),
(959, 'Peripherals', 'Citrix Mouse', 5, 0),
(960, 'Peripherals', 'HubMax', 5, 0),
(961, 'Peripherals', 'BB Class Case', 5, 0),
(962, 'Peripherals', 'BB Charger', 5, 0),
(963, 'Apple Accessories', 'Apple Pencil', 5, 0),
(964, 'Apple Accessories', 'Apple TV', 5, 0),
(965, 'Apple Accessories', 'iPad Pro Smart Cover 10.5\"', 5, 0),
(966, 'Apple Accessories', 'iPad Pro Smart Cover 12.9\"', 5, 0),
(967, 'Apple Accessories', 'iPad Pro Smart Keyboard 10.5\"', 5, 0),
(968, 'Apple Accessories', 'iPad Pro Smart Keyboard 12.9\"', 5, 0),
(969, 'Apple Accessories', 'Lightning Digital AV Adapter', 5, 0),
(970, 'Apple Accessories', 'Lightning to USB', 5, 0),
(971, 'Apple Accessories', 'Mini Display Port to VGA', 5, 0),
(972, 'Apple Accessories', 'Pen Loop Apple Pencil', 5, 0),
(938, 'Laptop Accessories', 'Network Adapter', 5, 0),
(937, 'Laptop Accessories', 'Lenovo USB-C Power Adapter', 5, 0),
(936, 'Laptop Accessories', 'Lenovo 65W Slim Tip Power Adapter', 5, 0),
(933, 'Laptops', 'T-Series', 5, 0),
(934, 'Laptops', 'X1 Carbon', 5, 0),
(935, 'Laptops', 'X1 Yoga', 5, 0),
(932, 'Laptops', 'X-Series', 5, 0),
(931, 'Desktop Accessories', 'Wireless Keyboard/Mouse Combo', 5, 0),
(930, 'Desktop Accessories', 'USB Headset for MOC -Jabra', 5, 0),
(928, 'Desktop Accessories', 'Power Strips', 5, 0),
(929, 'Desktop Accessories', 'USB Extension Cable', 5, 0),
(927, 'Desktop Accessories', 'Muse Soundbar', 5, 0),
(926, 'Desktop Accessories', 'Microsoft LifeCam', 5, 0),
(925, 'Desktop Accessories', 'Logitech Conference Cam BCC950', 5, 0),
(923, 'Desktop Accessories', 'Kingston 64GB USB Flashdrive', 5, 0),
(924, 'Desktop Accessories', 'Logitech c930e Webcam', 5, 0),
(921, 'Desktop Accessories', 'Kingston 16GB USB Flashdrive', 5, 0),
(922, 'Desktop Accessories', 'Kingston 32GB USB Flashdrive', 5, 0),
(920, 'Desktop Accessories', 'Keyboard/Mouse Combo', 5, 0),
(919, 'Desktop Accessories', 'Fujitsu Scanner', 5, 0),
(917, 'Desktop Accessories', 'Ergonomic Keyboard', 5, 0),
(918, 'Desktop Accessories', 'JabraSpeak USB Speakerphone', 5, 0),
(916, 'Desktop Accessories', 'DisplayPort to MiniDP Cable', 5, 0),
(913, 'Desktop Accessories', 'Dell 22\" Speaker Bar', 5, 0),
(914, 'Desktop Accessories', 'DisplayPort to DisplayPort Cable', 5, 0),
(915, 'Desktop Accessories', 'DisplayPort to HDMI Cable', 5, 0),
(1069, 'Printers', 'B&W Local Printer M402dne', 6, 0),
(1068, 'Voice', 'Polycom', 6, 0),
(1067, 'Voice', 'PL-APC43(Cisco)', 6, 0),
(1066, 'Voice', 'PL-APV63(Avaya)', 6, 0),
(1065, 'Voice', 'Savi 740 Replacement Headset w/battery', 6, 0),
(1064, 'Voice', 'Savi 740', 6, 0),
(1063, 'Voice', 'Savi 730', 6, 0),
(1062, 'Voice', 'Savi 720', 6, 0),
(1061, 'Apple Accessories', 'USB-C to Lightning Cable', 6, 0),
(1060, 'Apple Accessories', 'USB-C Power Adapter (61W)', 6, 0),
(1059, 'Apple Accessories', 'USB-C Power Adapter (29W)', 6, 0),
(1058, 'Apple Accessories', 'USB-C Power Adapter', 6, 0),
(1057, 'Apple Accessories', 'USB Ethernet Adapter', 6, 0),
(1056, 'Apple Accessories', 'Thunder Bolt to FireWire Adapter', 6, 0),
(1055, 'Apple Accessories', 'Thunder Bolt Cable', 6, 0),
(1054, 'Apple Accessories', 'Pen Loop Apple Pencil', 6, 0),
(1053, 'Apple Accessories', 'Mini Display Port to VGA', 6, 0),
(1052, 'Apple Accessories', 'Lightning to USB', 6, 0),
(1051, 'Apple Accessories', 'Lightning Digital AV Adapter', 6, 0),
(1050, 'Apple Accessories', 'iPad Pro Smart Keyboard 12.9\"', 6, 0),
(1049, 'Apple Accessories', 'iPad Pro Smart Keyboard 10.5\"', 6, 0),
(1048, 'Apple Accessories', 'iPad Pro Smart Cover 12.9\"', 6, 0),
(1047, 'Apple Accessories', 'iPad Pro Smart Cover 10.5\"', 6, 0),
(1046, 'Apple Accessories', 'Apple TV', 6, 0),
(1045, 'Apple Accessories', 'Apple Pencil', 6, 0),
(1044, 'Peripherals', 'BB Charger', 6, 0),
(1043, 'Peripherals', 'BB Class Case', 6, 0),
(1042, 'Peripherals', 'HubMax', 6, 0),
(1041, 'Peripherals', 'Citrix Mouse', 6, 0),
(1040, 'Peripherals', 'Logitecg iPad Pro keyboard 12.9', 6, 0),
(1039, 'Peripherals', 'Logitech iPad Pro Keyboard 10.5', 6, 0),
(1038, 'Peripherals', 'International Travel Plug Adapter', 6, 0),
(1037, 'Mobile Devices', 'BB Classic', 6, 0),
(1036, 'Mobile Devices', 'Mobile HotSpot', 6, 0),
(1035, 'Mobile Devices', 'iPhone X', 6, 0),
(1034, 'Mobile Devices', 'iPhone 8', 6, 0),
(1029, 'Monitors', 'Privacy Filter 22\"', 6, 0),
(1030, 'Monitors', 'Privacy Filter 24\"', 6, 0),
(1031, 'Monitors', 'Privacy Filter 27\"', 6, 0),
(1032, 'Mobile Devices', 'iPad Pro 10.5-Inch Display', 6, 0),
(1033, 'Mobile Devices', 'iPad Pro 12.9-Inch Display', 6, 0),
(1076, 'Desktops', 'Tiny Desktop', 6, 0),
(1075, 'Desktops', 'Standard Desktop', 6, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;