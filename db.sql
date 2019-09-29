/*
SQLyog Trial v13.1.5  (64 bit)
MySQL - 10.4.6-MariaDB : Database - cars
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cars` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cars`;

/*Table structure for table `brand_country` */

DROP TABLE IF EXISTS `brand_country`;

CREATE TABLE `brand_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `brand_country` */

insert  into `brand_country`(`id`,`name`) values 
(1,'Sweden'),
(2,'Germany'),
(3,'USA'),
(4,'France');

/*Table structure for table `cars` */

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(15) NOT NULL,
  `model` varchar(20) NOT NULL,
  `seats` mediumint(2) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `year` mediumint(4) NOT NULL,
  `brand_country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_key` (`brand_country_id`),
  CONSTRAINT `FK_brand_country` FOREIGN KEY (`brand_country_id`) REFERENCES `brand_country` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `cars` */

insert  into `cars`(`id`,`brand`,`model`,`seats`,`color`,`year`,`brand_country_id`) values 
(1,'volvo','s80',5,'Grey',2002,1),
(2,'audi','TT',2,'Red',2007,2),
(3,'volkswagen','golf mk2',4,'Blue',2004,2),
(4,'ford','focus',5,'white',2015,3),
(5,'bmw','320d',5,'grey',2010,2),
(6,'renault','megane',5,'blue',2009,4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
