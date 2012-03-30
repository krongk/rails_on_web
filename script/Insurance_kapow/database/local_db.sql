/*
SQLyog Enterprise - MySQL GUI v7.11 
MySQL - 5.0.67-community-nt : Database - insurance_forager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`insurance_forager` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `insurance_forager`;

/*Table structure for table `hexun_post` */

DROP TABLE IF EXISTS `hexun_post`;

CREATE TABLE `hexun_post` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `hexun_run_key_id` int(11) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `url` varchar(128) NOT NULL,
  `content` mediumtext,
  `original_content` mediumtext,
  `ObjectKey` varchar(255) NOT NULL,
  `RobotName` varchar(255) default NULL,
  `ExecutionId` varchar(50) default NULL,
  `FirstExtracted` datetime default NULL,
  `LastExtracted` datetime default NULL,
  `ExtractedInLastRun` varchar(1) default NULL,
  `LastUpdated` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `uniq__ObjectKey` (`ObjectKey`),
  KEY `uniq_title_category` (`hexun_run_key_id`,`title`(255)),
  KEY `idx__title` (`title`(255))
) ENGINE=InnoDB AUTO_INCREMENT=11411 DEFAULT CHARSET=utf8;

/*Table structure for table `hexun_post_format` */

DROP TABLE IF EXISTS `hexun_post_format`;

CREATE TABLE `hexun_post_format` (
  `id` int(4) unsigned NOT NULL auto_increment,
  `category` varchar(20) default NULL,
  `title` varchar(1024) NOT NULL,
  `content` mediumtext,
  `url` varchar(128) NOT NULL,
  `is_migrated` varchar(2) default 'n',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11343 DEFAULT CHARSET=utf8;

/*Table structure for table `hexun_run_key` */

DROP TABLE IF EXISTS `hexun_run_key`;

CREATE TABLE `hexun_run_key` (
  `id` int(11) NOT NULL auto_increment,
  `category` varchar(20) default NULL,
  `url` varchar(60) NOT NULL,
  `is_processed` char(1) default 'n',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8;

/*Table structure for table `wenba_post` */

DROP TABLE IF EXISTS `wenba_post`;

CREATE TABLE `wenba_post` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `run_key_id` bigint(20) NOT NULL,
  `title` varchar(512) default NULL,
  `url` varchar(255) default NULL,
  `question` longtext,
  `best_answer` longtext,
  `all_answer` longtext,
  `original_content` longtext,
  `formated_all_answer` longtext,
  `ObjectKey` varchar(255) NOT NULL,
  `RobotName` varchar(255) default NULL,
  `ExecutionId` varchar(50) default NULL,
  `FirstExtracted` datetime default NULL,
  `LastExtracted` datetime default NULL,
  `ExtractedInLastRun` varchar(1) default NULL,
  `LastUpdated` datetime default NULL,
  PRIMARY KEY  (`id`,`ObjectKey`)
) ENGINE=InnoDB AUTO_INCREMENT=13318 DEFAULT CHARSET=utf8;

/*Table structure for table `wenba_post_format` */

DROP TABLE IF EXISTS `wenba_post_format`;

CREATE TABLE `wenba_post_format` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `category` varchar(128) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `question` text,
  `best_answer` text,
  `formated_all_answer` mediumtext,
  `is_migrated` char(1) NOT NULL default 'n',
  `url` varchar(128) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `is_processed` (`is_migrated`)
) ENGINE=InnoDB AUTO_INCREMENT=63862 DEFAULT CHARSET=utf8;

/*Table structure for table `wenba_run_key` */

DROP TABLE IF EXISTS `wenba_run_key`;

CREATE TABLE `wenba_run_key` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `category` varchar(128) default NULL,
  `url` varchar(128) default NULL,
  `is_processed` char(1) default 'n',
  `batch_id` int(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
