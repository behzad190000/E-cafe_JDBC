-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2017 at 09:29 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `Chef_Id` int(5) NOT NULL,
  `ChefName` varchar(30) NOT NULL,
  `Status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`Chef_Id`, `ChefName`, `Status`) VALUES
(1, 'ali', 900),
(2, 'hamza', 900),
(3, 'talha', 900);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `custom_name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`custom_name`, `address`) VALUES
('behzad', 'narowal'),
('ali', 'lahore'),
('behzad', 'narowal'),
('behzad', 'kilo'),
('behzad', 'ghazali'),
('behzad', 'ghazali');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MenuID` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`MenuID`, `Name`, `Price`) VALUES
(1, 'Blue Cheese Ball', 350),
(2, 'Polenta Squares with Gorgonzola', 250),
(3, 'Apple-Blue Cheese Chutney', 300),
(4, 'Caramelized Onion, Gruyère, and Bacon Spread', 550),
(5, 'chicken Soup', 380),
(6, 'Mushroom  Soup', 320),
(7, 'Curried Chicken and Broccoli Casserole', 550),
(8, 'Simple Baked Chicken Breasts', 450),
(9, 'Crispy and Tender Baked Chicken Thighs', 650),
(10, 'Homemade Mac and Cheese', 390),
(11, 'Roasted Pork Loin', 470),
(12, 'pesto Pasta with chicken', 500),
(13, 'Potato, Squash & Goat Cheese Gratin', 530),
(14, 'Garlicky Roasted Broccoli', 690),
(15, 'Hasselback Tater Tots', 420);

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `c_name` varchar(30) NOT NULL,
  `pickup_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`c_name`, `pickup_time`) VALUES
('', '18:09:45'),
('behzad', '18:12:12'),
('asd', '19:15:15'),
('behzad', '19:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `placeorder`
--

CREATE TABLE `placeorder` (
  `c_name` varchar(30) NOT NULL,
  `orderID` int(5) NOT NULL,
  `chef_Id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placeorder`
--

INSERT INTO `placeorder` (`c_name`, `orderID`, `chef_Id`) VALUES
('asd', 1, 3),
('behzad', 1, 3),
('behzad', 2, 3),
('behzad', 5, 3),
('behzad', 6, 3),
('behzad', 1, 3),
('behzad', 1, 3),
('ali', 5, 3),
('behzad', 5, 3),
('behza', 5, 3),
('behzad', 5, 3),
('behzad', 6, 3),
('behzad', 6, 3),
('behzad', 5, 3),
('behzad', 9, 3),
('asd', 7, 3),
('behzad', 1, 2),
('behzad', 14, 3),
('behzad', 11, 3),
('behzad', 4, 3),
('behzad', 5, 3),
('behzad', 99, 3),
('behzad', 5, 3),
('behzad', 8, 3),
('behzad', 7, 3),
('behzad', 7, 3),
('behzad', 4, 3),
('behzad', 5, 3),
('behzad', 6, 3),
('behzad', 4, 3),
('behzad', 5, 3),
('behzad', 6, 3),
('behzad', 4, 3),
('behzad', 5, 3),
('behzad', 6, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`Chef_Id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MenuID`);

--
-- Indexes for table `placeorder`
--
ALTER TABLE `placeorder`
  ADD KEY `fk_foreign_key_name` (`orderID`),
  ADD KEY `foreign_key_name` (`chef_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
