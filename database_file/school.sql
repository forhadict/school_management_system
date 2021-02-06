-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 05, 2021 at 11:27 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

DROP TABLE IF EXISTS `academic_syllabus`;
CREATE TABLE IF NOT EXISTS `academic_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_syllabus_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_syllabus`
--

INSERT INTO `academic_syllabus` (`id`, `academic_syllabus_code`, `title`, `class_id`, `subject_id`, `description`, `uploader_type`, `uploader_id`, `session`, `timestamp`, `file_name`) VALUES
(1, '0372beb', 'Syllabus for class one', 1, 3, 'It is very helpful for Student', 'admin', '1', '2021-2022', 1611673581, 'IT14021_IT15012.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

DROP TABLE IF EXISTS `accountant`;
CREATE TABLE IF NOT EXISTS `accountant` (
  `accountant_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `accountant_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`accountant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `accountant_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`) VALUES
(1, 'Accountant', 'eab01d4bea', '2021-01-15', 'Female', 'Islam', 'O+', 'Dhaka, Bangladesh', '78465864574', 'accountant@gmail.com', 'Accountant', 'Accountant', 'Accountant', 'Accountant', 'PhD', 'Married', 'coverpage.docx', '8cb2237d0679ca88db6464eac60da96345513964', '0');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `name`, `colour`, `icon`, `club_id`, `description`, `date`) VALUES
(1, 'Activity Name', 'success', 'fa-facebook', 5, 'Description', '2021-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `phone`, `password`, `level`, `login_status`) VALUES
(1, 'Administrator', 'admin@admin.com', '+8801913049501', '8cb2237d0679ca88db6464eac60da96345513964', '2', 0),
(2, 'Forhad', 'forhad@gmail.com', '+8801772308391', 'c86ae5793c7c53f188896dc5e9a39ec8216d81a3', '1', 1),
(4, 'Admin', 'atiqrhmn2016@gmail.com', '+8801913052525', '4e7afebcfbae000b22c7c85e5560f89a2a0280b4', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE IF NOT EXISTS `admin_role` (
  `admin_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `dashboard` int(11) NOT NULL,
  `manage_academics` int(11) NOT NULL,
  `manage_employee` int(11) NOT NULL,
  `manage_student` int(11) NOT NULL,
  `manage_attendance` int(11) NOT NULL,
  `download_page` int(11) NOT NULL,
  `manage_parent` int(11) NOT NULL,
  `manage_alumni` int(11) NOT NULL,
  PRIMARY KEY (`admin_role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_id`, `dashboard`, `manage_academics`, `manage_employee`, `manage_student`, `manage_attendance`, `download_page`, `manage_parent`, `manage_alumni`) VALUES
(1, 2, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 4, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
CREATE TABLE IF NOT EXISTS `alumni` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `graduation_year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `interest` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumni_id`, `name`, `sex`, `phone`, `email`, `address`, `profession`, `marital_status`, `graduation_year`, `club_id`, `interest`) VALUES
(5, 'Alumni', 'Male', '7836576458', 'alumni@gmail.com', 'Dhaka, Bangladesh', 'Developer', 'single', '2021-01-05', 2, 'Swimming'),
(6, 'Forhad', 'male', '01772308391', 'forhad@gmail.com', 'Dhaka, Bangladesh', 'Jnr.Developer', 'single', '2019-03-18', 5, 'Swimming');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE IF NOT EXISTS `application` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `apply_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`application_id`, `applicant_name`, `vacancy_id`, `apply_date`, `status`) VALUES
(1, 'Forhad', 1, '2021-01-20', 'interviewed'),
(3, 'Admin', 1, '2021-01-20', 'applied');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `name`, `subject_id`, `class_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`) VALUES
(1, 'Assignment', 3, 1, 1, 'Description', 'IT14021_IT15012.pdf', 'pdf', '2021-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent, 3 holiday, 4 half day, 5 late',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`, `session`) VALUES
(1, 0, 1, '2021-01-29', ''),
(2, 1, 1, '2021-01-30', ''),
(3, 2, 1, '2021-01-28', ''),
(4, 2, 1, '2021-01-12', ''),
(5, 2, 1, '2021-01-04', ''),
(6, 1, 1, '2021-02-03', '');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `name`, `description`) VALUES
(1, 'Forhad', 'Author Description.'),
(2, 'Teacher', 'Teacher description.');

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
CREATE TABLE IF NOT EXISTS `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gift` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`award_id`, `award_code`, `name`, `gift`, `amount`, `date`, `user_id`) VALUES
(1, 'f3c1ae3', 'Best Teacher Name', 'Best Teacher Award', '5000', '2021-01-22', 'admin-2'),
(3, 'ca7f174', 'Best Librarian', 'Best Librarian Award', '15000', '2021-01-21', 'librarian-1');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_holder_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `account_holder_name`, `account_number`, `bank_name`, `branch`) VALUES
(1, 'Forhad Account', '12345', 'paypal', 'Dhaka'),
(2, 'Teacher account', '667788', 'Bank', 'Dhaka'),
(3, 'Teacher account', '12345', 'Bank', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `book_category_id` int(11) NOT NULL,
  `isbn` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edition` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author_id`, `publisher_id`, `book_category_id`, `isbn`, `edition`, `subject_id`, `quantity`, `timestamp`, `class_id`, `status`, `price`) VALUES
(1, 'Food Science', 'Description', 1, 1, 2, 'ph12', '1st', 3, '1', 1612461600, 1, '1', '200'),
(2, 'Nuclear Fusion', 'description', 2, 3, 1, 'js56', '2nd', 1, '1', 1612461600, 3, '1', '400');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
CREATE TABLE IF NOT EXISTS `book_category` (
  `book_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`book_category_id`, `name`, `description`) VALUES
(1, 'Nuclear Fusion', 'This book is for web nuclear fusion purposes.'),
(2, 'Food Science', 'This book for food science Purpose.');

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

DROP TABLE IF EXISTS `circular`;
CREATE TABLE IF NOT EXISTS `circular` (
  `circular_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reference` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`circular_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`circular_id`, `title`, `reference`, `content`, `date`) VALUES
(1, 'School Management Circular 2021', 'school-2021', 'Vacancy: 10\r\nQualification: B.Sc(Engineering)\r\nMinimum CGPA: 3.25', '2021-01-14'),
(2, 'School Management Librarian Circular 2021', 'library-2021', 'Vacancy: 10\r\nQualification: B.Sc(Engineering)\r\nMinimum CGPA: 3.25', '2021-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` longtext NOT NULL,
  `timestamp` int(11) NOT NULL,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2147483648 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
(1, '::1', 1610165443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303136353434333b),
(2, '::1', 1610166005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303136363030353b),
(3, '::1', 1610203899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230333839393b),
(4, '::1', 1610188536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303138383533363b),
(5, '::1', 1610190471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303139303437313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(6, '::1', 1610190832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303139303833323b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(7, '::1', 1610203899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230333839393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(8, '::1', 1610209961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230393936313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b6572726f725f6d6573736167657c733a32313a22496e76616c6964204c6f67696e2044657461696c73223b5f5f63695f766172737c613a313a7b733a31333a226572726f725f6d657373616765223b733a333a226e6577223b7d),
(9, '::1', 1610203930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230333933303b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(10, '::1', 1610203947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230333934373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(11, '::1', 1610204216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230343231363b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(12, '::1', 1610204228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230343232383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31363a224c6f67696e205375636365737366756c223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226e6577223b7d),
(13, '::1', 1610204293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230343239333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(14, '::1', 1610204301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230343330313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b6572726f725f6d6573736167657c733a32313a22496e76616c6964204c6f67696e2044657461696c73223b5f5f63695f766172737c613a313a7b733a31333a226572726f725f6d657373616765223b733a333a226e6577223b7d),
(15, '::1', 1610204301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230343330313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(16, '::1', 1610205388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230353338383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(17, '::1', 1610205401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230353430313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31363a224c6f67696e205375636365737366756c223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226e6577223b7d),
(18, '::1', 1610205401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230353430313b),
(19, '::1', 1610205976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230353937363b),
(20, '::1', 1610205983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230353938333b),
(21, '::1', 1610205992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230353939323b),
(22, '::1', 1610205995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230353939353b),
(23, '::1', 1610206171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230363137313b),
(24, '::1', 1610206265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230363236353b),
(25, '::1', 1610207714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230373731343b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(26, '::1', 1610207727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230373732373b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31363a224c6f67696e205375636365737366756c223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226e6577223b7d),
(27, '::1', 1610207727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230373732373b),
(28, '::1', 1610207882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230373838323b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(29, '::1', 1610208014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383031343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31363a224c6f67696e205375636365737366756c223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226e6577223b7d),
(30, '::1', 1610208014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383031343b),
(31, '::1', 1610208696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383639363b),
(32, '::1', 1610208700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383730303b),
(33, '::1', 1610208713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383731333b),
(34, '::1', 1610208716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383731363b),
(35, '::1', 1610208803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383830333b),
(36, '::1', 1610208808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383830383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(37, '::1', 1610208846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383834363b),
(38, '::1', 1610208862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383836323b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
(39, '::1', 1610208864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383836343b),
(2147483647, '::1', 1610208887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303230383838373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(1, 'Class One', 'class1', 1),
(3, 'Class Three', 'class3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

DROP TABLE IF EXISTS `class_routine`;
CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_start_min` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end_min` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`class_routine_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `section_id`, `subject_id`, `time_start`, `time_end`, `time_start_min`, `time_end_min`, `day`, `year`) VALUES
(1, 1, 1, 3, '6', '7', '30', '45', 'tuesday', '2021-2022'),
(3, 1, 4, 4, '14', '16', '0', '0', 'saturday', '2021-2022'),
(4, 1, 4, 3, '14', '15', '30', '30', 'sunday', '2021-2022'),
(5, 3, 3, 1, '17', '19', '10', '10', 'monday', '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
CREATE TABLE IF NOT EXISTS `club` (
  `club_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `description`, `date`) VALUES
(1, 'MBSTU CDC Club', 'The MBSTU CDC Club is a cultural club that is very helpful for students.', '2021-01-14'),
(2, 'MBSTU Career Club', 'The MBSTU Career Club is a club that is very helpful for students.', '2021-01-14'),
(5, 'MBSTU Science Club', 'The MBSTU Science Club is an inventorial club that is very helpful for students.', '2020-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `department_code`) VALUES
(10, 'Teacher', '80d9f5948c7deef');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
CREATE TABLE IF NOT EXISTS `designation` (
  `designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `name`, `department_id`) VALUES
(1, 'Professor', 10),
(2, 'Dept. of Chairman', 10),
(3, 'President, Teacher Association', 10);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE IF NOT EXISTS `dormitory` (
  `dormitory_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `hostel_category_id` int(11) NOT NULL,
  `capacity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dormitory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `hostel_room_id`, `hostel_category_id`, `capacity`, `address`, `description`) VALUES
(1, 'BSMRH', 6, 1, '500', 'Tangail, Dhaka, Bangladesh', 'This is for male students. It is for testing purposes.'),
(2, 'Mannan Hall', 5, 1, '100', 'Dhaka, Bangladesh', 'This is for new students.11');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom_to_meet` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_category`
--

DROP TABLE IF EXISTS `enquiry_category`;
CREATE TABLE IF NOT EXISTS `enquiry_category` (
  `enquiry_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`enquiry_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_category`
--

INSERT INTO `enquiry_category` (`enquiry_category_id`, `category`, `purpose`, `whom`) VALUES
(1, 'Admission Test', 'Admission', 'Anyone');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `comment`, `timestamp`) VALUES
(1, '1st year 1st Semester', 'This question paper is for first-term students', '2021-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE IF NOT EXISTS `exam_question` (
  `exam_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`exam_question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question`
--

INSERT INTO `exam_question` (`exam_question_id`, `name`, `teacher_id`, `subject_id`, `description`, `class_id`, `file_name`, `file_type`, `timestamp`, `status`) VALUES
(1, 'First term exam', '1', '3', 'This question paper is for first-term students.', '1', 'IT14021_IT15012.pdf', 'pdf', '2021-01-29', '1');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

DROP TABLE IF EXISTS `expense_category`;
CREATE TABLE IF NOT EXISTS `expense_category` (
  `expense_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`expense_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`expense_category_id`, `name`) VALUES
(1, 'Administrator Purpose'),
(3, 'School Purpose');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
CREATE TABLE IF NOT EXISTS `hostel` (
  `hostel_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostel_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `name`, `hostel_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`) VALUES
(2, 'Hostel', '96bd5446db', '2021-01-16', 'Female', 'Islam', 'O+', 'Dhaka, Bangladesh', '78465864574', 'hostel@gmail.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'Declaration.docx', '8cb2237d0679ca88db6464eac60da96345513964', '0'),
(3, 'Forhad', 'd0e384e361', '2021-01-16', 'Male', 'Islam', 'B+', 'Dhaka, Bangladesh', '01772308391', 'hostel1@gmail.com', 'forhad', 'twitter', 'googleplus', 'forhad', 'B.Sc', 'Single', 'IT14021_IT15012.pdf', 'c86ae5793c7c53f188896dc5e9a39ec8216d81a3', '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_category`
--

DROP TABLE IF EXISTS `hostel_category`;
CREATE TABLE IF NOT EXISTS `hostel_category` (
  `hostel_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hostel_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_category`
--

INSERT INTO `hostel_category` (`hostel_category_id`, `name`, `description`) VALUES
(1, 'Male', 'This is a male student.'),
(2, 'Female', 'This is a female student.');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_room`
--

DROP TABLE IF EXISTS `hostel_room`;
CREATE TABLE IF NOT EXISTS `hostel_room` (
  `hostel_room_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `room_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `num_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hostel_room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_room`
--

INSERT INTO `hostel_room` (`hostel_room_id`, `name`, `room_type`, `num_bed`, `cost_bed`, `description`) VALUES
(4, 'Room One', 'Single', '11', '500', 'Testing purpose. Testing purpose.'),
(5, 'Room 2', 'Single', '10', '200', 'Testing purpose.'),
(6, 'Room 3', 'Double', '15', '1000', 'Testing purpose.');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
CREATE TABLE IF NOT EXISTS `house` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`house_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`house_id`, `name`, `description`) VALUES
(4, 'Green House', 'This is a very beautiful house.'),
(3, 'Yellow House', 'This is a very beautiful house.');

-- --------------------------------------------------------

--
-- Table structure for table `hrm`
--

DROP TABLE IF EXISTS `hrm`;
CREATE TABLE IF NOT EXISTS `hrm` (
  `hrm_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hrm_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hrm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrm`
--

INSERT INTO `hrm` (`hrm_id`, `name`, `hrm_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`) VALUES
(1, 'Human Resources', 'cfb31207f1', '2021-01-16', 'Male', 'Islam', 'O+', 'Dhaka', '784658645744567', 'hrm@gmail.com', 'admin', 'admin', 'admin', 'admin', 'B.Sc', 'Married', 'coverpage.docx', '8cb2237d0679ca88db6464eac60da96345513964', '0');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `creation_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_number`, `student_id`, `title`, `description`, `amount`, `discount`, `amount_paid`, `due`, `creation_timestamp`, `payment_method`, `status`, `year`) VALUES
(3, '1093756', 1, 'Meeting for off start', 'description', 5000, 0, 5000, 0, '2021-01-30', '2', 1, '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext,
  `bengali` longtext,
  `arabic` longtext,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `arabic`) VALUES
(1, 'Manage Language', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

DROP TABLE IF EXISTS `leave`;
CREATE TABLE IF NOT EXISTS `leave` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
CREATE TABLE IF NOT EXISTS `librarian` (
  `librarian_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `librarian_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`librarian_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`librarian_id`, `name`, `librarian_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`) VALUES
(1, 'Librarian', '838e816663', '2021-01-15', 'Male', 'Islam', 'O+', 'Dhaka, Bangladesh', '78465864574', 'librarian@gmail.com', 'admin', 'admin', 'admin', 'admin', 'PhD', 'Married', 'coverletter.docx', '8cb2237d0679ca88db6464eac60da96345513964', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_score1` int(11) NOT NULL,
  `class_score2` int(11) NOT NULL,
  `class_score3` int(11) NOT NULL,
  `exam_score` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`mark_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `exam_id`, `class_id`, `class_score1`, `class_score2`, `class_score3`, `exam_score`, `comment`) VALUES
(1, 1, 3, 1, 1, 8, 8, 10, 65, 'Good'),
(2, 1, 4, 1, 1, 8, 10, 9, 65, 'Good'),
(3, 3, 1, 1, 3, 10, 8, 10, 65, 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `name`, `class_id`, `subject_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`) VALUES
(1, 'Study Material', 1, 3, 1, 'Description of study material.', 'Manage CircularSchool Management System.pdf', 'pdf', '2021-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

DROP TABLE IF EXISTS `noticeboard`;
CREATE TABLE IF NOT EXISTS `noticeboard` (
  `noticeboard_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`noticeboard_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`noticeboard_id`, `title`, `location`, `timestamp`, `description`) VALUES
(1, 'For result discussion Final Year Student.', 'School', 1612029600, 'For result discussion'),
(2, 'For Admission Test', 'School', 1612029600, 'For Admission Test');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `login_status`) VALUES
(1, 'Parent', 'parent@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '+8801913052525', 'Dhaka', 'Jnr.Developer', '0'),
(3, 'Parent1', 'parent1@gmail.com', '411f59c16d07dfbc60fb633faa92014284c77c76', '+8801772308391', 'Jamalpur', 'Developer', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `invoice_id`, `student_id`, `method`, `description`, `amount`, `discount`, `timestamp`, `year`) VALUES
(1, '1', 'Administrator Guest', 'expense', '', '', '1', 'This is the first demo.', '2000', '', '2021-01-18', '2021-2022'),
(2, '3', 'Meeting for student', 'expense', '', '', '2', 'Meeting for off start', '15000', '', '2021-01-30', '2021-2022'),
(3, '3', 'Meeting for parents', 'expense', '', '', '3', 'Meeting for off start', '10000', '', '2021-01-05', '2021-2022'),
(6, '', 'Meeting for off start', 'income', '3', '1', '2', 'description', '5000', '0', '2021-01-30', '2021-2022'),
(11, '1', 'Administrator Guest', 'expense', '', '', '2', 'Description', '20000', '', '2021-02-03', '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
CREATE TABLE IF NOT EXISTS `payroll` (
  `payroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `payroll_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `allowances` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deductions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payroll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`payroll_id`, `payroll_code`, `user_id`, `allowances`, `deductions`, `date`, `status`) VALUES
(1, '5690177', '1', '[{\"type\":\"food\",\"amount\":\"10000\"},{\"type\":\"hospital\",\"amount\":\"5000\"}]', '[{\"type\":\"tax\",\"amount\":\"5000\"}]', '2,2022', '1'),
(2, '1c678b2', '3', '[{\"type\":\"sports\",\"amount\":\"5000\"},{\"type\":\"health\",\"amount\":\"5000\"}]', '[{\"type\":\"tax\",\"amount\":\"5000\"}]', '7,2021', '0');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `publisher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `description`) VALUES
(1, 'Publisher', 'publisher description.'),
(3, 'Publisher New', 'Description.');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES
(1, 'Section A', 'A', 1, 1),
(3, 'Section C', 'C', 3, 3),
(4, 'Section B', 'B', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `type`, `description`) VALUES
(1, 'system_name', 'SCHOOL MANAGEMENT SYSTEM'),
(2, 'system_title', 'School Management System'),
(3, 'address', 'Jamalpur, Dhaka, Bangladesh.'),
(4, 'phone', '+8801772308391'),
(6, 'currency', 'Tk'),
(7, 'system_email', 'forhad@gmail.com'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(16, 'skin_colour', 'green'),
(21, 'session', '2021-2022'),
(22, 'footer', 'Developed by Md. Forhad Hossain. All Right Reserved (2021)'),
(116, 'paypal_email', 'clone@paypalemail.com'),
(119, 'stripe_setting', '[{\"stripe_active\":\"1\",\"testmode\":\"off\",\"secret_key\":\"test secret key\",\"public_key\":\"test public key\",\"secret_live_key\":\"live secret key\",\"public_live_key\":\"live public key\"}]'),
(120, 'paypal_setting', '[{\"paypal_active\":\"1\",\"paypal_mode\":\"sandbox\",\"sandbox_client_id\":\"client id sandbox\",\"production_client_id\":\"client id production\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
CREATE TABLE IF NOT EXISTS `sms_settings` (
  `sms_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sms_setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`sms_setting_id`, `type`, `info`) VALUES
(1, 'clickatell_username', 'clickatell username'),
(2, 'clickatell_password', 'clickatell password'),
(3, 'clickatell_apikey', 'clickatell api'),
(4, 'msg91_authentication_key', 'msg91 auth_key'),
(5, 'msg91_sender_id', 'sender id'),
(6, 'msg91_route', 'route'),
(7, 'msg91_country_code', 'country code'),
(8, 'active_sms_gateway', 'clickatell');

-- --------------------------------------------------------

--
-- Table structure for table `social_category`
--

DROP TABLE IF EXISTS `social_category`;
CREATE TABLE IF NOT EXISTS `social_category` (
  `social_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`social_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_category`
--

INSERT INTO `social_category` (`social_category_id`, `name`, `colour`, `icon`, `description`) VALUES
(1, 'Book', 'primary', 'fa-book', 'Study with my partner.');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `place_birth` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_tongue` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nationality` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ps_attended` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ps_address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ps_purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_study` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_of_leaving` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `am_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tran_cert` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob_cert` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark_join` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `physical_h` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `roll` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `student_category_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `card_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `issue_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dormitory_room_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `more_entries` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `age`, `place_birth`, `sex`, `m_tongue`, `religion`, `blood_group`, `address`, `city`, `state`, `nationality`, `phone`, `email`, `ps_attended`, `ps_address`, `ps_purpose`, `class_study`, `date_of_leaving`, `am_date`, `tran_cert`, `dob_cert`, `mark_join`, `physical_h`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `house_id`, `student_category_id`, `club_id`, `session`, `card_number`, `issue_date`, `expire_date`, `dormitory_room_number`, `more_entries`, `login_status`) VALUES
(1, 'Forhad Hossain', '12/30/1996', '24', 'Jamalpur', 'male', 'Bangali', 'Islam', 'B+', 'Jamalpur', 'Jamalpur', 'Bangladesh', 'Bangladeshi', '01772308391', 'student@gmail.com', 'School Name', 'The address', 'purpose of living', 'Class 10', '2021-02-05', '2021-02-05', 'Yes', 'Yes', 'Yes', 'No', 'c86ae5793c7c53f188896dc5e9a39ec8216d81a3', '', '', '1', 1, 1, 'a12e9c6', 1, 1, 3, 3, 5, '2021-2022', '', '', '', '', '', '0'),
(3, 'Student', '02/01/2000', '21', 'Jamalpur', 'male', 'Bengali', 'Islam', 'O+', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', 'Bangladesh', 'Bangladeshi', '01772308391', 'student1@gmail.com', 'School Name', 'Dhaka, Bangladesh', 'purpose of living', 'Class 10', '2021-02-05', '2021-02-05', 'Yes', 'Yes', 'Yes', 'No', '8cb2237d0679ca88db6464eac60da96345513964', '', '', '3', 3, 3, '4236edb', 1, 1, 4, 3, 5, '2021-2022', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_category`
--

DROP TABLE IF EXISTS `student_category`;
CREATE TABLE IF NOT EXISTS `student_category` (
  `student_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`student_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_category`
--

INSERT INTO `student_category` (`student_category_id`, `name`, `description`) VALUES
(1, 'Morning shift', 'It starts from 7 am -11 am.'),
(3, 'Day shift', 'It starts from 10 am -2 pm.');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, 'Physics', 3, 3),
(3, 'Chemistry', 1, 1),
(4, 'Biology', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `date_of_joining` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `joining_salary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `date_of_leaving` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_id` int(11) NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `role`, `teacher_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `department_id`, `designation_id`, `date_of_joining`, `joining_salary`, `status`, `date_of_leaving`, `bank_id`, `login_status`) VALUES
(1, 'Forhad Hossain', '2', 'e62e547', '1996-12-31', 'Male', 'Islam', 'B+', 'Dhaka, Bangladesh', '01772308391', 'teacher12@gmail.com', 'forhad', 'forhad', 'forhad', 'forhad', 'B.Sc', 'Single', 'IT14021_IT15012.pdf', 'c86ae5793c7c53f188896dc5e9a39ec8216d81a3', 10, 1, '2021-01-05', '1000000', 1, '', 1, ''),
(3, 'Teacher', '1', '0b43385', '2021-01-01', 'Female', 'Islam', 'O+', 'Dhaka, Bangladesh', '78465864574', 'teacher@gmail.com', 'forhad', 'twitter', 'googleplus', 'linkedin', 'B.Sc', 'Married', 'Approval.docx', '8cb2237d0679ca88db6464eac60da96345513964', 10, 2, '2021-01-20', '50000', 1, '', 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `transport_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transport_route_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `route_fare` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transport_id`, `name`, `transport_route_id`, `vehicle_id`, `route_fare`, `description`) VALUES
(1, 'Student', 4, 3, '2000', 'This is a demo for the new students'),
(3, 'Teacher', 1, 1, '500', 'This is both for student and teacher.');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

DROP TABLE IF EXISTS `transport_route`;
CREATE TABLE IF NOT EXISTS `transport_route` (
  `transport_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`transport_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_route`
--

INSERT INTO `transport_route` (`transport_route_id`, `name`, `description`) VALUES
(1, 'Dhaka to Sylhet', 'This is the first journey for new students.'),
(3, 'Dhaka to Barisal', 'This is the second journey for new students'),
(4, 'Dhaka to Khulna', 'This is the third journey for new students');

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

DROP TABLE IF EXISTS `vacancy`;
CREATE TABLE IF NOT EXISTS `vacancy` (
  `vacancy_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vacancies` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`vacancy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`vacancy_id`, `name`, `number_of_vacancies`, `last_date`) VALUES
(1, 'Librarian Post', '10', '2021-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_model` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year_made` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_license` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_contact` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `name`, `vehicle_number`, `vehicle_model`, `vehicle_quantity`, `year_made`, `driver_name`, `driver_license`, `driver_contact`, `description`, `status`) VALUES
(1, 'BMW', 'bmw12', 'bmw new', '2', '2020', 'BMW Driver', 'li1234', 'phone:4636665456\r\nDhaka, Bangladesh', 'This is for new students and new teachers', 'available'),
(3, 'Toyota', 'toyota12', 'toyota new', '5', '2021', 'Toyota Driver', 'toyota1234', 'phone:736572366587', 'This is for the senior teacher.', 'available');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
