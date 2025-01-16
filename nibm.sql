-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2025 at 06:21 PM
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
-- Database: `nibm`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` char(10) NOT NULL,
  `stId` char(10) DEFAULT NULL,
  `module1` varchar(100) DEFAULT NULL,
  `module2` varchar(100) DEFAULT NULL,
  `module3` varchar(100) DEFAULT NULL,
  `module4` varchar(100) DEFAULT NULL,
  `module5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `stId`, `module1`, `module2`, `module3`, `module4`, `module5`) VALUES
('C001', 'S001', 'Introduction to Programming', 'Software Engineering', 'Frontend Development', 'Android Development', 'Database Management'),
('C002', 'S002', 'Data Structures', 'Version Control', 'Backend Development', 'iOS Development', 'Data Science and Machine Learning');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentId` char(10) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `studentDob` varchar(100) NOT NULL,
  `studentGender` varchar(30) NOT NULL,
  `studentEmail` varchar(100) NOT NULL,
  `studentContact` varchar(10) NOT NULL,
  `addressNoStreet` varchar(100) NOT NULL,
  `addressCity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `studentName`, `studentDob`, `studentGender`, `studentEmail`, `studentContact`, `addressNoStreet`, `addressCity`) VALUES
('S001', 'Kishara', '11/11/2006', 'Male', 'kisharacosta74@gmail.com', '0756370872', '97/1 Kurruppumulla', 'Panadura'),
('S002', 'Luffy', '5/5/1997', 'Male', 'luffy@gmail.com', 'null', 'null', 'EastBlue');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` char(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`) VALUES
('U001', 'Kishara', '1234'),
('U002', 'Luffy', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stId` (`stId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `studentId` (`studentId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`stId`) REFERENCES `student` (`studentId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
