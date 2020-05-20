-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 12:08 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samplelogindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cname` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `ssc` float NOT NULL,
  `hsc` float NOT NULL,
  `engg` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`username`, `password`, `cname`, `email`, `address`, `ssc`, `hsc`, `engg`) VALUES
('tcs123', 'tcs', 'TCS', 'tcs@gmail.com', 'pune', 85, 80, 7.5),
('wipro123', 'wipro', 'WIPRO', 'wipro@gmail.com', 'mumbai', 88, 78, 7.8),
('tata123', 'tata', 'TATA', 'tata@gmail.com', 'bangalore', 89, 79, 8.2),
('amazon123', 'amazon', 'AMAZON', 'amazon@gmail.com', 'hyderabad', 88, 84, 7.9);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `faculty-name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `College-name` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`username`, `password`, `faculty-name`, `email`, `College-name`, `gender`) VALUES
('meet', 'meet', '-name', 'jajdj', '-name', 'Male'),
('jain', '123', 'jajja', 'wfsaf', 'scoe', 'Female'),
('', '', '', '', '', ''),
('ABC', 'ABC', 'ABC', 'ABC', 'ABC', 'Male'),
('hjvfv', 'abc', 'dskhhgb', 'hbdhfvhf', 'kdsfhhbds', 'Male'),
('pingat123', 'pingat', 'Pingat', 'pingat@gmail.com', 'skncoe', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `placed_non-placed`
--

CREATE TABLE `placed_non-placed` (
  `cn` varchar(50) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `response` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `username` varchar(12) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `phone` bigint(14) NOT NULL,
  `address` varchar(50) NOT NULL,
  `ssc` float NOT NULL,
  `hsc` float NOT NULL,
  `engg` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`username`, `password`, `fname`, `lname`, `email`, `age`, `gender`, `phone`, `address`, `ssc`, `hsc`, `engg`) VALUES
('meet', 'meet', 'meet', 'jain', 'jainmeet053@gmail.com', 19, 'Male', 9403608772, 'pune', 93.8, 82.15, 8.4),
('abcd', '123', 'fsafa', 'dsgg', 'sfgdsg', 29, 'Male', 8888888888, 'gdgsg', 24, 355, 3553),
('pqr', 'abcd', 'meet', 'jain', 'jainmeet053@gmail.com', 18, 'Male', 4444444444444, 'dsgg', 34, 54, 7.7),
('meet1', 'meet', 'jain', 'jain', 'jsagfb', 77, 'Male', 35355, 'ewgs', 55, 76, 7.7),
('mahavir', 'mahavir', 'mahavir', 'jain', 'mahavir123jain@gmail.com', 19, 'Male', 7066431664, 'pune', 90, 80, 8.3),
('jainmeet053', 'RV493JAIN', 'meet', 'jain', 'jainmeet053@gmail.com', 20, 'Male', 9403608772, 'pune', 93, 82, 8.4);

-- --------------------------------------------------------

--
-- Table structure for table `student_apply`
--

CREATE TABLE `student_apply` (
  `cname` varchar(50) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_apply`
--

INSERT INTO `student_apply` (`cname`, `susername`, `sname`) VALUES
('WIPRO', 'meet', 'meet'),
('TCS', 'meet', 'meet'),
('meet', 'meet', 'meet'),
('TCS', 'mahavir', 'mahavir'),
('AMAZON', 'jainmeet053', 'meet');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `cn` varchar(50) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `response` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`cn`, `sn`, `response`) VALUES
('TCS', 'meet', 'Placed'),
('TCS', 'mahavir', 'Non-Placed'),
('WIPRO', 'meet', 'Placed'),
('AMAZON', 'meet', 'Placed');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('abcd', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
