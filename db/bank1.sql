/*
SQLyog v10.2
MySQL - 5.7.21-log : Database - bank1
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bank1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bank1`;

/*Table structure for table `account_info` */

DROP TABLE IF EXISTS `account_info`;

CREATE TABLE `account_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '户主姓名',
  `account_no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '银行卡号',
  `account_password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '帐户密码',
  `account_balance` double DEFAULT NULL COMMENT '帐户余额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `account_info` */

insert  into `account_info`(`id`,`account_name`,`account_no`,`account_password`,`account_balance`) values (2,'张三','1',NULL,1000);

DROP TABLE IF EXISTS `local_cancel_log`;

CREATE TABLE `local_cancel_log` (
  `tx_no` varchar(64) NOT NULL COMMENT '事务id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tx_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `local_cancel_log` */

/*Table structure for table `local_confirm_log` */

DROP TABLE IF EXISTS `local_confirm_log`;

CREATE TABLE `local_confirm_log` (
  `tx_no` varchar(64) NOT NULL COMMENT '事务id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tx_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `local_confirm_log` */

/*Table structure for table `local_trade_log` */

DROP TABLE IF EXISTS `local_trade_log`;

CREATE TABLE `local_trade_log` (
  `tx_no` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tx_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Table structure for table `local_try_log` */

DROP TABLE IF EXISTS `local_try_log`;

CREATE TABLE `local_try_log` (
  `tx_no` varchar(64) NOT NULL COMMENT '事务id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tx_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `local_try_log` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
