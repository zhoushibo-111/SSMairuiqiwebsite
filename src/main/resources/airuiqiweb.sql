/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.6.45 : Database - airuiqi_website
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`airuiqi_website` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `airuiqi_website`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values (1,'秋冬款'),(2,'春秋款'),(3,'夏款');

/*Table structure for table `company_new` */

DROP TABLE IF EXISTS `company_new`;

CREATE TABLE `company_new` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `bt` varchar(32) NOT NULL,
  `newnr` varchar(528) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `company_new` */

insert  into `company_new`(`id`,`bt`,`newnr`) values (1,'公司简介','大连爱蕊崎贸易有限公司，是一家集服装设计、生产、销售于一体的贸易有限公司。公司主打品牌——“爱惢崎”(AIRIQI)，是为注重生活品质与细节、有精致化生活倾向的新都市女性打造的快时尚品牌。在产品风格强调日韩混搭与欧式风格的融合设计，为崇尚时尚，追求个性，享受生活的女性带来全新的时尚概念。');

/*Table structure for table `company_zx` */

DROP TABLE IF EXISTS `company_zx`;

CREATE TABLE `company_zx` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `zx_nr` varchar(255) DEFAULT NULL,
  `zxdata` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `company_zx` */

insert  into `company_zx`(`id`,`title`,`zx_nr`,`zxdata`) values (1,'上新','日行一善，快乐成长;知行合一，共创奇迹”公司坚持以“稻盛哲学”为灵魂的企业文化，立志于将“阿米巴经营体系”落实到企业中，为实现员工的物质财富与精神财富双赢而共同奋斗','2019-12-21'),(2,'大新闻','日行一善，快乐成长;知行合一，共创奇迹”公司坚持以“稻盛哲学”为灵魂的企业文化，立志于将“阿米巴经营体系”落实到企业中，为实现员工的物质财富与精神财富双赢而共同奋斗','2019-12-21'),(3,'产品更新','日行一善，快乐成长;知行合一，共创奇迹”公司坚持以“稻盛哲学”为灵魂的企业文化，立志于将“阿米巴经营体系”落实到企业中，为实现员工的物质财富与精神财富双赢而共同奋斗','2019-12-06'),(4,'上新','北京、上海、东三省、河南、山西、江苏、浙江、湖南、广东、四川','2019-12-05');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `time` datetime(6) DEFAULT NULL,
  `dh` varchar(32) DEFAULT NULL,
  `nr` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`name`,`time`,`dh`,`nr`,`email`) values (3,'周士博','2019-12-29 20:19:50.189000','13236669557','哈哈哈哈哈哈哈哈哈或或或或或或或或或或','112@123.com'),(4,'小明','2020-01-04 00:26:23.773000','13940315445','我喜欢你','123@123.com'),(5,'小明','2020-01-04 00:27:00.012000','13940315445','我喜欢你','123@123.com');

/*Table structure for table `new_link` */

DROP TABLE IF EXISTS `new_link`;

CREATE TABLE `new_link` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `new_link` */

insert  into `new_link`(`id`,`text`,`link`) values (1,'百度搜索','https://www.baidu.com'),(2,'公司官网','http://corp.efu.com.cn'),(3,'服装网站之家','https://www.dragon-guide.net'),(4,'中国服装网','http://www.china1f.com/'),(5,'服装招商网','http://zs.efu.com.cn/'),(6,'成绵优品','http://zs.efu.com.cn/cuintl/');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `category_id` int(32) NOT NULL,
  `ml` varchar(32) DEFAULT NULL,
  `cd` varchar(32) DEFAULT NULL,
  `ppname` varchar(32) DEFAULT NULL,
  `productimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `LeiBie` (`category_id`),
  CONSTRAINT `LeiBie` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`category_id`,`ml`,`cd`,`ppname`,`productimg`) values (13,'大衣',1,'棉','广州','爱蕊崎','upload/00-2.jpg'),(14,'棉衣',1,'棉','上海','爱蕊崎','upload/00-4.jpg'),(15,'大棉衣',1,'棉','上海','爱蕊崎','upload/00-7.jpg'),(16,'凄凄',2,'棉','上海','凄凄切切','upload/00-9.jpg'),(17,'短袖',3,'棉','上海','爱蕊崎','upload/00-10.jpg'),(18,'碎花裙',3,'布','大连','爱蕊崎','upload/00-6.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `loginfrequency` int(10) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `role` int(2) DEFAULT NULL COMMENT '0:管理员 1:用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`loginfrequency`,`logintime`,`role`) values (1,'管理员','123456',199,'2019-12-22 18:49:18',1),(2,'李四','2222',43,'2019-12-22 19:45:33',2),(3,'赵二虎','111',0,'2019-12-30 18:37:46',2),(4,'王五','1233',6,'2019-12-31 01:06:38',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
