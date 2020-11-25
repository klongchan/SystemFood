-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 09:40 AM
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
(3, '8', 'กระเพาหมูนิ่ม', '/RiwFood/Food/food312509.jpg', '50', 'หมู'),
(4, '$idShop', '$nameFood', '$urlPathImage', '$price', '$detail'),
(5, '8', 'ข้าวหน้าเป็ด', '/RiwFood/Food/food146341.jpg', '50', 'อร่อย'),
(8, '8', 'เป็ด', '/RiwFood/Food/food819309.jpg', '40', 'อร่อย'),
(10, '13', 'เตี๋ยวเป็ดบ่าง', '/RiwFood/Food/food497976.jpg', '50', 'อร่อยเยอะ'),
(12, '10', 'เตี๋ยวเป็ดบ่าง', '/RiwFood/Food/food497976.jpg', '50', 'อร่อยเยอะ'),
(14, '7', 'ข้าวเป็ดกระเทียม', '/RiwFood/Food/food161480.jpg', '60', 'อร่อย');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `id` int(11) NOT NULL,
  `OrderDateTime` text COLLATE utf8_unicode_ci NOT NULL,
  `idUser` text COLLATE utf8_unicode_ci NOT NULL,
  `NameUser` text COLLATE utf8_unicode_ci NOT NULL,
  `idShop` text COLLATE utf8_unicode_ci NOT NULL,
  `NameShop` text COLLATE utf8_unicode_ci NOT NULL,
  `Distance` text COLLATE utf8_unicode_ci NOT NULL,
  `Transport` text COLLATE utf8_unicode_ci NOT NULL,
  `idFood` text COLLATE utf8_unicode_ci NOT NULL,
  `NameFood` text COLLATE utf8_unicode_ci NOT NULL,
  `Price` text COLLATE utf8_unicode_ci NOT NULL,
  `Amount` text COLLATE utf8_unicode_ci NOT NULL,
  `Sum` text COLLATE utf8_unicode_ci NOT NULL,
  `idRider` text COLLATE utf8_unicode_ci NOT NULL,
  `Status` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`id`, `OrderDateTime`, `idUser`, `NameUser`, `idShop`, `NameShop`, `Distance`, `Transport`, `idFood`, `NameFood`, `Price`, `Amount`, `Sum`, `idRider`, `Status`) VALUES
(1, '2020-11-25 15:38', '6', 'Flutter1', '8', 'ก๋วยเตี๋ยว เรือเจ้าเก่า ครัวแม่ฉิม', '2.87', '55', '[3, 5]', '[กระเพาหมูนิ่ม, ข้าวหน้าเป็ด]', '[50, 50]', '[1, 1]', '[50, 50]', 'none', 'UserOrder'),
(2, '2020-11-25 15:39', '6', 'Flutter1', '13', 'ก๋วยเตี๋ยวหมูต้มยำ', '2.55', '55', '[10]', '[เตี๋ยวเป็ดบ่าง]', '[50]', '[1]', '[50]', 'none', 'UserOrder');

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
(7, 'Shop', 'flutter2', 'f2', '1234', 'ริว เป็ด ตุ๋น', '1234\r\nกม.8 รามอินทรา', '', '', '13.836578', '100.662080', ''),
(8, 'Shop', 'Test123', 'nodi', '123456', 'ก๋วยเตี๋ยว เรือเจ้าเก่า ครัวแม่ฉิม', 'ปัญญา  P4', '123456', '/RiwFood/shop/editShop4582.jpg', '13.836197', '100.688439', ''),
(9, 'Rider', 'rider', 'rider5', '1234', '', '', '', '', '', '', ''),
(10, 'Shop', 'มาสเตอร์เจ้าของร้าน', 'mastershop', '123456', 'ริวเป็ดย่าง', '45 นวมินทร์', '1234567', '/RiwFood/shop/shop729402.jpg', '13.838918', '100.661513', ''),
(13, 'Shop', 'Testshop1', 'shop1', '1234', 'ก๋วยเตี๋ยวหมูต้มยำ', 'ปัญญา', '123456', '/RiwFood/shop/shop37724.jpg', '13.836171', '100.685474', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodtable`
--
ALTER TABLE `foodtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
