-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 08:04 AM
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
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` varchar(255) NOT NULL,
  `prodname` varchar(200) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `prodname`, `price`) VALUES
('p001', 'chocolate', 100),
('p002', 'icecream', 50);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(5) NOT NULL,
  `iname` varchar(50) NOT NULL,
  `icatagory` varchar(50) NOT NULL,
  `iprice` int(30) NOT NULL,
  `icode` int(30) NOT NULL,
  `istore` varchar(50) NOT NULL,
  `idate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `iname`, `icatagory`, `iprice`, `icode`, `istore`, `idate`) VALUES
(1, 'millk', 'drink', 300, 202001, 'Store 04', '02052021'),
(2, 'ElectricFan', 'other', 3000, 102001, 'Store 02', '01012021'),
(3, 'CFL led bulb', 'other', 300, 1002002, 'Store 02', '01012021'),
(4, 'Nivea Face Creame', 'beauty', 250, 101001, 'Store 01', '01022021'),
(5, 'Black night hair gel', 'beauty', 200, 102002, 'Store 01', '01022021'),
(6, 'potatos 1kg', 'vegetables', 210, 703001, 'Store 03', '01022021'),
(7, 'apple 1 kg', 'fruits', 600, 603001, 'Store 03', '21022021'),
(8, 'elephant house vanila ', 'food', 300, 404001, 'Store 04', '01032021'),
(9, 'coca cola 500ml', 'drinks', 120, 504001, 'Store 04', '01032021'),
(10, 'suger 1kg', 'grosery', 105, 505001, 'Store 05', '01042021'),
(11, 'zesta tea powder', 'grosery', 240, 505002, 'Store 05', '01042021'),
(12, 'tea powder', 'grozery', 250, 103004, 'Store 03', '02052021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
