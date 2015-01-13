-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2015 at 12:51 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quizzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `choice` text COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_bin AUTO_INCREMENT=12 ;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `choice`) VALUES
(1, 1, 1, 0x5048503a204879706572746578742050726570726f636573736f72),
(2, 1, 0, 0x5072697661746520486f6d652050616765),
(3, 1, 0, 0x506572736f6e616c20486f6d652050616765),
(4, 1, 0, 0x506572736f6e616c204879706572746578742050726570726f636573736f72),
(5, 2, 0, 0x446f63756d656e742e5772697465282248656c6c6f20576f726c6422293b),
(6, 2, 1, 0x6563686f202248656c6c6f20576f726c64223b),
(7, 2, 0, 0x2248656c6c6f20576f726c64223b),
(8, 3, 0, 0x415350),
(9, 3, 0, 0x52554259),
(10, 3, 0, 0x4e6f64652e6a73),
(11, 3, 1, 0x504850);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `question` text COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`question_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question`) VALUES
(1, 0x5768617420646f657320504850207374616e6420666f723f),
(2, 0x486f7720646f20796f75207772697465202248656c6c6f20576f726c6420696e20504850223f),
(3, 0x5768617420697320746865206265737420736572766572207369646520736372697074696e67206c616e67756167653f);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
