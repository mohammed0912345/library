-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2020 at 12:14 PM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AdminEmail` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Mohamed Khalil', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-11-27 21:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

DROP TABLE IF EXISTS `tblauthors`;
CREATE TABLE IF NOT EXISTS `tblauthors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'andrew tanenbaum', '2017-07-08 12:49:09', '2020-11-27 21:30:23'),
(2, 'Stephen Hawking', '2017-07-08 14:30:23', '2020-11-27 21:33:17'),
(3, 'Paul Deitel', '2017-07-08 14:35:08', '2020-11-27 21:38:12'),
(4, 'David J. Eck', '2017-07-08 14:35:21', '2020-11-27 21:35:52'),
(5, 'Frederick Douglass', '2017-07-08 14:35:36', '2020-11-27 21:42:00'),
(12, 'Larry Ullman', '2020-11-27 21:55:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

DROP TABLE IF EXISTS `tblbooks`;
CREATE TABLE IF NOT EXISTS `tblbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(3, 'A Memoir of Friendship and Physics', 6, 2, 1111, 4500, '2017-07-08 20:17:31', '2020-11-27 21:33:04'),
(5, 'PHP Advanced and Object-Oriented Programming', 5, 12, 124565, 105, '2020-11-27 16:42:38', '2020-11-27 21:55:32'),
(7, 'Java How to Program', 5, 3, 12547, 1000, '2020-11-27 21:28:25', '2020-11-27 21:37:40'),
(8, 'Introduction to Programming Using Java', 5, 4, 5265, 1500, '2020-11-27 21:29:08', '2020-11-27 21:36:18'),
(9, 'Narrative of the Life of Frederick Douglass, an American Slave', 8, 5, 32587, 5000, '2020-11-27 21:29:39', '2020-11-27 21:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'سياسة', 1, '2020-11-10 05:31:03', '2020-11-28 05:32:09'),
(5, 'تقنية', 1, '2020-11-07 05:31:07', '2020-11-28 05:32:09'),
(6, 'علوم', 1, '2020-11-25 00:31:09', '2020-11-28 05:32:09'),
(7, 'ادارة', 1, '2020-11-27 20:17:16', '2020-11-28 05:32:09'),
(8, 'تاريخ', 1, '2020-11-18 16:00:23', '2020-11-28 05:32:09'),
(9, 'عسكرية', 1, '2020-11-28 05:31:31', '2020-11-28 05:32:09'),
(10, 'طب', 1, '2020-11-28 05:31:37', '2020-11-28 05:32:09'),
(11, 'ميكانيكا', 1, '2020-11-28 05:31:41', '2020-11-28 05:32:09'),
(12, 'إلكترونيات', 1, '2020-11-28 05:31:44', '2020-11-28 05:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

DROP TABLE IF EXISTS `tblissuedbookdetails`;
CREATE TABLE IF NOT EXISTS `tblissuedbookdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(10, 5, 'SID009', '2020-11-27 21:58:13', NULL, NULL, NULL),
(11, 8, 'SID010', '2020-11-27 21:59:24', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE IF NOT EXISTS `tblstudents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FullName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailId` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobileNumber` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentId` (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'أحمد محمد', 'ahmed@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2020-10-16 05:28:45', '2020-11-28 05:28:53'),
(4, 'SID005', 'خالد علي', 'khalid@gmail.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 1, '2020-09-23 05:28:54', '2020-11-28 05:28:57'),
(8, 'SID009', 'محمد خليل', 'm.khalil@gmail.com', '0900000000', 'e10adc3949ba59abbe56e057f20f883e', 1, '2020-11-03 05:28:58', '2020-11-28 05:29:05'),
(9, 'SID010', 'عثمان', 'osman@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2020-06-15 22:15:32', '2020-11-28 05:29:31'),
(10, 'SID011', 'علي محمد', 'ali@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2020-11-28 21:29:33', '2020-11-28 05:29:37');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
