-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 10:37 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riwfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodtable`
--

CREATE TABLE `foodtable` (
  `id` int(11) NOT NULL,
  `idShop` text COLLATE utf8_unicode_ci NOT NULL,
  `NameFood` text COLLATE utf8_unicode_ci NOT NULL,
  `PathImage` text COLLATE utf8_unicode_ci NOT NULL,
  `Price` text COLLATE utf8_unicode_ci NOT NULL,
  `Detail` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `foodtable`
--

INSERT INTO `foodtable` (`id`, `idShop`, `NameFood`, `PathImage`, `Price`, `Detail`) VALUES
(1, '$idShop', '$nameFood', '$urlPathImage', '$price', '$detail'),
(2, '8', 'กระเพาเป็ด', '/RiwFood/Food/food502776.jpg', '50', 'กระเพาเป็ดเผ็ดมาก'),
(3, '8', 'กระเพาหมูกรอบ', '/RiwFood/Food/food312509.jpg', '60', 'หมูกรอบเผ็ดมาก'),
(4, '$idShop', '$nameFood', '$urlPathImage', '$price', '$detail'),
(5, '8', 'ข้าวหน้าเป็ด', '/RiwFood/Food/food146341.jpg', '50', 'อร่อย'),
(8, '8', 'เป็ดกระเทียม', '/RiwFood/Food/food819309.jpg', '60', 'อร่อย\nสะอาด\nอิ่ม');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `ChooseType` text COLLATE utf8_unicode_ci NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `User` text COLLATE utf8_unicode_ci NOT NULL,
  `Password` text COLLATE utf8_unicode_ci NOT NULL,
  `NameShop` text COLLATE utf8_unicode_ci NOT NULL,
  `Address` text COLLATE utf8_unicode_ci NOT NULL,
  `Phone` text COLLATE utf8_unicode_ci NOT NULL,
  `UrlPicture` text COLLATE utf8_unicode_ci NOT NULL,
  `Lat` text COLLATE utf8_unicode_ci NOT NULL,
  `Lng` text COLLATE utf8_unicode_ci NOT NULL,
  `Token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `ChooseType`, `Name`, `User`, `Password`, `NameShop`, `Address`, `Phone`, `UrlPicture`, `Lat`, `Lng`, `Token`) VALUES
(1, 'User', 'สมชาย', 'user1', '1234', '', '', '', '', '', '', ''),
(2, 'User', 'TestName2', 'user2', '1234', 'nameshop', 'address', 'phone', 'urlimage', 'lat', 'lng', ''),
(4, 'Shop\r\n', 'boy', 'user3', '1234', 'nameshop', 'address', 'phone', 'urlimage', 'lat', 'lng', ''),
(6, 'User', 'Flutter1', 'f1', '1234', '', '', '', '', '', '', ''),
(7, 'Shop', 'flutter2', 'f2', '1234', 'ริว เป็ด ตุ๋น', '1234\r\nกม.8 รามอินทรา', '', '', '', '', ''),
(8, 'Shop', 'Test123', 'nodi', '123456', 'ก๋วยเตี๋ยว เรือเจ้าเก่า ครัวแม่ฉิม', 'ปัญญา  P4', '123456', '/RiwFood/shop/editShop4582.jpg', '0.0', '0.0', ''),
(9, 'Rider', 'rider', 'rider5', '1234', '', '', '', '', '', '', ''),
(10, 'Shop', 'มาสเตอร์เจ้าของร้าน', 'mastershop', '123456', 'ริวเป็ดย่าง', '45 นวมินทร์', '1234567', '/RiwFood/shop/shop729402.jpg', '13.837707', '100.661942', ''),
(13, 'Shop', 'Testshop1', 'shop1', '1234', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodtable`
--
ALTER TABLE `foodtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foodtable`
--
ALTER TABLE `foodtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
