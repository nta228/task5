-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 01:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starbuck`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `is_available`, `pic`) VALUES
(1, 'Skinny Flavored Latte', 5, 1, 1, 'Skinny-Flavored-Latte_tcm90-2121_w1024_n.jpg'),
(2, 'Ristretto Bianco', 6, 1, 1, 'ristretto-bianco_tcm90-24779_w1024_n.jpg'),
(3, 'Iced Skinny Flavored Latte', 7, 1, 1, 'iced-skinny-flavored-latte_tcm90-2110_w1024_n.jpg'),
(4, 'Iced Flavored Latte', 8, 1, 1, 'IcedFlavoredLatte_tcm90-2104_w1024_n.jpg'),
(5, 'Iced Caramel Macchiato', 6, 1, 1, 'IcedCaramelMacchiato-pt_tcm90-11270_w1024_n.jpg'),
(6, 'Iced Cafe Moc Ha', 7, 1, 1, 'iced-caffee-mocha_tcm90-2099_w1024_n.jpg'),
(7, 'Iced Cafe Late', 7, 1, 1, 'iced-caffee-late_tcm90-2098_w1024_n.jpg'),
(8, 'Iced Cafe Americano', 6, 1, 1, 'IcedCaffeAmericano_tcm90-2097_w1024_n.jpg'),
(9, 'Hazelnut Machhi', 6, 1, 1, 'hazelnut-macchiato_tcm90-24778_w1024_n.jpg'),
(10, 'Espresso Macchiato', 6, 1, 1, 'EspressoMacchiato_tcm90-2092_w1024_n.jpg'),
(11, 'Espresso Conpanna', 6, 1, 1, 'EspressoConPanna_tcm90-2091_w1024_n.jpg'),
(12, 'Espressco', 7, 1, 1, 'Espresso_tcm90-2090_w1024_n.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
