-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `test`;

-- Dumping structure for table test.airline_company
CREATE TABLE IF NOT EXISTS `airline_company` (
  `airlineID` int(11) NOT NULL AUTO_INCREMENT,
  `airline_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `airline_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `airline_fee` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`airlineID`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test.airline_company: ~5 rows (approximately)
INSERT INTO `airline_company` (`airlineID`, `airline_name`, `airline_image`, `airline_fee`) VALUES
	(1, 'Bamboo Airways', 'bambooAirways.png', 500000),
	(2, 'Vietnam Airline', 'vietnamAirline.png', 1000000),
	(3, 'Jetstar', 'jetstar.png', 200000),
	(129, 'VietjetAir', 'vietjetair.jpg', 150000),
	(130, 'HAUI', '1 (2).jfif', 200000);

-- Dumping structure for table test.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizen_identification` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerID`) USING BTREE,
  UNIQUE KEY `UK_7fs7b2coc7qru1qcvy91erql4` (`userID`),
  KEY `fk_user` (`userID`),
  CONSTRAINT `FK1_user` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.customer: ~62 rows (approximately)
INSERT INTO `customer` (`customerID`, `fullname`, `sex`, `birthday`, `nationality`, `citizen_identification`, `phone`, `email`, `address`, `userID`) VALUES
	(250, 'Le Hong Phong', 'Male', '2023-12-20', NULL, NULL, '0978566542', 'phong4353@gaming', NULL, NULL),
	(251, 'doan linh hue', 'Male', '2023-12-02', NULL, NULL, '0978566542', 'phong098@gaming', NULL, NULL),
	(252, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '0978566542', 'phong20019@gmail.com', NULL, NULL),
	(253, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '0978566542', 'phong200198@gmail.com', NULL, NULL),
	(254, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '1231232313', 'phong200124@gmail.com', NULL, NULL),
	(255, 'Le Hong Phong', NULL, NULL, NULL, '23424154352353', '1231232313', 'phong2552001@gmail.com', 'ertwetewtewte', NULL),
	(256, 'Le Hong Phong', 'Male', '2023-12-08', NULL, NULL, '1234123489', 'phong20hfgh01@gmail.com', NULL, NULL),
	(257, 'Le Hong Phong', NULL, NULL, NULL, '23455465464356', '1234567890', 'phong2552001@gmail.com', 'dfgdfgdfgdfjhgjgh', NULL),
	(258, 'Le Hong Phong', 'Male', '2023-12-01', NULL, NULL, '1234123489', 'phong5435@gaming', NULL, NULL),
	(259, 'doan linh hue', NULL, NULL, NULL, '234154353453254', '0978566542', 'phong2552001@gmail.com', 'ertwerrhfdghfd', NULL),
	(260, 'Le Hong Phong', NULL, NULL, NULL, '1231231212112', '0973725501', 'phong2552001@gmail.com', 'yen diem, cao minh, phuc yen, vinh phuc', 79),
	(261, 'Nguyễn Văn Nam', 'Male', '2002-02-03', NULL, NULL, '3475648732', 'nam2530@gmail.com', NULL, NULL),
	(262, 'Hoàng Đức Nam', 'Male', '2010-03-02', NULL, NULL, '3243242342', 'NamHoang21@gmail.comm', NULL, NULL),
	(263, 'Le Hong Phong', NULL, NULL, NULL, '324764853476534', '0978566542', 'phong2552001@gmail.com', 'dfghkkasjdhaskdjh', NULL),
	(264, 'Đoàn Thị Trâm', 'Male', '2023-12-18', NULL, NULL, '3128238423', 'trandt10@gmail.com', NULL, NULL),
	(265, 'Le Hong Phong', 'Male', '2023-12-11', NULL, NULL, '3243242342', 'phong4535@gaminggg', NULL, NULL),
	(266, 'Le Hong Phong', 'Male', '2023-12-13', NULL, NULL, '1234567890', 'phong234@gaming', NULL, NULL),
	(267, 'doan linh hue', 'Male', '2023-12-13', NULL, NULL, '1231232313', 'phong2001234@gmail.com', NULL, NULL),
	(268, 'Le Hong Phong', NULL, NULL, NULL, '23423432423423', '3475648732', 'phong2552001@gmail.com', 'dferterwtewtwetwe', NULL),
	(269, 'Le Hong Phong', 'Male', '2023-12-17', NULL, NULL, '3243242342', 'hue20023@gmail.com', NULL, NULL),
	(270, 'Le Hong Phong', 'Male', '2023-12-05', NULL, NULL, '1234123489', 'phong34@gaminggg', NULL, NULL),
	(271, 'Le Hong Phong', 'Male', '2023-12-27', NULL, NULL, '3475648732', 'phong232001@gmail.com', NULL, NULL),
	(272, 'Le Hong Phong', 'Male', '2023-12-22', NULL, NULL, '3475648732', 'phong2312001@gmail.com', NULL, NULL),
	(273, 'doan linh hue', 'Female', '2023-12-06', NULL, NULL, '3243242342', 'phong324435@gaming', NULL, NULL),
	(274, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '3243242342', 'phong2001ret@gmail.com', NULL, NULL),
	(275, 'Le Hong Phong', 'Male', '2023-12-15', NULL, NULL, '3475648732', 'phong24@gaminggg', NULL, NULL),
	(276, 'Le Hong Phong', 'Male', '2023-12-14', NULL, NULL, '3475648732', 'phong3242001@gmail.com', NULL, NULL),
	(277, 'Le Hong Phong', NULL, NULL, NULL, '1231231212112', '2349583439', 'phong2552001@gmail.com', 'yen diem, cao minh, phuc yen, vinh phuc', 80),
	(278, 'hehodsfsd', 'Male', '2023-12-16', NULL, NULL, '3243242342', 'phong234@gaminggg', NULL, NULL),
	(279, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '3243242342', 'phong212@gaming', NULL, NULL),
	(280, 'Le Hong Phong', 'Male', '2023-12-13', NULL, NULL, '3475648732', 'phong3242@gaming', NULL, NULL),
	(281, 'Le Hong Phong', NULL, NULL, NULL, '24245345345', '3475648732', 'phong2552001@gmail.com', 'fdgdfgdfgsdgfdgsdg', NULL),
	(282, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '3475648732', 'phongvbre@gaming', NULL, NULL),
	(283, 'Le Hong Phong', NULL, NULL, NULL, '243242342342342', '3475648732', 'phong2552001@gmail.com', 'etetwetrwetewrte', NULL),
	(284, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '3243242342', 'hue3@gmail.com', NULL, NULL),
	(285, 'Le Hong Phong', NULL, NULL, NULL, '23421544535', '3243242342', 'phong2552001@gmail.com', '2gfdsgderhfghfgdhdfg', NULL),
	(286, 'Le Hong Phong', 'Male', '2023-12-15', NULL, NULL, '3475648732', 'phong345@gaminggg', NULL, NULL),
	(287, 'Le Hong Phong', 'Male', '2023-12-14', NULL, NULL, '3243242342', 'phong345435@gaming', NULL, NULL),
	(288, 'Le Hong Phong', 'Male', '2023-12-12', NULL, NULL, '3475648732', 'phong2001@gmail.com', NULL, NULL),
	(289, 'Le Hong Phong', NULL, NULL, NULL, '1223432543253', '3475648732', 'phong2552001@gmail.com', 'kdjsfhskdfhskdjfhs', NULL),
	(290, NULL, NULL, NULL, NULL, NULL, NULL, 'phong2552001@gmail.com', NULL, 81),
	(291, 'Le Hong Phong', 'Male', '2023-12-14', NULL, NULL, '3243242342', 'phon234g@gaminggg', NULL, NULL),
	(292, 'Le Hong Phong', 'Other', '2023-12-27', NULL, NULL, '3243242342', 'hue20033w5@gmail.com', NULL, NULL),
	(293, 'Le Hong Phong', 'Male', '2023-12-15', NULL, NULL, '3475648732', 'hue224003@gmail.com', NULL, NULL),
	(294, NULL, NULL, NULL, NULL, NULL, NULL, 'phong2552001@gmail.com', NULL, 82),
	(295, 'Le Hong Phong', 'Male', '2023-12-05', NULL, NULL, '3243242342', 'phongsd345@gaming', NULL, NULL),
	(296, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '3475648732', 'phong456@gaminggg', NULL, NULL),
	(297, 'Le Hong Phong', 'Male', '2023-12-14', NULL, NULL, '3243242342', 'phong34654@gaminggg', NULL, NULL),
	(298, 'Le Hong Phong', 'Male', '2023-12-22', NULL, NULL, '3243242342', 'phong@gaminggg', NULL, NULL),
	(299, 'Le Hong Phong', NULL, NULL, NULL, '3453452352354235', '1234123489', 'phong2552001@gmail.com', 'treyfghgfdhfgh', NULL),
	(300, 'Le Hong Phong', 'Male', '2023-12-30', NULL, NULL, '3475648732', 'hue123@gmail.com', NULL, NULL),
	(301, 'Le Hong Phong', NULL, NULL, NULL, '2234354353454', '3243242342', 'phong2552001@gmail.com', 'ghfghfdghfghfg', NULL),
	(302, 'Le Hong Phong', 'Male', '2024-01-05', NULL, NULL, '3243242342', 'hue24@gmail.com', NULL, NULL),
	(303, 'Le Hong Phong', 'Male', '2023-12-14', NULL, NULL, '3475648732', 'phong1234542001@gmail.com', NULL, NULL),
	(304, 'Le Hong Phong', NULL, NULL, NULL, '235347856438', '0978566542', 'phong2552001@gmail.com', 'dfkjghsdkghdkjfgfdf', NULL),
	(305, 'doan linh hue', 'Male', '2023-12-22', NULL, NULL, '3475648732', 'hue200345343@gmail.com', NULL, NULL),
	(306, 'Le Hong Phong', 'Male', '2023-12-21', NULL, NULL, '3475648732', 'phonytrryrg2001@gmail.com', NULL, NULL),
	(307, 'Le Hong Phong', 'Male', '2023-11-30', NULL, NULL, '3243242342', 'phongjkhdfg@gaming', NULL, NULL),
	(308, 'Le Hong Phong', 'Male', '2023-12-06', NULL, NULL, '3243242342', 'hue2003353@gmail.com', NULL, NULL),
	(309, 'Le Hong Phong', NULL, NULL, NULL, '345345325345', '0978566542', 'phong2552001@gmail.com', 'trehgfhfghdfgh', NULL),
	(310, 'Le Hong Phong', 'Male', '2023-12-14', NULL, NULL, '3475648732', 'phong45678@gmail.com', NULL, NULL),
	(311, 'Le Hong Phong', 'Male', '2023-12-07', NULL, NULL, '3243242342', 'huewe2003@gmail.com', NULL, NULL),
	(312, 'Le Hong Phong', 'Male', '2023-12-06', NULL, NULL, '3243242342', 'phongcvxbcvb@gaminggg', NULL, NULL),
	(313, 'Le Hong Phong', 'Male', '2023-12-12', NULL, NULL, '3475648732', 'hue2003453@gmail.com', NULL, NULL),
	(314, 'Le Hong Phong', NULL, NULL, NULL, '23648236487643', '3475648732', 'phong2552001@gmail.com', 'ksjdfkjkksdhfjdshf', NULL);

-- Dumping structure for table test.flight
CREATE TABLE IF NOT EXISTS `flight` (
  `flightID` int(11) NOT NULL AUTO_INCREMENT,
  `departing_from` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arriving_at` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flight_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_flight` bigint(20) DEFAULT NULL,
  `date_flight` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flightID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test.flight: ~10 rows (approximately)
INSERT INTO `flight` (`flightID`, `departing_from`, `arriving_at`, `flight_time`, `departure_time`, `fee_flight`, `date_flight`, `travel_time`) VALUES
	(1, 'Hà Nội', 'Đà Nẵng', '17:30', '19:30', 750000, '2024-01-04', '2h'),
	(3, 'Hà Nội', 'Đà Lạt', '17:30', '19:30', 1150000, '2024-01-04', '2h'),
	(4, 'Đà Nẵng', 'Hà Nội', '17:30', '19:30', 850000, '2024-01-07', '2h'),
	(5, 'Hà Nội', 'Phú Quốc', '10:30', '13:30', 750000, '2024-01-04', '3h'),
	(6, 'Hà Nội', 'Hồ Chí Minh', '12:30', '14:30', 950000, '2024-01-04', '2h'),
	(7, 'Hồ Chí Minh', 'Phú Quốc', '17:30', '19:00', 1200000, '2024-01-04', '1h30m'),
	(8, 'Hồ Chí Minh', 'Đà Nẵng', '17:30', '19:30', 850000, '2024-02-04', '2h'),
	(9, 'Đà Nẵng', 'Hồ Chí Minh', '17:30', '19:30', 650000, '2023-12-24', '2h'),
	(10, 'Hồ Chí Minh', 'Điện Biên', '15:30', '18:30', 1550000, '2024-02-14', '3h'),
	(11, 'Đà Lạt', 'Hà Nội', '09:30', '12:00', 1200000, '2024-02-04', '2h30m');

-- Dumping structure for table test.luggage
CREATE TABLE IF NOT EXISTS `luggage` (
  `luggageID` int(11) NOT NULL AUTO_INCREMENT,
  `weight` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  PRIMARY KEY (`luggageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test.luggage: ~3 rows (approximately)
INSERT INTO `luggage` (`luggageID`, `weight`, `cost`) VALUES
	(1, 10, 700000),
	(2, 20, 1000000),
	(3, 30, 1500000),
	(4, 5, 0);

-- Dumping structure for table test.order_infor
CREATE TABLE IF NOT EXISTS `order_infor` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `total_cost` bigint(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `qr_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderID`) USING BTREE,
  UNIQUE KEY `qr_code` (`qr_code`),
  KEY `FK1customer` (`customerID`),
  CONSTRAINT `FK1customer` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.order_infor: ~17 rows (approximately)
INSERT INTO `order_infor` (`orderID`, `status`, `total_cost`, `date`, `qr_code`, `customerID`) VALUES
	(139, 2, 2450000, '2023-06-05 15:07:54', 'HD231323534970', 255),
	(140, 2, 2450000, '2023-06-05 15:14:06', 'HD789043567498', 257),
	(141, 0, 2750000, '2023-07-05 15:24:29', 'HD654232547981', 259),
	(142, 0, 1750000, '2023-12-07 14:12:31', 'HD654265347405', 263),
	(143, 0, 2750000, '2023-12-07 17:09:42', 'HD873234239798', 268),
	(144, 2, 2750000, '2023-06-07 17:25:28', 'HD550121122010', 260),
	(145, 0, 2450000, '2023-02-07 17:27:59', 'HD550121120695', 260),
	(146, 0, 2450000, '2023-12-07 17:31:06', 'HD550121125518', 260),
	(147, 2, 2450000, '2023-10-11 11:39:38', 'HD343921126539', 277),
	(148, 2, 2450000, '2023-03-13 09:39:09', 'HD873253451678', 281),
	(149, 0, 2450000, '2023-12-13 10:39:37', 'HD873223420303', 283),
	(150, 0, 2750000, '2023-05-13 00:00:00', 'HD234245351224', 285),
	(151, 0, 2450000, '2023-12-16 09:22:39', 'HD550121123161', 260),
	(152, 2, 1750000, '2023-12-16 16:40:15', 'HD873232537677', 289),
	(153, 0, 1750000, '2023-12-26 10:52:42', 'HD348942350900', 299),
	(154, 0, 1750000, '2023-12-26 13:43:31', 'HD234234545984', 301),
	(155, 0, 2450000, '2023-12-26 13:58:26', 'HD654264384112', 304),
	(156, 0, 2450000, '2023-12-26 14:21:28', 'HD654253453499', 309),
	(157, 0, 3450000, '2023-12-29 10:24:03', 'HD873276432027', 314);

-- Dumping structure for table test.plane
CREATE TABLE IF NOT EXISTS `plane` (
  `planeID` int(11) NOT NULL AUTO_INCREMENT,
  `plane_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `airlineID` int(11) NOT NULL,
  PRIMARY KEY (`planeID`) USING BTREE,
  KEY `FK1_airline` (`airlineID`),
  CONSTRAINT `FK1_airline` FOREIGN KEY (`airlineID`) REFERENCES `airline_company` (`airlineID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test.plane: ~16 rows (approximately)
INSERT INTO `plane` (`planeID`, `plane_name`, `quantity`, `airlineID`) VALUES
	(1, 'Boeing-747', 400, 2),
	(2, 'Airbus-250', 350, 1),
	(3, 'MH-370', 300, 3),
	(4, 'Airbus-300', 300, 3),
	(5, 'Boeing-250', 400, 1),
	(6, 'MT-207', 200, 2),
	(7, 'Boeing-200', 350, 1),
	(8, 'MHT-250', 500, 3),
	(9, 'Airtax-50', 150, 2),
	(10, 'Force-100', 100, 1),
	(11, 'AirPlane100', 200, 3),
	(12, 'AirPlane-30', 200, 3),
	(13, 'AirPlane-S400', 200, 3),
	(14, 'Jet-100', 100, 129),
	(15, 'Boeing-2000', 200, 129),
	(16, 'Boeing-A3', 200, 129);

-- Dumping structure for table test.plane_flight
CREATE TABLE IF NOT EXISTS `plane_flight` (
  `planeID` int(11) NOT NULL,
  `flightID` int(11) NOT NULL,
  PRIMARY KEY (`planeID`) USING BTREE,
  KEY `FK2_flight` (`flightID`) USING BTREE,
  KEY `planeID` (`planeID`),
  CONSTRAINT `FK2_flight` FOREIGN KEY (`flightID`) REFERENCES `flight` (`flightID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_plane_flight_plane` FOREIGN KEY (`planeID`) REFERENCES `plane` (`planeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test.plane_flight: ~14 rows (approximately)
INSERT INTO `plane_flight` (`planeID`, `flightID`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(14, 1),
	(15, 1),
	(11, 3),
	(12, 3),
	(13, 3),
	(5, 4),
	(6, 4),
	(7, 4),
	(8, 4),
	(10, 4),
	(16, 11);

-- Dumping structure for table test.seat
CREATE TABLE IF NOT EXISTS `seat` (
  `seatID` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `seat_categoryid` int(11) NOT NULL,
  `planeID` int(11) NOT NULL,
  PRIMARY KEY (`seatID`,`planeID`) USING BTREE,
  KEY `FK2_seatCategory` (`seat_categoryid`) USING BTREE,
  KEY `FK2_plane2` (`planeID`),
  CONSTRAINT `FK2_category` FOREIGN KEY (`seat_categoryid`) REFERENCES `seat_category` (`seat_categoryid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_plane2` FOREIGN KEY (`planeID`) REFERENCES `plane_flight` (`planeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test.seat: ~40 rows (approximately)
INSERT INTO `seat` (`seatID`, `position`, `status`, `seat_categoryid`, `planeID`) VALUES
	(1, 'A1', 0, 3, 1),
	(2, 'A2', 0, 3, 1),
	(3, 'A3', 0, 3, 1),
	(4, 'A4', 0, 3, 1),
	(5, 'A5', 0, 3, 1),
	(6, 'A6', 0, 3, 1),
	(7, 'A7', 0, 3, 1),
	(8, 'A8', 0, 3, 1),
	(9, 'A9', 0, 3, 1),
	(10, 'A10', 0, 3, 1),
	(11, 'A11', 0, 3, 1),
	(12, 'A12', 0, 3, 1),
	(13, 'A13', 0, 3, 1),
	(15, 'A15', 0, 3, 1),
	(16, 'A16', 0, 3, 1),
	(17, 'A17', 0, 3, 1),
	(18, 'A18', 0, 3, 1),
	(19, 'A19', 0, 3, 1),
	(20, 'A20', 0, 3, 1),
	(21, 'A21', 0, 3, 1),
	(22, 'A1', 0, 3, 2),
	(23, 'A2', 0, 3, 2),
	(24, 'A3', 0, 3, 2),
	(25, 'A4', 0, 3, 2),
	(26, 'A5', 0, 3, 2),
	(27, 'A6', 0, 3, 2),
	(28, 'A7', 0, 3, 2),
	(29, 'A8', 0, 3, 2),
	(30, 'A1', 0, 1, 1),
	(31, 'A2', 0, 1, 1),
	(32, 'A3', 0, 1, 1),
	(33, 'A4', 0, 1, 1),
	(34, 'A5', 0, 1, 1),
	(35, 'A6', 0, 1, 1),
	(36, 'A7', 0, 1, 1),
	(37, 'A8', 0, 1, 1),
	(38, 'A9', 0, 1, 1),
	(39, 'A10', 0, 1, 1),
	(40, 'A11', 0, 1, 1),
	(41, 'A12', 0, 1, 1);

-- Dumping structure for table test.seat_category
CREATE TABLE IF NOT EXISTS `seat_category` (
  `seat_categoryid` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luggage_attach` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_category` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`seat_categoryid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test.seat_category: ~2 rows (approximately)
INSERT INTO `seat_category` (`seat_categoryid`, `category_name`, `luggage_attach`, `fee_category`) VALUES
	(1, 'Phổ thông', '23kg', 500000),
	(2, 'Phổ thông linh hoạt', '23kg+30kg', 750000),
	(3, 'Thương gia', '23kg+50kg', 1000000);

-- Dumping structure for table test.ticket
CREATE TABLE IF NOT EXISTS `ticket` (
  `ticketID` int(11) NOT NULL AUTO_INCREMENT,
  `airfares` float DEFAULT NULL,
  `luggageID` int(11) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `flightID` int(11) DEFAULT NULL,
  `seatID` int(11) DEFAULT NULL,
  `bar_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ticketID`) USING BTREE,
  UNIQUE KEY `qrcode` (`bar_code`) USING BTREE,
  KEY `FK1_luggage` (`luggageID`),
  KEY `orderID` (`orderID`),
  KEY `FK04_customer` (`customerID`),
  KEY `FK4_flight` (`flightID`),
  KEY `FK5seat` (`seatID`),
  CONSTRAINT `FK04_customer` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK1_luggage` FOREIGN KEY (`luggageID`) REFERENCES `luggage` (`luggageID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK4_flight` FOREIGN KEY (`flightID`) REFERENCES `plane_flight` (`flightID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK5seat` FOREIGN KEY (`seatID`) REFERENCES `seat` (`seatID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ticket_order_infor` FOREIGN KEY (`orderID`) REFERENCES `order_infor` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test.ticket: ~4 rows (approximately)
INSERT INTO `ticket` (`ticketID`, `airfares`, `luggageID`, `orderID`, `customerID`, `flightID`, `seatID`, `bar_code`) VALUES
	(79, 5250000, 1, 155, 303, 1, 10, 'T8732PHON7049'),
	(80, 1750000, 1, 156, 308, 1, 4, 'T2342HUE26229'),
	(100, 4000000, 1, 152, 291, 3, 36, 'T898989HUE898'),
	(101, 1750000, 1, 157, 313, 1, 1, 'T8732HUE28939');

-- Dumping structure for table test.user
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.user: ~5 rows (approximately)
INSERT INTO `user` (`userID`, `username`, `password`, `role`) VALUES
	(66, 'phong255', '$2a$10$uWGIPOJ4GwVl3mA2XSLNYOFcBiUnS1WYPcsTKjDEOYodfRaUFZ/3.', 1),
	(68, 'phonglhp255', '123456@Aa', 1),
	(69, 'phong2552001', '$2a$10$OTUQuDkuvkGo3/TNs0f1kORHV4L7bheQRrjD3qC5id1H3vEmmpoVG', 2),
	(70, 'admin', '', 2),
	(77, 'phonglh255', '$2a$10$ccizux9Ot5GyHKr5/Q3CB./plwoA40sjf4Rl0EfiDBQ/wwV66SOOa', 0),
	(79, 'phong255@', '$2a$10$/d6LJlZetXyV5O8ti5wezOACmWnuiukIxtTcbdeqt/Kta/d.dOv12', 0),
	(80, 'nguyenNam23', '$2a$10$DFpYa103A2RTR3gyCquJiOdqRraijip7km5vsc57jlFF/bFYVNAdm', 0),
	(81, 'phong255123', '$2a$10$.EcqGt.HDP8lHdMjO0VUhetW5JrlVBWv.3dsmQO.1GzXE9gQgAPfC', 0),
	(82, 'lephong2001', '$2a$10$JsACF36puQ9J9OcbhTbHSew/oBu3XQX6tA/ZlmPXEItu0BTV4iRCi', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
