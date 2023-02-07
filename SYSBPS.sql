-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2023 at 11:34 PM
-- Server version: 10.6.11-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SYSBPS`
--

-- --------------------------------------------------------

--
-- Table structure for table `SYSBPS_AUTH`
--

CREATE TABLE `SYSBPS_AUTH` (
  `auth` varchar(100) NOT NULL,
  `captcha` varchar(6) NOT NULL,
  `kesempatan` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SYSBPS_AUTH`
--

INSERT INTO `SYSBPS_AUTH` (`auth`, `captcha`, `kesempatan`) VALUES
('3999599594', '875393', 1),
('4831788217', '354743', 2),
('5816714747', '540702', 2),
('9582661886', '518705', -1);

-- --------------------------------------------------------

--
-- Table structure for table `SYSBPS_CAPTCHA`
--

CREATE TABLE `SYSBPS_CAPTCHA` (
  `captcha` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SYSBPS_CAPTCHA`
--

INSERT INTO `SYSBPS_CAPTCHA` (`captcha`) VALUES
('719700');

-- --------------------------------------------------------

--
-- Table structure for table `SYSBPS_LOGIN`
--

CREATE TABLE `SYSBPS_LOGIN` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `auth` int(10) DEFAULT NULL,
  `kesempatan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SYSBPS_LOGIN`
--

INSERT INTO `SYSBPS_LOGIN` (`username`, `password`, `pin`, `auth`, `kesempatan`) VALUES
('admin', '321', '123456', 136579559, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SYSBPS_AUTH`
--
ALTER TABLE `SYSBPS_AUTH`
  ADD PRIMARY KEY (`auth`);

--
-- Indexes for table `SYSBPS_CAPTCHA`
--
ALTER TABLE `SYSBPS_CAPTCHA`
  ADD PRIMARY KEY (`captcha`);

--
-- Indexes for table `SYSBPS_LOGIN`
--
ALTER TABLE `SYSBPS_LOGIN`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
