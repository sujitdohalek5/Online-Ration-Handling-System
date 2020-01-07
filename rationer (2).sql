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
-- Database: `rationer`
--

-- --------------------------------------------------------

--
-- Table structure for table `family_member_details`
--

CREATE TABLE `family_member_details` (
  `person_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `person_name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `relation_to_head` varchar(30) NOT NULL,
  `rationer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_member_details`
--

INSERT INTO `family_member_details` (`person_id`, `member_id`, `person_name`, `age`, `relation_to_head`, `rationer_id`) VALUES
(1, 1, 'Sanil', 25, 'Son', 1),
(2, 1, 'tfghjk', 12, 'dfg', 1),
(3, 2, 'family member', 23, 'chacha', 2);

-- --------------------------------------------------------

--
-- Table structure for table `members_details`
--

CREATE TABLE `members_details` (
  `member_id` int(11) NOT NULL,
  `rationer_id` int(11) NOT NULL,
  `member_name` varchar(20) NOT NULL,
  `family_members` int(11) NOT NULL,
  `member_address` varchar(50) NOT NULL,
  `member_contact` varchar(10) NOT NULL,
  `member_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_details`
--

INSERT INTO `members_details` (`member_id`, `rationer_id`, `member_name`, `family_members`, `member_address`, `member_contact`, `member_email`) VALUES
(1, 1, 'Aditya Karle', 3, 'Klayan East', '6985698569', 'ai@we.com'),
(2, 2, 'sujit', 2, 'b-43', '7768987699', 'sujitd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `members_stock`
--

CREATE TABLE `members_stock` (
  `member_name` varchar(20) DEFAULT NULL,
  `rationer_id` int(11) NOT NULL,
  `total_members` int(11) NOT NULL,
  `product_1_allowed` int(11) NOT NULL,
  `product_2_allowed` int(11) NOT NULL,
  `product_3_allowed` int(11) NOT NULL,
  `product_4_allowed` int(11) NOT NULL,
  `product_5_allowed` int(11) NOT NULL,
  `product_6_allowed` int(11) NOT NULL,
  `confirm` bit(1) NOT NULL DEFAULT b'0',
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_stock`
--

INSERT INTO `members_stock` (`member_name`, `rationer_id`, `total_members`, `product_1_allowed`, `product_2_allowed`, `product_3_allowed`, `product_4_allowed`, `product_5_allowed`, `product_6_allowed`, `confirm`, `member_id`) VALUES
('Aditya Karle', 1, 3, 3, 6, 3, 6, 3, 3, b'1', 1),
('sujit', 2, 2, 2, 4, 2, 4, 2, 2, b'1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `rationer_id` int(11) NOT NULL,
  `Rice` int(11) NOT NULL,
  `Wheat` int(11) NOT NULL,
  `Sugar` int(11) NOT NULL,
  `Oil` int(11) NOT NULL,
  `Pulse` int(11) NOT NULL,
  `Kerosene` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`rationer_id`, `Rice`, `Wheat`, `Sugar`, `Oil`, `Pulse`, `Kerosene`) VALUES
(1, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_contact` varchar(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `rationer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_address`, `user_contact`, `user_email`, `user_password`, `rationer_id`) VALUES
(1, 'Sujay Enyterprise', 'Vitthalwadi', '9004980633', 'sa@we.com', '000000', 1),
(2, 'Sujata D', 'Sujata enterprise', '7842820311', 'sujatad@gmail.com', 'sujata', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `family_member_details`
--
ALTER TABLE `family_member_details`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `members_details`
--
ALTER TABLE `members_details`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_contact` (`member_contact`),
  ADD UNIQUE KEY `member_email` (`member_email`);

--
-- Indexes for table `members_stock`
--
ALTER TABLE `members_stock`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_id` (`member_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD UNIQUE KEY `rationer_id` (`rationer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `rationer_id` (`rationer_id`),
  ADD UNIQUE KEY `user_contact` (`user_contact`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `family_member_details`
--
ALTER TABLE `family_member_details`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members_details`
--
ALTER TABLE `members_details`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
