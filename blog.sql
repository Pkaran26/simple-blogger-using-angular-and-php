-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 04:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `bid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `para` varchar(500) NOT NULL,
  `udate` datetime DEFAULT CURRENT_TIMESTAMP,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`bid`, `title`, `para`, `udate`, `uid`) VALUES
(1, 'Testing 1', 'this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this i', '2018-05-25 14:16:51', 2),
(2, 'Testing 2', 'this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this i', '2018-05-25 14:16:51', 2),
(3, 'Testing 3', 'this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this i', '2018-05-25 14:16:51', 2),
(4, 'Testing 4', 'this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this i', '2018-05-25 14:16:51', 2),
(5, 'Testing 5', 'this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this i', '2018-05-25 14:16:51', 2),
(6, 'Testing 6', 'this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this is text this i', '2018-05-25 14:16:51', 2),
(7, 'Testing 7', 'this is text.', '2018-05-25 14:43:05', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `upass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `uname`, `dob`, `email`, `upass`) VALUES
(2, 'Prateek', 'pkaran26', '1993-04-25T1', 'kk@c.c', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
