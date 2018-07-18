-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2018 at 12:05 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipe_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `addrecipe`
--

CREATE TABLE IF NOT EXISTS `addrecipe` (
  `id` int(10) NOT NULL,
  `recipe` varchar(100) NOT NULL,
  `ingredient1` varchar(100) NOT NULL,
  `ingredient2` varchar(100) NOT NULL,
  `ingredient3` varchar(100) NOT NULL,
  `ingredient4` varchar(100) NOT NULL,
  `ingredient5` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addrecipe`
--

INSERT INTO `addrecipe` (`id`, `recipe`, `ingredient1`, `ingredient2`, `ingredient3`, `ingredient4`, `ingredient5`) VALUES
(3, 'Biryani', 'Rice', 'Oil', 'Onion', 'Green Chilli', 'Spices'),
(4, 'Veg Pulao', 'Rice', 'Pulses', 'Water', 'Oil', 'Spices'),
(5, 'manchuria', 'Carrot', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addrecipe`
--
ALTER TABLE `addrecipe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addrecipe`
--
ALTER TABLE `addrecipe`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
