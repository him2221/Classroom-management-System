-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 01:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mail` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Name`, `Mail`, `Password`) VALUES
(1, 'admin', 'hiadmin@mail.com', '98765432');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Filee` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `Course`, `Subject`, `Filee`) VALUES
(1, '', 'Programming In Java.', '1000-'),
(2, '', 'Programming In Java.', '1000-');

-- --------------------------------------------------------

--
-- Table structure for table `doubt`
--

CREATE TABLE `doubt` (
  `id` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Doubt` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doubt`
--

INSERT INTO `doubt` (`id`, `Name`, `Course`, `Doubt`) VALUES
(1, 'Rahul Kumar', ' Programming In C#', 'Program of recurssion'),
(2, 'Rahul Kumar', 'Programming In Java.', 'Doubt in Multiple Inheritance'),
(3, 'Abhishek negi', 'Accountancy', 'Doubt in Balance Sheet'),
(4, 'Raj Kathait', 'Business Law..', 'General Impact on Court Systems');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `Roll` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Father` varchar(22) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Mail` varchar(20) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Sem` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `Roll`, `Name`, `Father`, `Mobile`, `Mail`, `Contact`, `Course`, `Sem`, `Password`) VALUES
(1, 101, 'Rahul Kumar', 'Mr Vipin Kumar', '9882343334', 'Rahul@gmail.com', '9191234564', 'BSC IT', '4', '12345678'),
(2, 102, 'Rajat Singh', 'Mr Vimal Singh', '9876523234', 'Rajat@gmail.com', '9898234576', 'BSC IT', '4', '23456789'),
(3, 103, 'Sanddep Chauhan', 'Mr Rakesh Chauhan', '9875643212', 'Sandeep@gmail.com', '8978654332', 'BSC IT', '4', '12345678'),
(4, 104, 'Smita Thakur', 'Mr Jagdish Thakur', '9878675312', 'Smita@gmail.com', '9667451123', 'BSC IT', '4', '12345678'),
(5, 105, 'Raj Kathait', 'Mr Suraj Kathait', '9878345312', 'Raj@gmail.com', '9667421123', 'BBA', '4', '12345678'),
(6, 106, 'Saurav Singh', 'Mr Mahesh singh', '9823345312', 'Saurav@gmail.com', '9665421123', 'BBA', '4', '12345678'),
(7, 107, 'Pawan Kumar', 'Mr Mahendra Kumar', '9829845334', 'Pawan@gmail.com', '9643421123', 'BBA', '4', '12345678'),
(8, 108, 'Aman Rawat', 'Mr Ajit Rawat', '9829845367', 'Aman@gmail.com', '9646621154', 'BBA', '4', '12345678'),
(9, 109, 'Jaideep Negi', 'Mr Brijesh Negi', '8729846367', 'Jaideep@gmail.com', '9646455654', 'BCA', '4', '12345678'),
(10, 110, 'Nandini Rawat', 'Mr Harish Singh Rawat', '9876332245', 'Nandini@gmail.com', '8976553212', 'BCA', '4', '12345678'),
(12, 111, 'Prabhat Ramola', 'Mr Dhruvan Ramola', '9873232245', 'Prabhat@gmail.com', '8767665434', 'BCA', '4', '12345678'),
(13, 112, 'Kunal Rawat', 'Mr Deepak Rawat', '9878791254', 'Kunal@gmail.com', '9887544531', 'BCA', '4', '12345678'),
(14, 113, 'Abhishek negi', 'Mr Sunil Negi', '9877453344', 'Abhishek@gmail.com', '8766543321', 'Bcom', '4', '12345678'),
(15, 114, 'Vipin Singh', 'Mr Sanjay Singh', '8978886412', 'Sanjay@gmail.com', '8172229067', 'Bcom', '4', '12345678'),
(16, 115, 'Sachin Rana', 'Mr Ajay Rana', '7978889412', 'Ajay@gmail.com', '8176789067', 'Bcom', '4', '12345678'),
(17, 116, 'Deepak Kaintura', 'Mr Ashish Kaintura', '9873218865', 'Deepak@gmail.com', '7888321243', 'Bcom', '4', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `stufeed`
--

CREATE TABLE `stufeed` (
  `id` int(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Feed` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stufeed`
--

INSERT INTO `stufeed` (`id`, `Name`, `Feed`) VALUES
(1, 'Rahul Kumar', 'Please Update class Timings'),
(2, 'Raj Kathait', 'Reschdule Financial Management Class'),
(3, 'Raj Kathait', 'Reschdule Financial Management Class');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(20) NOT NULL,
  `IDT` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Mail` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `IDT`, `Name`, `Qualification`, `Course`, `Mobile`, `Mail`, `Password`) VALUES
(1, 1001, 'Mr Vikash KUmar', 'Post Graduation', 'IT', '9921334256', 'Vikash@gmail.com', '23456789'),
(2, 1002, 'Rajesh Pant', 'Post Graduation', 'Management', '9972558921', 'Rajesh@yahoomail.com', '123456789'),
(3, 1003, 'Mrs Poonam Singh', 'Post Graduation', 'IT', '8123443212', 'Poonam@gmail.com', '12345678'),
(4, 1004, 'Mr Shubham Jain', 'Post Graduation', 'Management', '9080786531', 'Shubham@gmail.com', '12345678'),
(5, 1005, 'Mr Shiv Kumar', 'Post Graduation', 'Management', '9878987652', 'Shiv@gmail.com', '12345678'),
(6, 1006, 'Mr Gautam Dubey', 'Post Graduation', 'IT', '9760213451', 'Gautam@gmail.com', '12345678'),
(7, 1007, 'Mrs Kavita Negi', 'Post Graduation', 'Management', '7866321243', 'Kavita@gmail.com', '12345678'),
(8, 1008, 'Mr Vipin Kothiyal', 'Post Graduation', 'IT', '8732122231', 'Vipin@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `tfeedback`
--

CREATE TABLE `tfeedback` (
  `id` int(20) NOT NULL,
  `IDT` varchar(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Feed` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timings`
--

CREATE TABLE `timings` (
  `id` int(20) NOT NULL,
  `Datee` date NOT NULL,
  `Timee` time(6) NOT NULL,
  `Subj` varchar(100) NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timings`
--

INSERT INTO `timings` (`id`, `Datee`, `Timee`, `Subj`, `Link`) VALUES
(1, '0000-00-00', '00:00:16.000000', '0', '0'),
(2, '2023-06-19', '14:43:00.000000', 'Human Resource Manag', 'https://en.wikipedia'),
(3, '2023-06-20', '00:07:00.000000', 'Human Resource Management.', 'https://en.wikipedia.org/wiki/URL'),
(4, '2023-07-08', '10:45:00.000000', 'Marketing Management', 'https://meet.google.com/mgk-mrkr-zoi'),
(5, '2023-07-09', '09:50:00.000000', 'Financial Accounting.', 'https://meet.google.com/mgk-mrkr-zoi'),
(6, '2023-07-09', '10:00:00.000000', 'Programming in C', 'https://meet.google.com/mgk-mrkr-zoi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doubt`
--
ALTER TABLE `doubt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stufeed`
--
ALTER TABLE `stufeed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tfeedback`
--
ALTER TABLE `tfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timings`
--
ALTER TABLE `timings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doubt`
--
ALTER TABLE `doubt`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stufeed`
--
ALTER TABLE `stufeed`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tfeedback`
--
ALTER TABLE `tfeedback`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timings`
--
ALTER TABLE `timings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
