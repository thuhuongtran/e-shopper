-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2017 at 12:59 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-shopper`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_pass` varchar(50) NOT NULL,
  `admin_role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custom_id` int(10) NOT NULL,
  `custom_pass` varchar(50) NOT NULL,
  `custom_email` varchar(60) NOT NULL,
  `custom_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_phone` varchar(15) NOT NULL,
  `custom_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(10) NOT NULL,
  `transaction_id` int(15) NOT NULL,
  `product_id` int(10) NOT NULL,
  `number` int(6) NOT NULL,
  `amount` int(15) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_image_link` varchar(250) NOT NULL,
  `product_stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_image_link`, `product_stock`) VALUES
(1, 'Fusce id molestie massa', 341, '/e-shopper/assets/themes/images/ladies/9.jpg', 20),
(3, 'Praesent tempor sem', 28, '/e-shopper/assets/themes/images/ladies/8.jpg', 10),
(4, 'Wuam ultrices rutrum', 320, '/e-shopper/assets/themes/images/ladies/7.jpg', 10),
(5, 'Praesent tempor sem', 28, '/e-shopper/assets/themes/images/ladies/5.jpg', 10),
(6, 'Wuam ultrices rutrum', 320, '/e-shopper/assets/themes/images/ladies/4.jpg', 10),
(7, 'Praesent tempor sem sodales', 49, '/e-shopper/assets/themes/images/ladies/6.jpg', 5),
(8, 'Fusce id molestie massa', 35, '/e-shopper/assets/themes/images/ladies/1.jpg', 2),
(9, 'Praesent tempor sem sodales', 49, '/e-shopper/assets/themes/images/ladies/2.jpg', 5),
(10, 'Fusce id molestie massa', 35, '/e-shopper/assets/themes/images/ladies/1.jpg', 2),
(11, 'Luctus quam ultrices', 261, '/e-shopper/assets/themes/images/ladies/3.jpg', 5),
(12, 'Phasellus consequat', 562, '/e-shopper/assets/themes/images/ladies/10.jpg', 1),
(13, 'Erat gravida', 52, '/e-shopper/assets/themes/images/ladies/11.jpg', 56),
(14, 'Suspendisse aliquet', 54, '/e-shopper/assets/themes/images/ladies/12.jpg', 17),
(15, 'Nam imperdiet', 15, '/e-shopper/assets/themes/images/ladies/14.jpg', 5),
(16, 'Congue diam congue', 58, '/e-shopper/assets/themes/images/ladies/15.jpg', 10),
(17, 'Phasellus consequat', 562, '/e-shopper/assets/themes/images/ladies/16.jpg', 1),
(18, 'Erat gravida', 52, '/e-shopper/assets/themes/images/ladies/17.jpg', 56),
(19, 'Suspendisse aliquet', 54, '/e-shopper/assets/themes/images/ladies/18.jpg', 17),
(20, 'Nam imperdiet', 15, '/e-shopper/assets/themes/images/ladies/19.jpg', 5),
(21, 'Congue diam congue', 58, '/e-shopper/assets/themes/images/ladies/13.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(15) NOT NULL,
  `order_id` int(10) NOT NULL,
  `custom_id` int(10) NOT NULL,
  `custom_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_phone` varchar(15) NOT NULL,
  `custom_email` varchar(60) NOT NULL,
  `amount` int(15) NOT NULL,
  `created` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custom_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custom_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(15) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
