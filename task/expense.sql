-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2026 at 10:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expense`
--

-- --------------------------------------------------------

--
-- Table structure for table `d_expense_category`
--

CREATE TABLE `d_expense_category` (
  `id` int(255) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `d_expense_category`
--

INSERT INTO `d_expense_category` (`id`, `category_name`) VALUES
(1, 'clothes');

-- --------------------------------------------------------

--
-- Table structure for table `d_tracker`
--

CREATE TABLE `d_tracker` (
  `id` int(255) NOT NULL,
  `date` int(255) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `d_tracker`
--

INSERT INTO `d_tracker` (`id`, `date`, `amount`, `category`) VALUES
(1, 50226, '1000', 'clothes'),
(2, 5, '1000', '');

-- --------------------------------------------------------

--
-- Table structure for table `d_users`
--

CREATE TABLE `d_users` (
  `id` int(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `d_users`
--

INSERT INTO `d_users` (`id`, `name`, `email`, `pass`) VALUES
(1, 'diya', 'd@gmail.com', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_expense_category`
--
ALTER TABLE `d_expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_tracker`
--
ALTER TABLE `d_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_users`
--
ALTER TABLE `d_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_expense_category`
--
ALTER TABLE `d_expense_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d_tracker`
--
ALTER TABLE `d_tracker`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d_users`
--
ALTER TABLE `d_users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
