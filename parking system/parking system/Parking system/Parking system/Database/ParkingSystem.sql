/*
SQLyog Ultimate v9.51 
MySQL - 6.0.0-alpha-community-nt-debug : Database - parkingsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`parkingsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `parkingsystem`;

/*Table structure for table `block` */

DROP TABLE IF EXISTS `block`;

CREATE TABLE `block` (
  `blockName` varchar(50) DEFAULT NULL,
  `space` varchar(50) DEFAULT NULL,
  `blockID` int(5) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`blockID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `block` */

insert  into `block`(`blockName`,`space`,`blockID`,`category`) values ('A','20',1,'HEAVY WEIGHT VEHICLE'),('B','20',2,'HEAVY WEIGHT VEHICLE'),('C','20',3,'HEAVY WEIGHT VEHICLE'),('D','20',4,'HEAVY WEIGHT VEHICLE'),('A','20',5,'LIGHT WEIGHT VEHICLE'),('B','20',6,'LIGHT WEIGHT VEHICLE'),('C','20',7,'LIGHT WEIGHT VEHICLE'),('D','20',8,'LIGHT WEIGHT VEHICLE');

/*Table structure for table `entry` */

DROP TABLE IF EXISTS `entry`;

CREATE TABLE `entry` (
  `serialNo` varchar(50) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `carNo` varchar(20) DEFAULT NULL,
  `blockNo` varchar(2) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `entryID` int(100) NOT NULL AUTO_INCREMENT,
  `blockID` int(20) DEFAULT NULL,
  PRIMARY KEY (`entryID`),
  KEY `blockID` (`blockID`),
  CONSTRAINT `entry_ibfk_1` FOREIGN KEY (`blockID`) REFERENCES `block` (`blockID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `entry` */

insert  into `entry`(`serialNo`,`Category`,`carNo`,`blockNo`,`date`,`time`,`entryID`,`blockID`) values ('6','LIGHT WEIGHT VEHICLE','PB 03 B 0765','A','2013/07/24',' 15:34:12',6,5),('7','HEAVY WEIGHT VEHICLE','CH 04 AN 4476','B','2013/07/24',' 18:25:32',7,2),('7','HEAVY WEIGHT VEHICLE','CH  08 A 7676','B','2013/07/24',' 18:26:05',8,2),('7','HEAVY WEIGHT VEHICLE','UK 90 HJ 9898','D','2013/07/24',' 18:26:57',10,4),('7','HEAVY WEIGHT VEHICLE','CH 98 PO 8989','C','2013/07/24',' 18:27:24',11,3),('12','HEAVY WEIGHT VEHICLE','CH 67 AN 8907','C','2013/07/24','18:34:59',12,3),('13','HEAVY WEIGHT VEHICLE','CH 90 HJ 8787','C','2013/07/24','18:35:36',13,3),('14','LIGHT WEIGHT VEHICLE','HR 7 GH 8989','D','2013/07/24','18:37:33',14,8),('15','LIGHT WEIGHT VEHICLE','TU 98 UK 7676','D','2013/07/24','18:37:57',15,8),('16','HEAVY WEIGHT VEHICLE','CH 02 A 8912','B','2013/07/24','20:07:44',16,2),('8','HEAVY WEIGHT VEHICLE','pb 29 j 5448','A','2013/07/25',' 13:09:16',17,1),('9','LIGHT WEIGHT VEHICLE','CH 98 AN 7878','B','2013/07/25',' 14:18:46',18,6),('9','HEAVY WEIGHT VEHICLE','PB 29 J 5448','C','2013/07/25',' 14:19:57',19,3),('20','HEAVY WEIGHT VEHICLE','','A','2013/07/26','19:36:39',20,1),('21','HEAVY WEIGHT VEHICLE','','A','2013/07/26','19:36:51',21,1),('10','HEAVY WEIGHT VEHICLE','gft5bghynbhy','B','2013/08/01',' 10:49:30',22,2),('10','HEAVY WEIGHT VEHICLE','ch 04','A','2013/08/06',' 15:26:08',23,1),('10','HEAVY WEIGHT VEHICLE','ch 32','A','2013/08/06',' 15:26:17',24,1),('38','HEAVY WEIGHT VEHICLE','SD 32','A','2013/08/06',' 15:31:29',38,1),('39','HEAVY WEIGHT VEHICLE','FS 32','A','2013/08/06',' 15:31:37',39,1),('40','HEAVY WEIGHT VEHICLE','SD 21','A','2013/08/06',' 15:31:44',40,1),('41','HEAVY WEIGHT VEHICLE','cd as','A','2013/08/06',' 15:40:26',41,1),('42','HEAVY WEIGHT VEHICLE','cd as','A','2013/08/06',' 15:42:36',42,1),('43','HEAVY WEIGHT VEHICLE','CH 434','A','2013/08/06',' 15:46:47',43,1),('44','HEAVY WEIGHT VEHICLE','as32','A','2013/08/06',' 15:51:58',44,1),('45','HEAVY WEIGHT VEHICLE','cas','A','2013/08/06',' 15:54:39',45,1),('46','HEAVY WEIGHT VEHICLE','ca','A','2013/08/06',' 15:55:54',46,1),('47','HEAVY WEIGHT VEHICLE','vds','A','2013/08/06',' 15:57:27',47,1),('48','HEAVY WEIGHT VEHICLE','cfa','A','2013/08/06',' 15:57:53',48,1),('50','HEAVY WEIGHT VEHICLE','ca','A','2013/08/06',' 16:04:40',50,1),('51','HEAVY WEIGHT VEHICLE','cas','A','2013/08/06',' 16:05:29',51,1),('52','HEAVY WEIGHT VEHICLE','aas','A','2013/08/06',' 20:02:36',52,1),('53','HEAVY WEIGHT VEHICLE','vcs','A','2013/08/06',' 20:09:17',54,1),('55','LIGHT WEIGHT VEHICLE','','D','2013/08/07','15:08:25',55,8),('56','HEAVY WEIGHT VEHICLE','CAS','C','2013/08/08','10:13:53',56,3),('57','LIGHT WEIGHT VEHICLE','cas','A','2013/08/08',' 10:14:29',57,5);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `loginID` int(1) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`loginID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`loginID`) values ('admin','admin',1),('abhi','abhi',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
