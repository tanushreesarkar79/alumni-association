-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2024 at 02:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumini_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `achievement` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL,
  `file_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `name`, `email`, `achievement`, `description`, `file_name`) VALUES
(7, 'tanu', 'tanu@gmail.com', 'achievement', 'description', 'l3.png'),
(8, 'Tanushree Sarkar', 'tanu@gmail.com', 'Python course', 'Python and Data Analysis', 'loyalty-card.png'),
(9, 'Megha', 'megha@gmail.com', 'Cyber Security Internship Completed', 'Build security models and found IOCs.', 'campusimg6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `alumnilogin`
--

CREATE TABLE `alumnilogin` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `department` varchar(20) NOT NULL,
  `batch` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnilogin`
--

INSERT INTO `alumnilogin` (`id`, `name`, `email`, `department`, `batch`, `password`) VALUES
(6, 'tanu', 'tanu@gmail.com', 'tanu', 'ms', 'c52ea72aba338ca79ddbc1de70e2cdad'),
(7, 'Soumitra Halder', 'soumi@gmail.com', 'CS', '2', '431cef633200c5e4720fb9d33cf77f44'),
(8, 'Megha Mondal', 'megha@gmail.com', 'CS', '2', '489877ec5b7a26bcc731272882ab08e4');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  `organizer` varchar(60) NOT NULL,
  `description` varchar(300) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `file_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `eventname`, `organizer`, `description`, `fromdate`, `todate`, `file_name`) VALUES
(9, 'linkedin event', 'Pondicherry University', 'linkedin prep event', '2024-11-13', '2024-11-15', 'formsidebg.jpg'),
(10, 'Next-step launch', 'New organizer', 'latest event', '2024-11-13', '2024-11-29', 'campusimg9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mentorrequests`
--

CREATE TABLE `mentorrequests` (
  `id` int(11) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  `organizer` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `description` varchar(300) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentorrequests`
--

INSERT INTO `mentorrequests` (`id`, `eventname`, `organizer`, `email`, `description`, `fromdate`, `todate`) VALUES
(8, 'mentor', 'org', 'tanu@gmail.com', 'des', '2024-10-19', '2024-10-31'),
(9, 'Tanushree Sarkar', 'ST company', 'tanu@gmail.com', 'Want to be a mentor.', '2024-11-20', '2024-12-31'),
(10, 'Megha', 'Company', 'megha@gmail.com', 'I want to be a mentor to my juniors.', '2024-11-29', '2024-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `postedjobs`
--

CREATE TABLE `postedjobs` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `companyname` varchar(60) NOT NULL,
  `job` varchar(90) NOT NULL,
  `jobdescription` varchar(400) NOT NULL,
  `salary` varchar(40) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `timeposted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `postedjobs`
--

INSERT INTO `postedjobs` (`id`, `email`, `companyname`, `job`, `jobdescription`, `salary`, `skills`, `timeposted`) VALUES
(7, 'tanu@gmail.com', 'company', 'position', 'job', '100000', 'java', '2024-10-19 17:07:27'),
(8, 'soumi@gmail.com', 'ST company', 'Frontend Developer', 'Should be able to work in collaborative environment.', '15000-20000', 'HTML, CSS, JavaScript', '2024-11-04 08:41:32'),
(9, 'megha@gmail.com', 'Megha Company', 'Frontend Intern', 'Frontend intern should be able to work in a collaborative environment.', '15000-20000', 'HTML,CSS,JavaScript', '2024-11-04 13:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `query` varchar(500) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `name`, `email`, `query`, `time`) VALUES
(12, 'tanu', 'tanu@gmail.com', 'query', '2024-10-19 17:06:35'),
(13, 'Soumitra Halder', 'soumi@gmail.com', 'Is there a provision for a alumni meet in the first week of December 2024.', '2024-11-04 08:39:01'),
(14, 'Megha', 'megha@gmail.com', 'My query', '2024-11-04 13:26:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumnilogin`
--
ALTER TABLE `alumnilogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentorrequests`
--
ALTER TABLE `mentorrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postedjobs`
--
ALTER TABLE `postedjobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alumnilogin`
--
ALTER TABLE `alumnilogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mentorrequests`
--
ALTER TABLE `mentorrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `postedjobs`
--
ALTER TABLE `postedjobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
