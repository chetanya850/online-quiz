-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 03:30 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int(5) NOT NULL,
  `category` varchar(100) NOT NULL,
  `exam_time_in_minutes` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `category`, `exam_time_in_minutes`) VALUES
(12, 'Science', '20'),
(13, 'GK', '20'),
(14, 'Maths', '20'),
(16, 'History', '40'),
(18, 'Computer', '30');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `exam_type` varchar(100) NOT NULL,
  `total_question` varchar(10) NOT NULL,
  `correct_answer` varchar(10) NOT NULL,
  `wrong_answer` varchar(10) NOT NULL,
  `exam_time` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `username`, `exam_type`, `total_question`, `correct_answer`, `wrong_answer`, `exam_time`) VALUES
(1, 'chetanya1030', 'Science', '5', '5', '0', 2021),
(2, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(3, 'sid44', 'Science', '5', '5', '0', 2021),
(4, 'chetanya1030', 'GK', '2', '2', '0', 2021),
(5, 'chetanya1030', 'Science', '5', '0', '5', 2021),
(6, 'chetanya1030', 'Science', '5', '5', '0', 2021),
(7, 'chetanya1030', 'GK', '2', '2', '0', 2021),
(8, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(9, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(10, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(11, 'chetanya1030', 'Maths', '2', '0', '2', 2021),
(12, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(13, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(14, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(15, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(16, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(17, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(18, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(19, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(20, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(21, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(22, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(23, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(24, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(25, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(26, 'chetanya1030', 'Maths', '2', '2', '0', 2021),
(27, 'sid44', 'GK', '2', '0', '2', 2021),
(28, 'sid44', 'Science', '5', '5', '0', 2021),
(29, 'anil20', 'GK', '2', '2', '0', 2021),
(30, 'anil20', 'Science', '5', '5', '0', 2021),
(31, 'chetanya1030', 'Science', '5', '5', '0', 2021),
(32, 'chetanya1030', 'Science', '5', '0', '5', 2021),
(33, 'anil20', 'Science', '5', '5', '0', 2021),
(34, 'chetanya1030', 'GK', '2', '2', '0', 2021),
(35, 'chetanya1030', 'GK', '2', '2', '0', 2021),
(36, 'chetanya1030', 'Science', '5', '4', '1', 2021),
(37, 'chetanya1030', 'Science', '5', '4', '1', 2021),
(38, 'chetanya1030', 'Science', '5', '5', '0', 2021),
(39, 'chetanya1030', 'Computer', '5', '5', '0', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Chetanya Sharma', 'chetanya850@gmail.com', 'good', '31231231231'),
(2, 'Siddharth', 'sid44@gmail.com', 'Some Issue.', 'There is some issue with the exam selection buttons.');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(5) NOT NULL,
  `question_no` varchar(5) NOT NULL,
  `question` varchar(500) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_no`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `category`) VALUES
(8, '1', 'Where is nile river located?', 'Uganda', 'Kenya', 'Tanzania', 'All of the above', 'All of the above', 'GK'),
(30, '1', 'Nephron is the basic structural and functional unit of which among the following organs?', 'Nervous system', 'Liver', 'Pancrease', 'Kidney', 'Kidney', 'Science'),
(31, '2', 'In which among the following organ, “Bowman’s Capsule” is found?', 'Liver', 'Kidney', 'Pancrease', 'Brain', 'Kidney', 'Science'),
(32, '3', 'Electric bulb filament is made up of?', 'Copper', 'Alluminum', 'Lead', 'Tungsten', 'Tungsten', 'Science'),
(33, '4', 'Which of these is used to generate electricity in power plants?', 'opt_images/30df03e7f054ba97dae05d3a657f4bdddiamond.jpg', 'opt_images/30df03e7f054ba97dae05d3a657f4bdddownload (5).jpg', 'opt_images/30df03e7f054ba97dae05d3a657f4bdddownload (6).jpg', 'opt_images/30df03e7f054ba97dae05d3a657f4bdddownload (7).jpg', 'opt_images/30df03e7f054ba97dae05d3a657f4bdddownload (5).jpg', 'Science'),
(35, '2', 'Where does PM lives?', 'Delhi', 'Mumbai', 'Udaipur', 'Hyederabad', 'Delhi', 'GK'),
(36, '5', 'What is air made up of?', 'Nitrogen', 'Oxygen', 'Sulpher', 'Pottasium', 'Oxygen', 'Science'),
(37, '1', '2+2 is', '4', '2', '3', '5', '4', 'Maths'),
(38, '2', '5x2?', '10', '20', '30', '15', '10', 'Maths'),
(39, '3', 'The Hwang Ho river falls into?', 'Indian Ocean', 'Yellow Sea', 'Red Sea', 'Bay of China', 'Yellow Sea', 'GK'),
(40, '4', 'Yokohama and Kobe are the main centres of ship building industry in:', 'Japan ', 'South Korea', 'North Korea', 'China', 'Japan', 'GK'),
(41, '5', 'Brown Waterfalls are situated in:', 'Switzerland', 'Australia', 'New Zealand', 'Canada', 'New Zealand', 'GK'),
(42, '3', 'The product of a rational and irrational number is', 'rational', 'irrational', 'both', 'none', 'irrational', 'Maths'),
(43, '4', 'The sum of two irrational numbers is always', 'irrational', 'rational', 'rational or irrational', 'one', 'irrational', 'Maths'),
(44, '5', 'The product of three consecutive positive integers is divisible by', '4', '6', 'no common factor', 'only 1', '6', 'Maths'),
(45, '1', 'First Buddhist Council was held during the reign of which of the following kings?', 'Ajatsatru', 'Ashoka', 'Kanishka', 'Kalasoka', 'Ajatsatru', 'History'),
(46, '2', 'Which of the following Chola kings was the first to capture Maldives?', 'Rajaraj', 'Rajendra I', 'Rajadhiraj', 'Rajendra II', 'Rajaraj', 'History'),
(47, '3', 'Which of the following ancient Tamil Kingdoms came to be known from Sangam Literature?', 'Chola', 'Chera', 'Pandya', 'All of the above', 'All of the above', 'History'),
(48, '4', 'Which of the following is the equivalent term used for Raja in early vedic era?', 'Gopati', 'Gomat', 'Gopa', 'Gomitra', 'Gopati', 'History'),
(49, '5', 'The Bhamala Stupa, a ruined Buddhist Stupa, is located in which one of the following countries?', 'Nepal', 'Bhutan', 'Pakistan', 'China', 'Pakistan', 'History'),
(50, '1', 'Name of the screen that recognizes touch input is :', 'recog screen', 'touch screen', 'point screen', 'android screen', 'touch screen', 'Computer'),
(51, '2', 'Identify the device through which data and instructions are entered into a computer', 'Software', 'Input device', 'Output device', 'memory', 'Input device', 'Computer'),
(52, '3', 'Computer Moniter is also known as :', 'VDU', 'DVU', 'DVD', 'CD', 'VDU', 'Computer'),
(53, '4', 'Which one of these stores more data than a DVD ?', 'CD', 'Blu ray disk', 'floppy', 'Red ray disk', 'Blu ray disk', 'Computer'),
(54, '5', 'Eight Bits make up a', 'byte', 'kilobyte', 'megabyte', 'none', 'byte', 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, '', '', '', '', '', ''),
(2, 'Chetanya', 'Sharma', 'chetanya1030', '1234', 'chetanya850@gmail.com', '8619866434'),
(3, 'Siddharth', 'Sharma', 'sid44', '1234', 'sid44noob@gmail.com', '8619866434'),
(4, 'sid', '88', 'sid88', '1234', 'sid88@gmail.com', '8619866434'),
(5, 'Anil', 'Sharma', 'anil20', '12345', 'anil1234@gmail.com', '6376565984'),
(6, 'Karuna ', 'Sharma', 'karuna1030', 'ks1234', 'karuna@gmail.com', '9828992644');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
