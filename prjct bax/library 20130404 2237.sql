-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.40-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema library
--

CREATE DATABASE IF NOT EXISTS library;
USE library;

--
-- Definition of table `biotechbookreg`
--

DROP TABLE IF EXISTS `biotechbookreg`;
CREATE TABLE `biotechbookreg` (
  `bookid` varchar(15) NOT NULL,
  `isbn` varchar(15) DEFAULT NULL,
  `callnum` varchar(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `edition` varchar(30) DEFAULT NULL,
  `pob` varchar(30) DEFAULT NULL,
  `nob` varchar(30) DEFAULT NULL,
  `yob` varchar(10) DEFAULT NULL,
  `pagenum` varchar(25) DEFAULT NULL,
  `series` varchar(25) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `doa` varchar(20) DEFAULT NULL,
  `source` varchar(30) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biotechbookreg`
--

/*!40000 ALTER TABLE `biotechbookreg` DISABLE KEYS */;
INSERT INTO `biotechbookreg` (`bookid`,`isbn`,`callnum`,`title`,`author`,`edition`,`pob`,`nob`,`yob`,`pagenum`,`series`,`type`,`doa`,`source`,`cost`,`status`) VALUES 
 ('786','786','68','68','76','8','768','7','68','6','86','8','8','768','76.00','8768');
/*!40000 ALTER TABLE `biotechbookreg` ENABLE KEYS */;


--
-- Definition of table `biotechpatron`
--

DROP TABLE IF EXISTS `biotechpatron`;
CREATE TABLE `biotechpatron` (
  `uid` varchar(15) NOT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `doj` varchar(20) DEFAULT NULL,
  `batch` varchar(15) DEFAULT NULL,
  `rollnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biotechpatron`
--

/*!40000 ALTER TABLE `biotechpatron` DISABLE KEYS */;
INSERT INTO `biotechpatron` (`uid`,`uname`,`dob`,`address`,`place`,`pincode`,`phone`,`email`,`doj`,`batch`,`rollnumber`) VALUES 
 ('102','sreejith','26-01-1991','km h','manjeri',676509,9809856484,'info4shajeer@gmail.com','23-01-2011','2011-14',90),
 ('76786','87','76','68','8',68,868,'6','87','68',76);
/*!40000 ALTER TABLE `biotechpatron` ENABLE KEYS */;


--
-- Definition of table `biotechtrans`
--

DROP TABLE IF EXISTS `biotechtrans`;
CREATE TABLE `biotechtrans` (
  `trid` varchar(15) NOT NULL,
  `bookid` varchar(15) DEFAULT NULL,
  `doi` varchar(20) DEFAULT NULL,
  `dor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `biotechtrans_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `biotechbookreg` (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biotechtrans`
--

/*!40000 ALTER TABLE `biotechtrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `biotechtrans` ENABLE KEYS */;


--
-- Definition of table `btechbookreg`
--

DROP TABLE IF EXISTS `btechbookreg`;
CREATE TABLE `btechbookreg` (
  `bookid` varchar(15) NOT NULL,
  `isbn` varchar(15) DEFAULT NULL,
  `callnum` varchar(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `edition` varchar(30) DEFAULT NULL,
  `pob` varchar(30) DEFAULT NULL,
  `nob` varchar(30) DEFAULT NULL,
  `yob` varchar(10) DEFAULT NULL,
  `pagenum` varchar(25) DEFAULT NULL,
  `series` varchar(25) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `doa` varchar(20) DEFAULT NULL,
  `source` varchar(30) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btechbookreg`
--

/*!40000 ALTER TABLE `btechbookreg` DISABLE KEYS */;
INSERT INTO `btechbookreg` (`bookid`,`isbn`,`callnum`,`title`,`author`,`edition`,`pob`,`nob`,`yob`,`pagenum`,`series`,`type`,`doa`,`source`,`cost`,`status`) VALUES 
 ('76','8768','87','68','76','8','68','6','8','68','6','86','88','768','76.00','86');
/*!40000 ALTER TABLE `btechbookreg` ENABLE KEYS */;


--
-- Definition of table `btechpatron`
--

DROP TABLE IF EXISTS `btechpatron`;
CREATE TABLE `btechpatron` (
  `uid` varchar(15) NOT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `doj` varchar(20) DEFAULT NULL,
  `batch` varchar(15) DEFAULT NULL,
  `rollnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btechpatron`
--

/*!40000 ALTER TABLE `btechpatron` DISABLE KEYS */;
INSERT INTO `btechpatron` (`uid`,`uname`,`dob`,`address`,`place`,`pincode`,`phone`,`email`,`doj`,`batch`,`rollnumber`) VALUES 
 ('103','suhail','26-01-1993','kpp ','calicut',654427,9809856484,'iamshajeer@yahoo.com','','',41),
 ('7878','878','97','7987','79',87,9,'7','987','7',98);
/*!40000 ALTER TABLE `btechpatron` ENABLE KEYS */;


--
-- Definition of table `btechtrans`
--

DROP TABLE IF EXISTS `btechtrans`;
CREATE TABLE `btechtrans` (
  `trid` varchar(15) NOT NULL,
  `bookid` varchar(15) DEFAULT NULL,
  `doi` varchar(20) DEFAULT NULL,
  `dor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `btechtrans_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `btechbookreg` (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btechtrans`
--

/*!40000 ALTER TABLE `btechtrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `btechtrans` ENABLE KEYS */;


--
-- Definition of table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dptid` varchar(15) NOT NULL,
  `dptname` varchar(30) DEFAULT NULL,
  `lname` varchar(35) DEFAULT NULL,
  `lid` varchar(15) DEFAULT NULL,
  `lpassword` varchar(35) DEFAULT NULL,
  `lnumber` bigint(20) DEFAULT NULL,
  `laddress` varchar(150) DEFAULT NULL,
  `lmail` varchar(100) DEFAULT NULL,
  `lplace` varchar(50) DEFAULT NULL,
  `lpin` int(11) DEFAULT NULL,
  PRIMARY KEY (`dptid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`dptid`,`dptname`,`lname`,`lid`,`lpassword`,`lnumber`,`laddress`,`lmail`,`lplace`,`lpin`) VALUES 
 ('mba01','mba','mbalib','admin','admin',9809856484,'naghi','iamshajeer@gmail.com','illa',676509),
 ('mca100','Mca','shajeerkpahamed','shajeer','sha123',9809856484,'kp h','iamshajeer@gmail.com','manjeri',676509);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


--
-- Definition of table `mbabookreg`
--

DROP TABLE IF EXISTS `mbabookreg`;
CREATE TABLE `mbabookreg` (
  `bookid` varchar(15) NOT NULL,
  `isbn` varchar(15) DEFAULT NULL,
  `callnum` varchar(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `edition` varchar(30) DEFAULT NULL,
  `pob` varchar(30) DEFAULT NULL,
  `nob` varchar(30) DEFAULT NULL,
  `yob` varchar(10) DEFAULT NULL,
  `pagenum` varchar(25) DEFAULT NULL,
  `series` varchar(25) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `doa` varchar(20) DEFAULT NULL,
  `source` varchar(30) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbabookreg`
--

/*!40000 ALTER TABLE `mbabookreg` DISABLE KEYS */;
INSERT INTO `mbabookreg` (`bookid`,`isbn`,`callnum`,`title`,`author`,`edition`,`pob`,`nob`,`yob`,`pagenum`,`series`,`type`,`doa`,`source`,`cost`,`status`) VALUES 
 ('9898','787','98','7','987','98','7','987','9','879','87','979','879','8788','787.00','6');
/*!40000 ALTER TABLE `mbabookreg` ENABLE KEYS */;


--
-- Definition of table `mbapatron`
--

DROP TABLE IF EXISTS `mbapatron`;
CREATE TABLE `mbapatron` (
  `uid` varchar(15) NOT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `doj` varchar(20) DEFAULT NULL,
  `batch` varchar(15) DEFAULT NULL,
  `rollnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbapatron`
--

/*!40000 ALTER TABLE `mbapatron` DISABLE KEYS */;
INSERT INTO `mbapatron` (`uid`,`uname`,`dob`,`address`,`place`,`pincode`,`phone`,`email`,`doj`,`batch`,`rollnumber`) VALUES 
 ('101','vipin','87878','k h','manjeri',676598,87878,'iamshajeer@yahoo.com','23-01-2011','2011-14',23),
 ('mba123','vipin','26-01-1991','kam h','manjeri',676598,9809856484,'iamshajeer@yahoo.com','jh','2011-14',23);
/*!40000 ALTER TABLE `mbapatron` ENABLE KEYS */;


--
-- Definition of table `mbatrans`
--

DROP TABLE IF EXISTS `mbatrans`;
CREATE TABLE `mbatrans` (
  `trid` varchar(15) NOT NULL,
  `bookid` varchar(15) DEFAULT NULL,
  `doi` varchar(20) DEFAULT NULL,
  `dor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `mbatrans_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `mbabookreg` (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbatrans`
--

/*!40000 ALTER TABLE `mbatrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbatrans` ENABLE KEYS */;


--
-- Definition of table `mcabookreg`
--

DROP TABLE IF EXISTS `mcabookreg`;
CREATE TABLE `mcabookreg` (
  `bookid` varchar(15) NOT NULL,
  `isbn` varchar(15) DEFAULT NULL,
  `callnum` varchar(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `edition` varchar(30) DEFAULT NULL,
  `pob` varchar(30) DEFAULT NULL,
  `nob` varchar(30) DEFAULT NULL,
  `yob` varchar(10) DEFAULT NULL,
  `pagenum` varchar(25) DEFAULT NULL,
  `series` varchar(25) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `doa` varchar(20) DEFAULT NULL,
  `source` varchar(30) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcabookreg`
--

/*!40000 ALTER TABLE `mcabookreg` DISABLE KEYS */;
INSERT INTO `mcabookreg` (`bookid`,`isbn`,`callnum`,`title`,`author`,`edition`,`pob`,`nob`,`yob`,`pagenum`,`series`,`type`,`doa`,`source`,`cost`,`status`) VALUES 
 ('123','65656','65665','os','me','illa','manjeri','shaj','1990','6','57','man','naghi','parent','1500.87','alive'),
 ('6567','76576','65','657','65','765','7','657','5','7','57','5','75','7','57.00','5'),
 ('65765','76','65','765','7','657','65','7','657','65','7','57','5','75','7.00','57'),
 ('asd','asd','asd','os','me','illa','pob','nob','yob','pn','srs','typ','doa','src','123.65','stst'),
 ('shajeer','787','87','8','78','78','7','87','8','78','78878','878','87','87','8.00','7878');
/*!40000 ALTER TABLE `mcabookreg` ENABLE KEYS */;


--
-- Definition of table `mcaissue`
--

DROP TABLE IF EXISTS `mcaissue`;
CREATE TABLE `mcaissue` (
  `transid` varchar(15) NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `issuedate` varchar(20) DEFAULT NULL,
  `renewaldate` varchar(20) DEFAULT NULL,
  `userid` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`transid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcaissue`
--

/*!40000 ALTER TABLE `mcaissue` DISABLE KEYS */;
INSERT INTO `mcaissue` (`transid`,`title`,`author`,`issuedate`,`renewaldate`,`userid`) VALUES 
 ('3556','os','me','04-04-2013','18-04-2013','asd');
/*!40000 ALTER TABLE `mcaissue` ENABLE KEYS */;


--
-- Definition of table `mcapatron`
--

DROP TABLE IF EXISTS `mcapatron`;
CREATE TABLE `mcapatron` (
  `uid` varchar(15) NOT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `doj` varchar(20) DEFAULT NULL,
  `batch` varchar(15) DEFAULT NULL,
  `rollnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcapatron`
--

/*!40000 ALTER TABLE `mcapatron` DISABLE KEYS */;
INSERT INTO `mcapatron` (`uid`,`uname`,`dob`,`address`,`place`,`pincode`,`phone`,`email`,`doj`,`batch`,`rollnumber`) VALUES 
 ('shajeerkp','shajeer','1991-02-26','kp h','manjeri',676509,9809856484,'info4shajeer@gmail.com','23-01-2011','2011-14',42);
/*!40000 ALTER TABLE `mcapatron` ENABLE KEYS */;


--
-- Definition of table `mcatrans`
--

DROP TABLE IF EXISTS `mcatrans`;
CREATE TABLE `mcatrans` (
  `trid` varchar(15) NOT NULL,
  `bookid` varchar(15) DEFAULT NULL,
  `doi` varchar(20) DEFAULT NULL,
  `dor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `mcatrans_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `mcabookreg` (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcatrans`
--

/*!40000 ALTER TABLE `mcatrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcatrans` ENABLE KEYS */;


--
-- Definition of table `transactiontab`
--

DROP TABLE IF EXISTS `transactiontab`;
CREATE TABLE `transactiontab` (
  `trid` varchar(15) NOT NULL,
  `bookid` varchar(15) DEFAULT NULL,
  `doi` varchar(20) DEFAULT NULL,
  `dor` varchar(20) DEFAULT NULL,
  `uid` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`trid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiontab`
--

/*!40000 ALTER TABLE `transactiontab` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactiontab` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
