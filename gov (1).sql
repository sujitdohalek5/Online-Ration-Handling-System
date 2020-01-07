-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 07:35 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gov`
--

-- --------------------------------------------------------

--
-- Table structure for table `rationer_details`
--

CREATE TABLE `rationer_details` (
  `rationer_id` int(11) NOT NULL,
  `rationer_name` varchar(20) NOT NULL,
  `rationer_address` varchar(50) NOT NULL,
  `rationer_area` varchar(30) NOT NULL,
  `rationer_contact` varchar(10) NOT NULL,
  `rationer_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rationer_details`
--

INSERT INTO `rationer_details` (`rationer_id`, `rationer_name`, `rationer_address`, `rationer_area`, `rationer_contact`, `rationer_email`) VALUES
(1, 'Sujay Enyterprise', 'Vitthalwadi', 'Kalyan', '9004980633', 'sa@we.com'),
(2, 'Sujata D', 'Sujata enterprise', 'Sujata Nagar', '7842820311', 'sujatad@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rationer_stock`
--

CREATE TABLE `rationer_stock` (
  `rationer_name` varchar(20) DEFAULT NULL,
  `rationer_area` varchar(20) DEFAULT NULL,
  `total_members` int(11) NOT NULL,
  `product_1_allowed` int(11) NOT NULL,
  `product_1_remain` int(11) NOT NULL,
  `product_1_total` int(11) NOT NULL,
  `product_2_allowed` int(11) NOT NULL,
  `product_2_remain` int(11) NOT NULL,
  `product_2_total` int(11) NOT NULL,
  `product_3_allowed` int(11) NOT NULL,
  `product_3_remain` int(11) NOT NULL,
  `product_3_total` int(11) NOT NULL,
  `product_4_allowed` int(11) NOT NULL,
  `product_4_remain` int(11) NOT NULL,
  `product_4_total` int(11) NOT NULL,
  `product_5_allowed` int(11) NOT NULL,
  `product_5_remain` int(11) NOT NULL,
  `product_5_total` int(11) NOT NULL,
  `product_6_allowed` int(11) NOT NULL,
  `product_6_remain` int(11) NOT NULL,
  `product_6_total` int(11) NOT NULL,
  `confirm` bit(1) NOT NULL,
  `rationer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rationer_stock`
--

INSERT INTO `rationer_stock` (`rationer_name`, `rationer_area`, `total_members`, `product_1_allowed`, `product_1_remain`, `product_1_total`, `product_2_allowed`, `product_2_remain`, `product_2_total`, `product_3_allowed`, `product_3_remain`, `product_3_total`, `product_4_allowed`, `product_4_remain`, `product_4_total`, `product_5_allowed`, `product_5_remain`, `product_5_total`, `product_6_allowed`, `product_6_remain`, `product_6_total`, `confirm`, `rationer_id`) VALUES
('Sujay Enyterprise', 'Kalyan', 3, 3, 0, 3, 6, 0, 6, 3, 0, 3, 6, 0, 6, 3, 0, 3, 3, 0, 3, b'1', 1),
('Sujata D', 'Sujata Nagar', 2, 2, 0, 2, 4, 0, 4, 2, 0, 2, 4, 0, 4, 2, 0, 2, 2, 0, 2, b'1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`product_id`, `product_name`, `product_quantity`) VALUES
(1, 'rice', 329),
(2, 'wheat', 329),
(3, 'sugar', 329),
(4, 'pulse', 329),
(5, 'oil', 329),
(6, 'kerosene', 329);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_contact` varchar(10) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_address`, `user_contact`, `user_email`, `user_password`) VALUES
(1, 'Sujit Dohale', 'Murbad, Maharashtra', '7768026045', 'sujitdohalek5@gmail.com', 'sujitdohale');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rationer_details`
--
ALTER TABLE `rationer_details`
  ADD PRIMARY KEY (`rationer_id`),
  ADD UNIQUE KEY `rationer_contact` (`rationer_contact`),
  ADD UNIQUE KEY `rationer_email` (`rationer_email`);

--
-- Indexes for table `rationer_stock`
--
ALTER TABLE `rationer_stock`
  ADD UNIQUE KEY `rationer_id` (`rationer_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rationer_details`
--
ALTER TABLE `rationer_details`
  MODIFY `rationer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
