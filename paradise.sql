-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 09:30 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paradise`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievers`
--

CREATE TABLE `achievers` (
  `student_id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `img` varchar(300) NOT NULL,
  `class` varchar(10) NOT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(10) NOT NULL,
  `blog_date` date NOT NULL,
  `blog_title` longtext NOT NULL,
  `blog` longtext NOT NULL,
  `img` varchar(300) NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_date`, `blog_title`, `blog`, `img`, `author`) VALUES
(1, '2019-10-10', 'How to be Successful?\r\n\r\n', 'Being successful has been a buzzword since time immemorial. Many theories have been put forward to explain the sure-shot formula of success. Some say hard work is the key, some say undying desire leads to success, and others say it’s written in your cards. Many people have many theories. Every successful and even unsuccessful person has their concept and explanation of why it worked and why it did not. But can anyone tell how to achieve success? Is there any universally accepted formula for success? Yes, there is!! An equation that fits in all walks of life.', '/assets/img/banner.jpg', 'Arun'),
(2, '2019-10-18', 'Never Give Up !!', 'Once upon a time, there lived a mighty King. He was known for his generosity and love for his kingdom. But he had now grown old and was no more an effective ruler. Once there was a dance session of a renowned pretty dancer, accompanied by the team playing musical instruments in the royal court. The King, prince, princess, a merchant, court monk, and many others were present to witness and enjoy the program. The dance session went for hours and hours till midnight and dawn were approaching. As a customry, the dance stops only when the King presents the gift and it is followed by other eminent courtesans presenting the gifts. But nothing as such happened even after many hours of continuous dance performance. ', 'jfaksfjldf', 'raj');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `request_no` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` longtext NOT NULL,
  `msg` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`request_no`, `name`, `email`, `subject`, `msg`) VALUES
(1, 'Arun Pandya', 'arunpandya401@gmail.com', 'Data Structure Programs', 'adsjldsdksjflds');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL,
  `class` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `name`, `type`, `description`, `location`, `class`) VALUES
(1, 'Java', 'vd', 'Java video', 'fjsdkfj', '12'),
(2, 'maths', 'pdf', 'pdf ', 'djflaks', '8');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `img_no` int(50) NOT NULL,
  `img_type` varchar(30) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`img_no`, `img_type`, `path`) VALUES
(1, 'all', 'assets/img/gallery/small/2.jpg'),
(2, 'lab', 'assets/img/gallery/small/4.jpg'),
(3, 'classroom', 'assets/img/gallery/small/5.jpg'),
(4, 'sports', 'assets/img/gallery/small/8.jpg'),
(5, 'library', 'assets/img/gallery/small/8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `path` varchar(150) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result1_5`
--

CREATE TABLE `result1_5` (
  `student_id` varchar(20) NOT NULL,
  `mathematics` varchar(5) NOT NULL,
  `enviromental_studies` varchar(5) NOT NULL,
  `english` varchar(5) NOT NULL,
  `hindi` varchar(5) NOT NULL,
  `computer` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result1_5`
--

INSERT INTO `result1_5` (`student_id`, `mathematics`, `enviromental_studies`, `english`, `hindi`, `computer`) VALUES
('stu125', '60', '70', '65', '80', '60'),
('stu126', '70', '80', '65', '75', '77');

-- --------------------------------------------------------

--
-- Table structure for table `result6_10`
--

CREATE TABLE `result6_10` (
  `student_id` varchar(20) NOT NULL,
  `mathematics` varchar(10) NOT NULL,
  `science` varchar(10) NOT NULL,
  `social_science` varchar(10) NOT NULL,
  `sanskrit` varchar(10) NOT NULL,
  `hindi` varchar(10) NOT NULL,
  `english` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result6_10`
--

INSERT INTO `result6_10` (`student_id`, `mathematics`, `science`, `social_science`, `sanskrit`, `hindi`, `english`) VALUES
('stu127', '80', '75', '85', '90', '88', '88');

-- --------------------------------------------------------

--
-- Table structure for table `result_bio`
--

CREATE TABLE `result_bio` (
  `student_id` varchar(20) NOT NULL,
  `biology` varchar(10) NOT NULL,
  `chemistry` varchar(10) NOT NULL,
  `physics` varchar(10) NOT NULL,
  `hindi` varchar(10) NOT NULL,
  `english` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_bio`
--

INSERT INTO `result_bio` (`student_id`, `biology`, `chemistry`, `physics`, `hindi`, `english`) VALUES
('stu129', '80', '88', '76', '65', '88');

-- --------------------------------------------------------

--
-- Table structure for table `result_commerce`
--

CREATE TABLE `result_commerce` (
  `student_id` varchar(20) NOT NULL,
  `accounts` varchar(10) NOT NULL,
  `bussiness_studies` varchar(10) NOT NULL,
  `ip` varchar(10) NOT NULL,
  `hindi` varchar(10) NOT NULL,
  `english` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_commerce`
--

INSERT INTO `result_commerce` (`student_id`, `accounts`, `bussiness_studies`, `ip`, `hindi`, `english`) VALUES
('stu128', '76', '82', '70', '85', '88');

-- --------------------------------------------------------

--
-- Table structure for table `result_maths`
--

CREATE TABLE `result_maths` (
  `student_id` varchar(20) NOT NULL,
  `mathematics` varchar(10) NOT NULL,
  `physics` varchar(10) NOT NULL,
  `chemistry` varchar(10) NOT NULL,
  `hindi` varchar(10) NOT NULL,
  `english` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_maths`
--

INSERT INTO `result_maths` (`student_id`, `mathematics`, `physics`, `chemistry`, `hindi`, `english`) VALUES
('stu125', '90', '90', '90', '85', '88');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `class` varchar(10) NOT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `father` varchar(30) NOT NULL,
  `mother` varchar(30) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `sssmid` varchar(20) NOT NULL,
  `address` longtext NOT NULL,
  `contact` varchar(13) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `dob` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `class`, `subject`, `father`, `mother`, `aadhar`, `sssmid`, `address`, `contact`, `email`, `dob`, `password`, `img`) VALUES
('stu125', 'Arun', '12', 'maths', 'Omprakash', 'Asha', '427216542496', '27546824525852', '252,alkapuri', '8319946904', 'arunpandya401@gmail.com', '08/03/2000', '44d69af46eb23893c78c7115083c46a2', 'assets/img/students/arun.JPG'),
('stu126', 'Prerit Nagpurkar', '5', NULL, 'Vijay Nagpurkar', 'BhagyaShree Nagpurkar', '', '', 'dewas', '7989449325', 'prerit@gmail.com', '08/03/1999', '202cb962ac59075b964b07152d234b70', 'sdffdasfds'),
('stu127', 'Aayush Kumrawat', '8', NULL, 'Rajendra Kumrawat', 'Lalita Kumrawat', '', '', 'dewas', '8103867030', 'aayush@gmail.com', '04/01/1998', '81dc9bdb52d04dc20036dbd8313ed055', 'dsljfldks'),
('stu128', 'Firoj Shaikh', '11', 'commerce', 'Shakir Shaikh', 'Shanno Shaikh', '', '', 'dewas', '8435686898', 'firoj@gmail.com', '07/06/1999', '827ccb0eea8a706c4c34a16891f84e7b', 'djflkas'),
('stu129', 'Aayushi Sahu', '12', 'biology', 'dummy', 'mummy', '', '', 'djalsjfljsdlakjflksalkcmfdjasklflks;djflaskdjflkja', '7989449325', 'aayushi@gmail.com', '07/09/1999', 'e10adc3949ba59abbe56e057f20f883e', 'adsf');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `staff_id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `father` varchar(30) NOT NULL,
  `qual` varchar(50) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `doj` varchar(30) NOT NULL,
  `img` varchar(150) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`staff_id`, `name`, `father`, `qual`, `aadhar`, `contact`, `email`, `address`, `doj`, `img`, `password`) VALUES
('tn125', 'Arun Pandya', 'Omprakash', 'B.Tech', '427216542496', '8319946904', 'arunpandya401@gmail.com', '252,alkapuri', '08/03/2017', 'jlkfd', '44d69af46eb23893c78c7115083c46a2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievers`
--
ALTER TABLE `achievers`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`request_no`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`img_no`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result1_5`
--
ALTER TABLE `result1_5`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `result6_10`
--
ALTER TABLE `result6_10`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `result_bio`
--
ALTER TABLE `result_bio`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `result_commerce`
--
ALTER TABLE `result_commerce`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `result_maths`
--
ALTER TABLE `result_maths`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `request_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `img_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achievers`
--
ALTER TABLE `achievers`
  ADD CONSTRAINT `Foreign Key` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `result1_5`
--
ALTER TABLE `result1_5`
  ADD CONSTRAINT `result1_5_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `result6_10`
--
ALTER TABLE `result6_10`
  ADD CONSTRAINT `result6_10_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `result_bio`
--
ALTER TABLE `result_bio`
  ADD CONSTRAINT `result_bio_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `result_commerce`
--
ALTER TABLE `result_commerce`
  ADD CONSTRAINT `result_commerce_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `result_maths`
--
ALTER TABLE `result_maths`
  ADD CONSTRAINT `result_maths_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `result_maths_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
