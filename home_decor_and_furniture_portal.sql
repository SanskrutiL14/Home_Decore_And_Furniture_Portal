-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 07:42 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home_decor_and_furniture_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_image` varchar(255) NOT NULL,
  `company_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_image`, `company_description`) VALUES
(1, 'Adidas', 'adidas.jpg', NULL),
(2, 'Reebok', 'reebok.png', NULL),
(3, 'Fila', 'fila.png', NULL),
(4, 'Lee Cooper', 'lee.png', NULL),
(5, 'Petal', 'petal.jpeg', 'asdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_user_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_amount` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_user_id`, `order_date`, `order_amount`, `order_status`) VALUES
(1, '2', '10 January,2019 05:32:32 PM', '1170', 'Confirmed'),
(2, '2', '10 January,2019 05:33:08 PM', '1170', 'Confirmed'),
(3, '2', '10 January,2019 05:34:04 PM', '1170', 'Confirmed'),
(4, '2', '10 January,2019 05:38:26 PM', '1100', 'InTransit'),
(5, '2', '10 January,2019 05:48:36 PM', '4540', 'InTransit'),
(6, '2', '10 January,2019 05:52:49 PM', '7140', 'InTransit'),
(7, '2', '10 January,2019 05:57:06 PM', '4640', 'InTransit'),
(8, '2', '10 January,2019 06:49:22 PM', '5840', 'Confirmed'),
(9, '2', '28 September,2019 04:16:45 PM', '1200', 'Confirmed'),
(10, '2', '05 March,2023 05:29:05 AM', '3470', 'PaymentPending'),
(11, '2', '07 May,2023 05:01:12 PM', '3900', 'Confirmed'),
(12, '8', '12 December,2023 06:41:16 AM', '4800', 'Confirmed'),
(13, '2', '03 October,2024 07:00:18 PM', '0', 'Delivered'),
(14, '2', '04 October,2024 11:23:00 AM', '0', 'Delivered'),
(15, '2', '04 October,2024 01:48:58 PM', '0', 'Delivered'),
(16, '2', '05 October,2024 05:37:07 AM', '0', 'Delivered'),
(17, '2', '05 October,2024 10:53:38 AM', '4800', 'Confirmed'),
(18, '2', '05 October,2024 11:02:38 AM', '4800', 'Confirmed'),
(19, '2', '05 October,2024 01:21:44 PM', '3570', 'Confirmed'),
(20, '2', '05 October,2024 03:35:25 PM', '0', 'Pending'),
(21, '2', '08 October,2024 10:00:32 AM', '2200', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `oi_id` int(11) NOT NULL,
  `oi_order_id` varchar(255) NOT NULL,
  `oi_product_id` varchar(255) NOT NULL,
  `oi_price_per_unit` varchar(255) NOT NULL,
  `oi_cart_quantity` varchar(255) NOT NULL,
  `oi_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oi_id`, `oi_order_id`, `oi_product_id`, `oi_price_per_unit`, `oi_cart_quantity`, `oi_total`) VALUES
(3, '13', '3', '1170', '1', '1170'),
(4, '13', '5', '1170', '1', '1170'),
(5, '13', '2', '1100', '1', '1100'),
(8, '1', '3', '1170', '1', '1170'),
(9, '2', '4', '1170', '1', '1170'),
(10, '3', '3', '1170', '1', '1170'),
(11, '4', '2', '1100', '1', '1100'),
(12, '5', '2', '1100', '2', '1100'),
(13, '5', '4', '1170', '2', '1170'),
(14, '6', '3', '1170', '1', '1170'),
(17, '6', '7', '1200', '1', '1200'),
(18, '6', '8', '1200', '1', '1200'),
(19, '6', '8', '1200', '1', '1200'),
(20, '6', '4', '1170', '1', '1170'),
(21, '6', '8', '1200', '1', '1200'),
(22, '7', '6', '1170', '1', '1170'),
(23, '7', '7', '1200', '1', '1200'),
(25, '7', '4', '1170', '1', '1170'),
(26, '7', '2', '1100', '1', '1100'),
(27, '8', '2', '1100', '1', '1100'),
(28, '8', '6', '1170', '1', '1170'),
(29, '8', '3', '1170', '1', '1170'),
(30, '8', '1', '1200', '1', '1200'),
(31, '8', '8', '1200', '1', '1200'),
(32, '9', '1', '1200', '1', '1200'),
(34, '10', '8', '1200', '1', '1200'),
(35, '10', '2', '1100', '1', '1100'),
(36, '10', '4', '1170', '1', '1170'),
(37, '11', '10', '1600', '1', '1600'),
(38, '11', '2', '1100', '1', '1100'),
(39, '11', '7', '1200', '1', '1200'),
(40, '12', '10', '1600', '3', '1600'),
(44, '14', '7', '1200', '1', '1200'),
(45, '14', '2', '1100', '1', '1100'),
(46, '15', '1', '1200', '1', '1200'),
(50, '16', '', '', '1', ''),
(55, '16', '6', '1170', '3', '3510'),
(56, '16', '5', '1170', '1', '1170'),
(57, '17', '7', '1200', '4', '4800'),
(59, '18', '8', '1200', '1', '1200'),
(60, '18', '8', '1200', '1', '1200'),
(61, '18', '8', '1200', '1', '1200'),
(62, '18', '8', '1200', '1', '1200'),
(63, '19', '8', '1200', '2', '2400'),
(64, '19', '3', '1170', '1', '1170'),
(65, '20', '7', '1200', '1', '1200'),
(66, '21', '15', '2200', '1', '2200');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `os_id` int(11) NOT NULL,
  `os_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`os_id`, `os_title`) VALUES
(1, 'Confirmed'),
(2, 'InTransit'),
(3, 'Delivered'),
(4, 'Cancelled'),
(5, 'PaymentPending');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type_id` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_type_id`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Leather Sofa', '2', '120000', 'Leather Sofa.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(2, 'Metal Dinning Table', '3', '110000', 'metal-glass-dinning table.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(3, 'Mirror', '8', '117000', 'mirror.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(4, 'Metal Leaves', '8', '117000', 'Metal.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(5, 'Wall Hanging Photo', '8', '117000', 'Wall hanging.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(6, 'Wooden Bed', '1', '117000', 'Wooden Bed.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(7, 'French Door', '5', '120000', 'French Door.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(8, 'Chester Sofa', '2', '120000', 'chesterfield sofa.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(13, 'Black Wardrobe', '5', '140000', 'Black Gloss Wardrobe.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(14, 'Baby Crib', '3', '180000', 'Baby Crib.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(15, 'Printed Curtain', '6', '220', 'printed curtain.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n'),
(16, 'Cotton Bedsheet', '9', '800', 'cotton.jpg', '<p>Online Furniture items are not limited to physical goods; they also include digital downloads, subscriptions, and cloud-based services. This has opened up a wide range of opportunities for businesses, enabling them to reach global audiences. Furniture Ordering platforms and online marketplaces provide a simple and efficient way for companies to showcase their Furniture items, manage orders, and handle payments. For consumers, online food ordering offers a more personalized experience through food items recommendations, reviews, and easy access to detailed specifications. Additionally, with the growing integration of mobile apps, shopping on-the-go has never been easier. </p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Maharastra'),
(2, 'Gujrat'),
(3, 'Bihar'),
(4, 'Uttar Pradesh'),
(5, 'Delhi'),
(6, 'Haryana');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_image` varchar(255) NOT NULL,
  `type_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_image`, `type_description`) VALUES
(1, 'Bed', 'Bed.jpg', 'Explore our diverse product categories, starting with Mens Shoes, where you can find a stylish selection designed for every occasion, from casual sneakers to formal dress shoes. In the Womens Shoes category, discover trendy and elegant footwear that perfectly complements your unique style, including heels, flats, and boots.'),
(2, 'Sofa', 'Sofa.jpg', 'Explore our diverse product categories, starting with Men\'s Shoes, where you can find a stylish selection designed for every occasion, from casual sneakers to formal dress shoes. In the Women\'s Shoes category, discover trendy and elegant footwear that perfectly complements your unique style, including heels, flats, and boots.'),
(3, 'Dinning Table', 'Dinning Table.jpg', 'Explore our diverse product categories, starting with Men\'s Shoes, where you can find a stylish selection designed for every occasion, from casual sneakers to formal dress shoes. In the Women\'s Shoes category, discover trendy and elegant footwear that perfectly complements your unique style, including heels, flats, and boots.'),
(4, 'Modul Kitchen', 'Modul Kitchen.jpg', 'Explore our diverse product categories, starting with Men\'s Shoes, where you can find a stylish selection designed for every occasion, from casual sneakers to formal dress shoes. In the Women\'s Shoes category, discover trendy and elegant footwear that perfectly complements your unique style, including heels, flats, and boots.'),
(5, 'Wardrobe', 'wardrobe.jpg', 'Explore our diverse product categories, starting with Men\'s Shoes, where you can find a stylish selection designed for every occasion, from casual sneakers to formal dress shoes. In the Women\'s Shoes category, discover trendy and elegant footwear that perfectly complements your unique style, including heels, flats, and boots.'),
(6, 'Curtain', 'curtain.jpg', 'Explore our diverse product categories, starting with Men\'s Shoes, where you can find a stylish selection designed for every occasion, from casual sneakers to formal dress shoes. In the Women\'s Shoes category, discover trendy and elegant footwear that perfectly complements your unique style, including heels, flats, and boots.'),
(8, 'Wall Decor', 'walldecor.jpg', 'Explore our diverse product categories, starting with Men\'s Shoes, where you can find a stylish selection designed for every occasion, from casual sneakers to formal dress shoes. In the Women\'s Shoes category, discover trendy and elegant footwear that perfectly complements your unique style, including heels, flats, and boots.'),
(9, 'Bedsheet', 'bedsheet.jpg', 'Explore our diverse product categories, starting with Men\'s Shoes, where you can find a stylish selection designed for every occasion, from casual sneakers to formal dress shoes. In the Women\'s Shoes category, discover trendy and elegant footwear that perfectly complements your unique style, including heels, flats, and boots.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_state` varchar(255) NOT NULL,
  `user_country` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_level_id`, `user_password`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`) VALUES
(2, '2', 'test', 'Amit Kumar', 'House no : 768', 'Sector 2B', '4', '3', '1', 'amit@gmail.com', '9324324546', '', '2024-10-17', 'p1.jpg'),
(8, '1', 'test', 'Suman Singh', 'House no : 768', 'Sector 2A', '1', '2', '1', 'admin@gmail.com', '987654321', '', '13 January,1961', 'p3.jpg'),
(9, '2', 'test', 'Arun Kumar', 'House no : 768', 'Sector 2A', '1', '1', '1', 'arun@gmail.com', '987654321', '', '12 january, 2013', 'p4.jpg'),
(10, '2', 'test', 'Manasa', 'New Delhi', 'India', '2', '2', '1', 'manasa@gmail.com', '9876543212', '', '18 January,1968', 'p5.jpg'),
(11, '2', 'test', 'Aman Singh', 'Sector 120', 'Circel Road', '1', '1', '2', 'aman@gmail.com', '8978765654', '', '12 May,1999', 'p2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oi_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `oi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `os_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
