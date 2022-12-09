-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 07:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csv_import_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(150) NOT NULL COMMENT 'Name',
  `email` varchar(255) NOT NULL COMMENT 'Email',
  `phone` varchar(250) NOT NULL COMMENT 'Phone',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date Created'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Student table';

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `created_at`) VALUES
(1, 'Sam Coury', ' christine1998@yahoo.com', ' 772-267-3636', '0000-00-00 00:00:00'),
(2, 'Chris Ellis', ' ellis@yahoo.com', ' 270-562-2304', '0000-00-00 00:00:00'),
(4, 'Howard Schlueter', ' schlueter@gmail.com', ' 828-207-1592', '0000-00-00 00:00:00'),
(6, 'Ancent', 'ancent@gmail.com', '45667776888777', '2022-11-30 17:39:33'),
(7, 'Dennis', 'dennis@gmail.com', '45667778888777', '2022-11-30 17:40:49'),
(8, 'MWalyo', 'mwas@gmail.com', '0765786998', '2022-11-30 18:03:19'),
(9, 'MWao', 'mwar@gmail.com', '0765786998', '2022-12-08 12:24:00'),
(10, 'Isaac', 'mukuvi@coom', '444245255542', '2022-12-08 13:31:16'),
(11, 'MWo', 'mwacr@gmail.com', '07654786998', '2022-12-08 13:31:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
