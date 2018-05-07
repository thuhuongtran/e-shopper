-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2017 at 06:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

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
  `admin_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_pass`) VALUES
(1, 'Jane', 'jane'),
(2, 'Bill', 'bill');

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
  `custom_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_province` varchar(80) NOT NULL,
  `custom_district` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custom_id`, `custom_pass`, `custom_email`, `custom_name`, `custom_phone`, `custom_address`, `custom_province`, `custom_district`) VALUES
(1, 'hakhfa665', 'huadd@mail.com', 'Huaad Edda', '066565152', '2 Co Viet, Duc Thu', 'Ho Chi Minh', 'Bih Tan'),
(2, 'hjayad78', 'jayadd@mail.com', 'Jayy Jean', '065987412', '654 Bin Twes', 'Ha Noi', 'Thu Duc'),
(3, 'uonnea89', 'unoeea@mail.com', 'Unoo Enau', '098547412', '56 Hagda', 'Ha Noi', 'Ninh Tan'),
(4, 'heahd89', 'enaad@mail.com', 'Enadd Unea', '032651478', '878 Thyw Nsad', 'New York', 'Wall'),
(5, 'onaead56', 'omaega@mail.com', 'Omega Six', '0326598412', '654 Hwas', 'Da Nang', 'Thuan '),
(6, 'huahada565', 'addam@mail.com', 'Adam Eva', '0326598712', '765 Hungad', 'Can Tho', 'Huad Hsad'),
(7, 'nuiaaa20', 'nullaj@mail.com', 'Null numaa', '032659874', '979 Thwas Outah', 'Neyw Nowrs', 'Nyeas'),
(8, 'eadafa78', 'jacklon@mail.com', 'Jack london', '032659874', '87/8 Hyara ', 'Jiu Lin', 'Edma Oia'),
(9, 'londoan673', 'jowling@mail.com', 'Jowling', '0326514897', '676 Hueta', 'Pohtad Tah', 'Kuei Uaia'),
(10, 'uohahff89', 'hejjea@mail.com', 'Hea Jean', '032659871', '56 Htuad Edaw', 'OhWad Jun', 'Jhe Heiy'),
(11, 'jdajjala90', 'beanbill@mail.com', 'Bill Clinton', '0326598741', '78 Yee ASD', 'Phea Jeaa', 'Njue Nee'),
(12, 'huhafah22', 'johnbill@mail.com', 'John Bill', '0326589744', '787 Yeaa', 'Huha Juan', 'Kean'),
(13, 'hueada22', 'hueaa@mail.com', 'Huaad Edda', '0659874152', '', '', ''),
(14, '', 'sarah@mail.com', 'Sara Smith', '0326589321', '65 Hoan Kiem', 'Ho Chi Minh', 'Hai Ba Trung'),
(15, '', 'gatebill@mail.com', 'Bill gates', '0986514523', '36 Wall Street', 'Ha Noi', 'Hoan Kiem'),
(17, '', 'rich@mail.com', 'Hanson Rich', '0985641236', '56 New York', 'Hai Phong', 'Hoan Kiem'),
(18, '', 'rich@mail.com', 'Hanson Rich', '0985641236', '34 Hang Bai', 'Ho Chi Minh', 'Hai Ba Trung'),
(19, '', 'hanson@mail.com', 'Richard Hanson', '09856471236', '26 street', 'Da Nang', 'Hai Ba Trung'),
(20, '', 'enaad@mail.com', 'Enadd Unea', '032651478', '54 Saea Haa', 'Ha Noi', 'Hoan Kiem'),
(21, '', 'enaad@mail.com', 'Enadd Unea', '032651478', '56   hunne fane', 'Ha Noi', 'Hoan Kiem'),
(22, '', 'johnbill@mail.com', 'John Bill', '0326589744', '787 Yeaa', 'Ha Noi', 'Hai Ba Trung'),
(23, '', 'omaega@mail.com', 'Omega Six', '0326598412', '654 Hwas', 'Da Nang', 'Hai Ba Trung'),
(24, '', 'nullaj@mail.com', 'Null numaa', '032659874', '979 Thwas Outah', 'Da Nang', 'Hoan Kiem'),
(25, '', 'hunae@mail.com', 'Hunaae Hina', '0326556984', '98 Wall Street', 'Da Nang', 'Hai Ba Trung'),
(26, '', 'addam@mail.com', 'Adam Eva', '0326598712', '765 Hungad', 'Ha Noi', 'Hai Ba Trung'),
(27, '123456789', 'admin@gmail.com', 'superadmin', '123456789', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `number` int(6) NOT NULL,
  `amount` int(15) NOT NULL,
  `custom_id` int(10) NOT NULL,
  `Date` date NOT NULL,
  `ord_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `product_id`, `number`, `amount`, `custom_id`, `Date`, `ord_status`) VALUES
(2, 15, 3, 789, 6, '2017-07-10', 1),
(3, 7, 2, 587, 2, '2017-07-18', 1),
(4, 4, 1, 223, 7, '2017-07-05', 1),
(5, 9, 2, 544, 8, '2017-07-16', 1),
(6, 3, 3, 400, 11, '2017-07-18', 1),
(7, 15, 5, 1152, 6, '2017-07-17', 1),
(8, 17, 1, 211, 6, '2017-06-09', 1),
(9, 17, 1, 50, 1, '2017-07-05', 1),
(10, 9, 1, 142, 8, '2017-06-13', 1),
(11, 14, 8, 564, 7, '2017-06-07', 1),
(12, 14, 5, 2102, 2, '2017-05-25', 1),
(13, 15, 3, 789, 6, '2017-05-26', 1),
(14, 7, 1, 49, 15, '2017-07-18', 1),
(15, 4, 1, 320, 4, '2017-07-13', 1),
(16, 5, 1, 28, 4, '2017-07-02', 1),
(17, 5, 1, 28, 5, '2017-07-18', 1),
(18, 3, 1, 28, 5, '2017-07-18', 1),
(19, 6, 1, 320, 5, '2017-07-18', 1),
(20, 7, 2, 98, 7, '2017-07-18', 1),
(22, 11, 4, 1044, 7, '2017-07-18', 1),
(24, 9, 4, 196, 25, '2017-07-19', 0),
(25, 4, 1, 320, 6, '2017-07-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_image_link` varchar(250) NOT NULL,
  `product_stock` int(10) NOT NULL,
  `product_category` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_image_link`, `product_stock`, `product_category`) VALUES
(3, 'Praesent tempor sem', 28, '/e-shopper/assets/themes/images/ladies/8.jpg', 10, 'women'),
(4, 'Wuam ultrices rutrum', 320, '/e-shopper/assets/themes/images/ladies/7.jpg', 10, 'women'),
(5, 'Praesent tempor sem', 28, '/e-shopper/assets/themes/images/ladies/5.jpg', 10, ''),
(6, 'Wuam ultrices rutrum', 320, '/e-shopper/assets/themes/images/ladies/4.jpg', 10, ''),
(7, 'Praesent tempor sem sodales', 49, '/e-shopper/assets/themes/images/ladies/6.jpg', 5, ''),
(8, 'Fusce id molestie massa', 35, '/e-shopper/assets/themes/images/ladies/1.jpg', 2, ''),
(9, 'Praesent tempor sem sodales', 49, '/e-shopper/assets/themes/images/ladies/2.jpg', 5, ''),
(10, 'Fusce id molestie massa', 35, '/e-shopper/assets/themes/images/ladies/1.jpg', 2, ''),
(11, 'Luctus quam ultrices', 261, '/e-shopper/assets/themes/images/ladies/3.jpg', 5, ''),
(12, 'Phasellus consequat', 562, '/e-shopper/assets/themes/images/ladies/10.jpg', 1, ''),
(13, 'Erat gravida', 52, '/e-shopper/assets/themes/images/ladies/11.jpg', 56, ''),
(14, 'Suspendisse aliquet', 54, '/e-shopper/assets/themes/images/ladies/12.jpg', 17, ''),
(15, 'Nam imperdiet', 15, '/e-shopper/assets/themes/images/ladies/14.jpg', 5, ''),
(16, 'Congue diam congue', 58, '/e-shopper/assets/themes/images/ladies/15.jpg', 10, 'Men'),
(17, 'Phasellus consequat', 562, '/e-shopper/assets/themes/images/ladies/16.jpg', 1, 'Men'),
(19, 'Suspendisse aliquet', 54, '/e-shopper/assets/themes/images/ladies/18.jpg', 17, 'Men'),
(20, 'Nam imperdiet', 15, '/e-shopper/assets/themes/images/ladies/19.jpg', 5, 'Men'),
(21, 'Congue diam congue', 58, '/e-shopper/assets/themes/images/ladies/13.jpg', 10, ''),
(22, 'Hasse ide Maasse', 250, '/e-shopper/assets/themes/images/ladies/17.jpg', 25, ''),
(23, 'Phimeo Mmea had', 300, '/e-shopper/assets/themes/images/ladies/9.jpg', 15, '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(15) NOT NULL,
  `order_id` int(10) NOT NULL,
  `custom_id` int(10) NOT NULL,
  `amount` int(15) NOT NULL,
  `created` date NOT NULL,
  `status` int(1) NOT NULL,
  `product_id` int(10) NOT NULL,
  `prod_name` varchar(60) NOT NULL,
  `prod_img_link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `order_id`, `custom_id`, `amount`, `created`, `status`, `product_id`, `prod_name`, `prod_img_link`) VALUES
(1, 3, 1, 587, '2017-06-06', 1, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(2, 4, 7, 223, '2017-07-18', 1, 4, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/7.jpg'),
(3, 5, 8, 544, '2017-06-05', 1, 9, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/2.jpg'),
(4, 6, 11, 400, '2017-05-17', 1, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(5, 7, 6, 1152, '2017-07-14', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(6, 8, 6, 211, '2017-06-06', 1, 17, 'Phasellus consequat', '/e-shopper/assets/themes/images/ladies/16.jpg'),
(7, 9, 1, 50, '2017-07-18', 1, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(8, 10, 8, 142, '2017-06-05', 1, 9, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/2.jpg'),
(9, 1, 2, 789, '2017-05-17', 1, 14, 'Suspendisse aliquet', '/e-shopper/assets/themes/images/ladies/12.jpg'),
(10, 2, 6, 2102, '2017-07-14', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(11, 3, 2, 587, '2017-07-18', 0, 7, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/6.jpg'),
(12, 5, 8, 544, '2017-07-16', 0, 9, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/2.jpg'),
(13, 6, 11, 400, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(14, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(15, 14, 15, 49, '2017-07-18', 0, 7, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/6.jpg'),
(16, 15, 4, 320, '2017-07-13', 0, 4, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/7.jpg'),
(17, 3, 2, 587, '2017-07-18', 0, 7, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/6.jpg'),
(18, 5, 8, 544, '2017-07-16', 0, 9, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/2.jpg'),
(19, 6, 11, 400, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(20, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(21, 14, 15, 49, '2017-07-18', 0, 7, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/6.jpg'),
(22, 15, 4, 320, '2017-07-13', 0, 4, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/7.jpg'),
(23, 6, 11, 400, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(24, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(25, 14, 15, 49, '2017-07-18', 0, 7, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/6.jpg'),
(26, 15, 4, 320, '2017-07-13', 0, 4, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/7.jpg'),
(27, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(28, 14, 15, 49, '2017-07-18', 0, 7, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/6.jpg'),
(29, 15, 4, 320, '2017-07-13', 0, 4, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/7.jpg'),
(30, 14, 15, 49, '2017-07-18', 0, 7, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/6.jpg'),
(31, 15, 4, 320, '2017-07-13', 0, 4, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/7.jpg'),
(32, 15, 4, 320, '2017-07-13', 0, 4, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/7.jpg'),
(33, 2, 6, 789, '2017-07-10', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(34, 6, 11, 400, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(35, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(36, 9, 1, 50, '2017-07-05', 0, 17, 'Phasellus consequat', '/e-shopper/assets/themes/images/ladies/16.jpg'),
(37, 6, 11, 400, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(38, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(39, 9, 1, 50, '2017-07-05', 0, 17, 'Phasellus consequat', '/e-shopper/assets/themes/images/ladies/16.jpg'),
(40, 6, 11, 400, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(41, 9, 1, 50, '2017-07-05', 0, 17, 'Phasellus consequat', '/e-shopper/assets/themes/images/ladies/16.jpg'),
(42, 9, 1, 50, '2017-07-05', 0, 17, 'Phasellus consequat', '/e-shopper/assets/themes/images/ladies/16.jpg'),
(43, 5, 8, 544, '2017-07-16', 0, 9, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/2.jpg'),
(44, 6, 11, 400, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(45, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(46, 6, 11, 400, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(47, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(48, 7, 6, 1152, '2017-07-17', 0, 15, 'Nam imperdiet', '/e-shopper/assets/themes/images/ladies/14.jpg'),
(49, 17, 5, 28, '2017-07-18', 0, 5, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/5.jpg'),
(50, 18, 5, 28, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(51, 19, 5, 320, '2017-07-18', 0, 6, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/4.jpg'),
(52, 18, 5, 28, '2017-07-18', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(53, 19, 5, 320, '2017-07-18', 0, 6, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/4.jpg'),
(54, 19, 5, 320, '2017-07-18', 0, 6, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/4.jpg'),
(55, 20, 7, 98, '2017-07-18', 0, 7, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/6.jpg'),
(56, 21, 7, 1600, '2017-07-18', 0, 6, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/4.jpg'),
(57, 22, 7, 1044, '2017-07-18', 0, 11, 'Luctus quam ultrices', '/e-shopper/assets/themes/images/ladies/3.jpg'),
(58, 22, 7, 1044, '2017-07-18', 0, 11, 'Luctus quam ultrices', '/e-shopper/assets/themes/images/ladies/3.jpg'),
(59, 23, 25, 84, '2017-07-19', 0, 3, 'Praesent tempor sem', '/e-shopper/assets/themes/images/ladies/8.jpg'),
(60, 24, 25, 196, '2017-07-19', 0, 9, 'Praesent tempor sem sodales', '/e-shopper/assets/themes/images/ladies/2.jpg'),
(61, 25, 6, 320, '2017-07-19', 0, 4, 'Wuam ultrices rutrum', '/e-shopper/assets/themes/images/ladies/7.jpg');

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
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custom_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*financefree..-skype cosmo*/;
