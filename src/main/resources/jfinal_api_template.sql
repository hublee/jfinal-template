/*
SQLyog v10.2 
MySQL - 5.6.20 : Database - jfinal_api_template
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jfinal_api_template` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jfinal_api_template`;

/*Table structure for table `t_feedback` */

DROP TABLE IF EXISTS `t_feedback`;

CREATE TABLE `t_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `userId` char(32) DEFAULT NULL COMMENT '用户ID',
  `creationDate` bigint(20) NOT NULL COMMENT '反馈的时间戳',
  `suggestion` varchar(300) NOT NULL COMMENT '反馈内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_feedback` */

/*Table structure for table `t_register_code` */

DROP TABLE IF EXISTS `t_register_code`;

CREATE TABLE `t_register_code` (
  `mobile` char(11) NOT NULL COMMENT '接收短信的手机号码',
  `code` char(4) DEFAULT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_register_code` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `userId` char(32) NOT NULL DEFAULT '',
  `loginName` varchar(20) NOT NULL COMMENT '用户登录名',
  `nickName` varchar(20) NOT NULL COMMENT '昵称',
  `password` varchar(32) NOT NULL COMMENT 'md5加密后的密码',
  `sex` tinyint(2) NOT NULL COMMENT '性别，1表示男，0表示女',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(2) DEFAULT '1' COMMENT '帐号状态. 1表示开启 ，0表示禁用',
  `creationDate` bigint(20) DEFAULT NULL COMMENT '帐号创建日期时间戳',
  `avatar` varchar(500) DEFAULT NULL COMMENT '头像地址',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
