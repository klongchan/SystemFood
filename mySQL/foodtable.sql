-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2020 at 08:07 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodtable`
--
ALTER TABLE `foodtable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foodtable`
--
ALTER TABLE `foodtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
