-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 06:45 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(1, '558922117fcef', '5589221195248'),
(2, '55892211e44d5', '55892211f1fa7'),
(7, '5d5cf741009e4', '5d5cf7412c022'),
(8, '5d5cf7416a2f2', '5d5cf741724c0'),
(9, '5d5cf741ab0ea', '5d5cf741b32cc'),
(10, '5d5cf741ebe78', '5d5cf741f4021'),
(11, '5d5cf74228710', '5d5cf7423340c');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(1, '558922117fcef', 'echo', '5589221195248'),
(2, '558922117fcef', 'print', '558922119525a'),
(3, '558922117fcef', 'printf', '5589221195265'),
(4, '558922117fcef', 'cout', '5589221195270'),
(5, '55892211e44d5', 'int a', '55892211f1f97'),
(6, '55892211e44d5', '$a', '55892211f1fa7'),
(7, '55892211e44d5', 'long int a', '55892211f1fb4'),
(8, '55892211e44d5', 'int a$', '55892211f1fbd'),
(25, '5d5cf741009e4', 'relative application developement', '5d5cf7412c01d'),
(26, '5d5cf741009e4', 'rapid application development', '5d5cf7412c022'),
(27, '5d5cf741009e4', 'rapid application document', '5d5cf7412c023'),
(28, '5d5cf741009e4', 'none of the above', '5d5cf7412c023'),
(29, '5d5cf7416a2f2', 'Build & Fix Model   ', '5d5cf741724ab'),
(30, '5d5cf7416a2f2', ' Prototyping Model ', '5d5cf741724b7'),
(31, '5d5cf7416a2f2', 'RAD Model', '5d5cf741724bb'),
(32, '5d5cf7416a2f2', ' Waterfall Model', '5d5cf741724c0'),
(33, '5d5cf741ab0ea', '2 phases', '5d5cf741b32c2'),
(34, '5d5cf741ab0ea', '3 phases', '5d5cf741b32cb'),
(35, '5d5cf741ab0ea', '5 phases', '5d5cf741b32cc'),
(36, '5d5cf741ab0ea', '6 phases', '5d5cf741b32cd'),
(37, '5d5cf741ebe78', 'Software Development Life Cycle ', '5d5cf741f4021'),
(38, '5d5cf741ebe78', 'System Development Life cycle', '5d5cf741f4027'),
(39, '5d5cf741ebe78', 'Software Design Life Cycle ', '5d5cf741f4028'),
(40, '5d5cf741ebe78', ' System Design Life Cycle', '5d5cf741f4029'),
(41, '5d5cf74228710', ' Quick Design', '5d5cf7423340c'),
(42, '5d5cf74228710', 'Coding', '5d5cf74233410'),
(43, '5d5cf74228710', ' Prototype Refinement', '5d5cf74233411'),
(44, '5d5cf74228710', ' Engineer Product', '5d5cf74233412');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(1, '558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
(2, '558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
(7, '5d5cf59a96155', '5d5cf741009e4', 'RAD Stands for?', 4, 1),
(8, '5d5cf59a96155', '5d5cf7416a2f2', 'Which one of the following models is not suitable for accommodating any change?', 4, 2),
(9, '5d5cf59a96155', '5d5cf741ab0ea', ' RAD Model has', 4, 3),
(10, '5d5cf59a96155', '5d5cf741ebe78', ' SDLC stands for', 4, 4),
(11, '5d5cf59a96155', '5d5cf74228710', 'Which one of the following is not a phase of Prototyping Model?\r\n\r\n\r\n\r\n', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
(1, '558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 09:06:12'),
(4, '5d5cf59a96155', 'Software Engineering', 1, 0, 5, 5, '', '#test', '2019-08-21 07:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Teats', 'M', 'testasd', 'asdfgh@asd.com', 987654, '6eea9b7ef19179a06954edd0f6c05ceb'),
('Bikina', 'F', 'kcmit', 'bikina.ckjnepal@gmail.com', 9860911188, 'ba85af160de44af79447f92761a31937'),
('Dipak Budhathoki', 'M', 'nobel academy', 'dipak_budhathoki@hotmail.com', 9841300903, '4a9975c2b43a759636dde9c947432d5c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
