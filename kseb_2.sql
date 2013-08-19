-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2013 at 04:34 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kseb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtender`
--

CREATE TABLE IF NOT EXISTS `addtender` (
  `tender_id` int(11) NOT NULL AUTO_INCREMENT,
  `tender_name` varchar(40) DEFAULT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(15) NOT NULL,
  `start_date` varchar(30) DEFAULT NULL,
  `end_date` varchar(30) DEFAULT NULL,
  `tender_details` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`tender_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=820 ;

--
-- Dumping data for table `addtender`
--

INSERT INTO `addtender` (`tender_id`, `tender_name`, `product_name`, `quantity`, `price`, `status`, `start_date`, `end_date`, `tender_details`) VALUES
(122, 'Cutting post', '', 0, 0, '', '2013-03-05', '2013-03-13', NULL),
(129, 'dsfdsf', '', 0, 0, '', '2013-03-14', '2013-03-16', 'vcxvcxvxvcxvc'),
(130, 'change lamb', '', 0, 0, '', '2013-03-12', '2013-03-16', 'der'),
(150, 'Remove post', '', 0, 0, '', '2013-03-15', '2013-03-22', 'ffsdfdsfsf'),
(180, 'ghg', '', 0, 0, '', '2013-03-15', '2013-03-12', 'fhhgh'),
(215, 'Change post', '', 0, 0, '', '2013-04-15', '2013-04-19', 'change the post'),
(800, 'Place street light', '', 0, 0, '', '2013-04-04', '2013-04-25', 'supply meterials for street lighting'),
(801, 'jhf', 'fjjffj', 23, 23, 'running', NULL, '2013-05-01', ' ffjjfjf'),
(802, 'hhffg', 'ffhfh', 67, 7585, 'running', NULL, '2013-06-01', ' kkgkgk'),
(803, 'hhdg', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' dnnnd'),
(804, '', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' dnnnd'),
(805, '', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' dnnnd'),
(806, '', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' dnnnd'),
(807, 'hgg', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' dnnnd'),
(808, 'hgg', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' dnnnd'),
(809, 'hgg', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' dnnnd'),
(810, 'nnn', 'nnn', 65, 76, 'running', NULL, '2013-05-25', ' jjj'),
(811, 'nnn', 'nnn', 65, 76, 'running', NULL, '2013-05-25', ' jjj'),
(812, 'nnn', 'nnn', 65, 76, 'running', NULL, '2013-05-25', ' jjj'),
(813, 'jhjhjh', 'hkhk', 56, 76, 'running', NULL, '2013-05-31', ' addssd'),
(814, 'jhjhjh', 'hkhk', 56, 76, 'running', NULL, '2013-05-31', ' addssd'),
(815, 'jhjhjh', 'hkhk', 56, 76, 'running', NULL, '2013-05-31', ' addssd'),
(816, 'jhjhjh', 'hkhk', 56, 76, 'running', NULL, '2013-05-31', ' addssd'),
(817, 'nnn', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' hh'),
(818, 'nnn', 'hhdh', 4, 4, 'running', NULL, '2013-05-31', ' ghhghhg'),
(819, 'nnn', 'hhdh', 4, 4, 'running', NULL, '2013-05-17', ' bnbnn');

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

CREATE TABLE IF NOT EXISTS `banned` (
  `sino` int(11) NOT NULL,
  `isbanned` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bidder`
--

CREATE TABLE IF NOT EXISTS `bidder` (
  `bidderid` int(11) NOT NULL AUTO_INCREMENT,
  `tenderid` int(11) NOT NULL,
  `bidprice` double NOT NULL,
  `yofex` int(11) NOT NULL,
  `nameofbank` varchar(20) NOT NULL,
  `ac_no` varchar(20) NOT NULL,
  `si_no` int(11) NOT NULL,
  PRIMARY KEY (`bidderid`),
  KEY `tenderid` (`tenderid`),
  KEY `si_no` (`si_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `bidder`
--

INSERT INTO `bidder` (`bidderid`, `tenderid`, `bidprice`, `yofex`, `nameofbank`, `ac_no`, `si_no`) VALUES
(1, 129, 34, 4, 'hhghg', 'hhg', 2),
(2, 802, 1234, 5, 'sbt', '7777', 2),
(3, 805, 1234, 5, 'sbt', '7777', 2),
(4, 805, 1234, 5, 'sbt', '7777', 2),
(5, 804, 1234, 67, 'sbt', '7777', 2),
(6, 804, 1234, 67, 'sbt', '7777', 2),
(7, 803, 1234, 5, 'sbt', '7777', 2);

-- --------------------------------------------------------

--
-- Table structure for table `selectbid`
--

CREATE TABLE IF NOT EXISTS `selectbid` (
  `sed` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`sed`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `selectbid`
--

INSERT INTO `selectbid` (`sed`, `vid`, `tid`) VALUES
(89, 2, 129),
(90, 2, 129),
(91, 2, 129),
(92, 2, 129),
(93, 2, 129);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `si_no` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(25) DEFAULT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `pass` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `website` varchar(25) DEFAULT NULL,
  `address` varchar(90) DEFAULT NULL,
  `land_phone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`si_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`si_no`, `company_name`, `user_name`, `pass`, `email`, `website`, `address`, `land_phone`, `mobile`) VALUES
(1, 'escube', 'user', 'pass', 'vdvdvd', 'dvdbdbfb', 'gdfbgdfgbgf', '1234', '12345'),
(2, 'Keltron', 'keltron', 'keltron', 'fzxfczxc', 'vzxcvcxv', 'vxcvcxv', '1234', '12345'),
(3, 'aptech', 'aptech', 'aptech', 'aptech@gmail.com', 'aptech.com', 'revipuram, ernakulam', '12345', '789543'),
(4, 'Niit', 'niit', 'niit', 'niit@gmail.com', 'niit.com', 'ernakulam', '12345', '67895'),
(5, 'asd', 'hh', 'ghghhgg', 'fgdx@fdj.com', 'ssssd.von', ' jjjj', '44444444', '55555555'),
(6, 'ddd', 'nnnnnnnn', 'gggggggggg', 'fgdx@fdj.com', 'ssssd.von', 'dhhdhdh', '44444444', '55555555'),
(7, 'ddd', 'nnnnnnnn', 'dddddddd', 'fgdx@fdj.com', 'ssssd.von', 'dhhdhdh', '44444444', '55555555');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bidder`
--
ALTER TABLE `bidder`
  ADD CONSTRAINT `bidder_ibfk_1` FOREIGN KEY (`tenderid`) REFERENCES `addtender` (`tender_id`),
  ADD CONSTRAINT `bidder_ibfk_2` FOREIGN KEY (`si_no`) REFERENCES `vendor` (`si_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
