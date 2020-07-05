-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 28, 2019 lúc 06:31 AM
-- Phiên bản máy phục vụ: 5.7.26
-- Phiên bản PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bus`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE IF NOT EXISTS `bus` (
  `idBus` int(11) NOT NULL AUTO_INCREMENT,
  `departure` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `destination` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `category` text COLLATE utf8_bin NOT NULL,
  `Kilomet` varchar(10) COLLATE utf8_bin NOT NULL,
  `time` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `trip` varchar(5) COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`idBus`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `bus`
--

INSERT INTO `bus` (`idBus`, `departure`, `destination`, `category`, `Kilomet`, `time`, `trip`, `price`) VALUES
(1, 'TPHCM', 'Can Tho', 'Giường', '167', '7:00', '1', 150000),
(2, 'TPHCM', 'Da Lat', 'Giường', '320', '2:00', '1', 240000),
(3, 'TPHCM', 'Buon Me Thuot', 'Giường', '435', '18:00', '1', 700000),
(4, 'TPHCM', 'Nha Trang', 'Giường', '427', '5:00', '1', 240000),
(5, 'TPHCM', 'Da Nang', 'Giường', '851', '23:00', '1', 375000),
(6, 'TPHCM', 'Vung Tau', 'Ghế', '95', '2:30', '1', 115000),
(7, 'TPHCM', 'Tra Vinh', 'Giường', '133', '3:30', '1', 115000),
(8, 'TPHCM', 'Ha Tien', 'Giường', '316', '8:30', '1', 185000),
(9, 'TPHCM', 'Ca Mau', 'Giường', '303', '8:00', '1', 210000),
(10, 'TPHCM', 'Hue', 'Giường', '943', '19:00', '1', 380000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seat`
--

DROP TABLE IF EXISTS `seat`;
CREATE TABLE IF NOT EXISTS `seat` (
  `idSeat` varchar(11) COLLATE utf8_bin NOT NULL,
  `idBus` int(11) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `seatName` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idSeat`),
  KEY `fk_idBus_seat_idx` (`idBus`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `seat`
--

INSERT INTO `seat` (`idSeat`, `idBus`, `status`, `seatName`) VALUES
('1_1', 10, '', '1_1'),
('1_2', 10, '', '1_2'),
('1_4', 10, '', 'A3'),
('1_5', 10, '', 'A4'),
('2_1', 10, '', 'A5'),
('2_2', 10, '', 'A6'),
('2_4', 10, '', 'A7'),
('2_5', 10, '', 'A8'),
('3_1', 10, '', 'A9'),
('3_2', 10, '', 'A10'),
('3_4', 10, '', 'A11'),
('3_5', 10, '', 'A12'),
('4_1', 10, '', 'A13'),
('4_2', 10, '', 'A14'),
('4_4', 10, '', 'A15'),
('4_5', 10, '', 'A16'),
('5_1', 10, '', 'A17'),
('5_2', 10, '', 'A18'),
('5_4', 10, '', 'A19'),
('5_5', 10, '', 'A20'),
('6_1', 10, '', 'A21'),
('6_2', 10, '', 'A22'),
('6_4', 10, '', 'A23'),
('6_5', 10, '', 'A24'),
('7_1', 10, '', 'A25'),
('7_2', 10, '', 'A26'),
('7_4', 10, '', 'A27'),
('7_5', 10, '', 'A28'),
('8_1', 10, '', 'A29'),
('8_2', 10, '', 'A30'),
('8_4', 10, '', 'A31'),
('8_5', 10, '', 'A32'),
('9_1', 10, '', 'A33'),
('9_2', 10, '', 'A34'),
('9_3', 10, '', 'A35'),
('9_4', 10, '', 'A36'),
('9_5', 10, '', 'A37'),
('10_1', 2, NULL, ''),
('10_2', 2, NULL, ''),
('10_4', 2, NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `idTicket` int(11) NOT NULL AUTO_INCREMENT,
  `departure` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `destination` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `time` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trip` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `idBus` int(11) DEFAULT NULL,
  `idSeat` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `date` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idTicket`),
  KEY `fk_idBus_ticket_idx` (`idBus`),
  KEY `fk_idUsers_ticket_idx` (`idUser`),
  KEY `fk_idSeat_ticket_idx` (`idSeat`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `ticket`
--

INSERT INTO `ticket` (`idTicket`, `departure`, `destination`, `Phone`, `time`, `trip`, `price`, `idBus`, `idSeat`, `idUser`, `date`, `status`) VALUES
(89, 'TPHCM', 'Nha Trang', '035987789', '5:00', NULL, '240000', 4, '8_2', 29, '2019-11-15', '0'),
(64, 'TPHCM', 'Buon Me Thuot', '0359879874', '18:00', NULL, '700000', 3, '6_2', 29, '2019-11-14', '0'),
(63, 'TPHCM', 'Buon Me Thuot', '0359879874', '18:00', NULL, '700000', 3, '5_1', 29, '2019-11-14', '0'),
(62, 'TPHCM', 'Buon Me Thuot', '0359879874', '18:00', NULL, '700000', 3, '5_4', 29, '2019-11-23', '0'),
(61, 'TPHCM', 'Buon Me Thuot', '0359879874', '18:00', NULL, '700000', 3, '3_4', 29, '2019-11-23', '0'),
(60, 'TPHCM', 'Buon Me Thuot', '0359879874', '18:00', NULL, '700000', 3, '3_5', 29, '2019-11-23', '1'),
(59, 'TPHCM', 'Buon Me Thuot', '0359879874', '18:00', NULL, '700000', 3, '4_5', 29, '2019-11-23', '1'),
(58, 'TPHCM', 'Buon Me Thuot', '0359879874', '18:00', NULL, '700000', 3, '2_5', 29, '2019-11-16', '1'),
(57, 'TPHCM', 'Buon Me Thuot', '0359879874', '18:00', NULL, '700000', 3, '2_4', 29, '2019-11-16', '0'),
(96, 'TPHCM', 'Hue', '035987789', '19:00', NULL, '380000', 10, '5_2', 29, '2019-11-30', '1'),
(95, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '6_2', 29, '2019-11-16', '1'),
(94, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '6_1', 29, '2019-11-16', '1'),
(93, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '2_5', 29, '2019-11-16', '1'),
(92, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '2_4', 29, '2019-11-16', '1'),
(91, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '2_1', 29, '2019-11-16', '1'),
(90, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '2_2', 29, '2019-11-16', '1'),
(67, 'TPHCM', 'Nha Trang', '0359879874', '5:00', NULL, '240000', 4, '6_1', 29, '2019-11-29', '1'),
(68, 'TPHCM', 'Nha Trang', '0359879874', '5:00', NULL, '240000', 4, '6_2', 29, '2019-11-29', '1'),
(69, 'TPHCM', 'Da Nang', '0358866477', '23:00', NULL, '375000', 5, '3_1', 32, '2019-11-30', '0'),
(70, 'TPHCM', 'Da Nang', '0358866477', '23:00', NULL, '375000', 5, '3_2', 32, '2019-11-30', '1'),
(71, 'TPHCM', 'Da Nang', '0358866477', '23:00', NULL, '375000', 5, '4_2', 32, '2019-11-30', '1'),
(72, 'TPHCM', 'Vung Tau', '0358866477', '2:30', NULL, '115000', 6, '8_1', 32, '2019-11-29', '1'),
(73, 'TPHCM', 'Nha Trang', '0359879874', '5:00', NULL, '240000', 4, '7_2', 29, '2019-11-23', '1'),
(74, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '4_2', 29, '2019-11-16', '1'),
(75, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '3_2', 29, '2019-11-16', '1'),
(76, 'TPHCM', 'Da Lat', '035987789', '2:00', NULL, '240000', 2, '3_1', 29, '2019-11-16', '1'),
(101, 'TPHCM', 'Hue', '035987789', '19:00', NULL, '380000', 10, '6_5', 29, '2019-11-30', '1'),
(100, 'TPHCM', 'Hue', '035987789', '19:00', NULL, '380000', 10, '7_4', 29, '2019-11-30', '1'),
(99, 'TPHCM', 'Hue', '035987789', '19:00', NULL, '380000', 10, '6_4', 29, '2019-11-30', '1'),
(98, 'TPHCM', 'Hue', '035987789', '19:00', NULL, '380000', 10, '4_4', 29, '2019-11-30', '1'),
(97, 'TPHCM', 'Hue', '035987789', '19:00', NULL, '380000', 10, '4_2', 29, '2019-11-30', '1'),
(87, 'TPHCM', 'Tra Vinh', '035987789', '3:30', NULL, '115000', 7, '3_4', 29, '2019-11-30', '1'),
(88, 'TPHCM', 'Tra Vinh', '035987789', '3:30', NULL, '115000', 7, '2_5', 29, '2019-11-30', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `fullName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `phoneNum` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  KEY `fk_idRoles_idx` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`idUser`, `username`, `password`, `fullName`, `gender`, `address`, `phoneNum`, `role`, `email`) VALUES
(29, 'hau123', '12344', 'Lu Hau', 'Nam', '31 Bach Dang, P.4, Q. Tan Binh', '035987789', 'Customer', 'hainguyen@gmail.com'),
(28, 'duy123', '1234', 'Nguyen Tu Duy', 'Nam', '391A Nam Ki Khoi Nghia, P.7, Q.3', '0984516623', 'Customer', 'duynguyen@gmail.com'),
(27, 'phuongmai', '123456', 'Vo Thi Phuong Mai', 'Nu', '67 Pham Van Dong, P.5, Go Vap', '098491267', 'Customer', 'mainguyen@gmail.com'),
(24, 'admin', 'admin', 'Nguyen Van B', 'Nam', '778 Nguyen Kiem, P.4, Go Vap', '0358866477', 'Admin', 'phuongmai@gmail.com'),
(25, 'NV01', '123', 'Nguyen Thi Hoa', 'Nu', '312 Quang Trung, P.10, Go Vap', '0984912665', 'Seller', 'hoanguyen@gmail.com'),
(26, 'NV02 ', '1234', 'Tran Thi Lan', 'Nu', '38 Hoang Hoa Tham, P.10, Tan Binh', '0357755499', 'Customer', 'lantranthi@gmail.com'),
(31, 'NV04', '1234', 'Nguyen Minh Thi', 'Nu', '778/1E Nguyen Kiem, P.4 Go Vap', '0358866477', 'Customer', 'phuongmai131019@gmail.com'),
(33, 'hoa123', '123', 'ngoc hoa', 'Nu', 'Tan Binh', '0356118848', 'Customer', 'hoa@gmail.com'),
(32, 'anhnguyen123', '1234', 'Nguyen Van Anh', 'Nam', '788 Nguyen Kiem', '0358866477', 'Customer', 'vananh@gmail.com'),
(34, 'hoamai', '123', 'Hoa Mai ', 'Nu', 'Go Vap, HCM', '0909111222', 'Customer', 'phuongmai131019@gmail.com'),
(35, 'nguyen123', '12345', 'nguyen thi B', 'Nu', '778/1E', '0358866477', 'Customer', 'phuongmai131019@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
