/*
SQLyog Community v11.01 (32 bit)
MySQL - 5.0.41-community-nt : Database - eproc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eproc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eproc`;

/*Table structure for table `tbl_reg` */

DROP TABLE IF EXISTS `tbl_reg`;

CREATE TABLE `tbl_reg` (
  `Company_id` varchar(30) NOT NULL default '',
  `Company_name` varchar(30) NOT NULL default '',
  `User_id` varchar(30) NOT NULL default '',
  `Password` varchar(30) NOT NULL default '',
  `Confirm_Password` varchar(30) NOT NULL default '',
  `Email` varchar(30) NOT NULL default '',
  `Website` varchar(30) NOT NULL default '',
  `Address` varchar(300) NOT NULL,
  `Ph_No_Land` varchar(30) NOT NULL default '',
  `Ph_No_Mob` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`Company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_reg` */

insert  into `tbl_reg`(`Company_id`,`Company_name`,`User_id`,`Password`,`Confirm_Password`,`Email`,`Website`,`Address`,`Ph_No_Land`,`Ph_No_Mob`) values ('','','','','','','',' ','',''),('120','aptech','user','pass','pass','password','xvxvcx',' bxcbxvxvb','234','345'),('121','null','null','null','null','null','null','null','null','null'),('213','\" + c_name + \"','\" + username + \"','aaa','aaa','\" + email + \"','\" + website + \"','\" + address + \"','\" + phl + \"','\" + phm + \"'),('222','sss','aaa','aaa','aaa','wqqerq','fdgdg','fdgdg ','4353','53737'),('333','adhjk','jgjhg','admin','admin','hdsgjhjfh','hgjhg','gfhf','543345','64654'),('456','Aptech','aaa','aaa','aaa','null','www.aptech.com','null','1234567','1234567890'),('666','gjhh','jhghjg','jhghjg','jgjhg','null','trturu','null','6447','657'),('888','fhfhgf','ggghfhnf','ggg','ggg','fhnf','nvgfhfnfv','vbgfh ','6565','5656'),('999','hjhg','hhh','hhh','hhh','hgdfghf','fgf','gfgf ','5456','4654');

/*Table structure for table `tbl_tender` */

DROP TABLE IF EXISTS `tbl_tender`;

CREATE TABLE `tbl_tender` (
  `t_id` varchar(30) NOT NULL,
  `notice_no` varchar(30) NOT NULL,
  `t_type` varchar(30) NOT NULL,
  `t_desc` varchar(30) NOT NULL,
  `officer` varchar(30) NOT NULL,
  `desig` varchar(50) NOT NULL,
  `pdt_name` varchar(30) NOT NULL,
  `qty` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `notify_date` varchar(40) NOT NULL,
  `close_date` varchar(40) NOT NULL,
  `meeting_date` varchar(40) NOT NULL,
  `time` varchar(30) NOT NULL,
  `remarks` varchar(30) NOT NULL,
  PRIMARY KEY  (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tender` */

insert  into `tbl_tender`(`t_id`,`notice_no`,`t_type`,`t_desc`,`officer`,`desig`,`pdt_name`,`qty`,`price`,`status`,`notify_date`,`close_date`,`meeting_date`,`time`,`remarks`) values ('1','2','etret',' srst','oggh','fdfgdg','hghg','4','56','hgjg','0000-00-00','0000-00-00','0000-00-00','00:00:09',' gfdg'),('4','v5','fhgfghf','vnvfn ','hfhgf','fhg','fhgf','fghf','fghf','tryr','0000-00-00','0000-00-00','0000-00-00','4',' hjghjfh');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
