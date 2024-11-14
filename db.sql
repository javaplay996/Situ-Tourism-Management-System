/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - situlvyouguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`situlvyouguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `situlvyouguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/situlvyouguanli/upload/1620972179025.jpg'),(2,'picture2','http://localhost:8080/situlvyouguanli/upload/1620972187601.jpg'),(3,'picture3','http://localhost:8080/situlvyouguanli/upload/1620972199538.jpg'),(6,'homepage','http://localhost:8080/situlvyouguanli/upload/1620972212946.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-12 15:21:44'),(2,'sex_types','性别',2,'女',NULL,'2021-05-12 15:21:44'),(3,'jingdian_types','景点类型名称',3,'公园',NULL,'2021-05-12 15:21:45'),(4,'jingdian_types','景点类型名称',2,'山脉',NULL,'2021-05-12 15:21:45'),(5,'jingdian_types','景点类型名称',1,'其他',NULL,'2021-05-12 15:21:45'),(6,'jingdian_dengji_types','景点等级名称',1,'五A景点',NULL,'2021-05-12 15:21:45'),(7,'jingdian_dengji_types','景点等级名称',2,'国家景点',NULL,'2021-05-12 15:21:45'),(8,'jingdian_dengji_types','景点等级名称',3,'市级景点',NULL,'2021-05-12 15:21:45'),(9,'jingdian_dengji_types','景点等级名称',4,'其他',NULL,'2021-05-12 15:21:45'),(10,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-05-12 15:21:45'),(11,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-05-12 15:21:45'),(12,'jiudian_types','酒店星级名称',1,'一星酒店',NULL,'2021-05-12 15:21:45'),(13,'jiudian_types','酒店星级名称',2,'二星酒店',NULL,'2021-05-12 15:21:45'),(14,'jiudian_types','酒店星级名称',3,'三星酒店',NULL,'2021-05-12 15:21:45'),(15,'xiangche_types','相册类型名称',1,'相册类型1',NULL,'2021-05-12 15:21:45'),(16,'xiangche_types','相册类型名称',2,'相册类型2',NULL,'2021-05-12 15:21:45'),(17,'xiangche_types','相册类型名称',3,'相册类型3',NULL,'2021-05-12 15:21:45');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名  Search111 ',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型  Search111 ',
  `jingdian_dengji_types` int(11) DEFAULT NULL COMMENT '景点等级  Search111 ',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点缩略图',
  `jingdian_new_money` decimal(10,2) DEFAULT NULL COMMENT '参考门票价格',
  `jingdian_content` text COMMENT '景点详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_types`,`jingdian_dengji_types`,`jingdian_photo`,`jingdian_new_money`,`jingdian_content`,`create_time`) values (4,'景点1',3,3,'http://localhost:8080/situlvyouguanli/file/download?fileName=1620971381231.jpg','100.00','景点详情1\r\n','2021-05-14 13:49:46'),(5,'景点2',3,3,'http://localhost:8080/situlvyouguanli/file/download?fileName=1620971398066.jpg','200.00','景点详情2\r\n','2021-05-14 13:50:06'),(6,'景点3',1,4,'http://localhost:8080/situlvyouguanli/file/download?fileName=1620971491107.jpg','300.00','景点详情3\r\n','2021-05-14 13:51:35');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

/*Table structure for table `jingdian_order` */

DROP TABLE IF EXISTS `jingdian_order`;

CREATE TABLE `jingdian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jingdian_number` int(200) DEFAULT NULL COMMENT '数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='景点购票';

/*Data for the table `jingdian_order` */

insert  into `jingdian_order`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_number`,`insert_time`,`create_time`) values (2,6,1,100,'2021-05-14 15:00:55','2021-05-14 15:00:55');

/*Table structure for table `jiudian` */

DROP TABLE IF EXISTS `jiudian`;

CREATE TABLE `jiudian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_name` varchar(200) DEFAULT NULL COMMENT '酒店名称  Search111 ',
  `jiudian_types` int(11) DEFAULT NULL COMMENT '酒店星级   Search111',
  `jiudian_weizhi` varchar(200) DEFAULT NULL COMMENT '酒店位置   ',
  `jiudian_photo` varchar(200) DEFAULT NULL COMMENT '酒店缩略图',
  `jiudian_new_money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `jiudian_content` text COMMENT '酒店详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='酒店';

/*Data for the table `jiudian` */

insert  into `jiudian`(`id`,`jiudian_name`,`jiudian_types`,`jiudian_weizhi`,`jiudian_photo`,`jiudian_new_money`,`jiudian_content`,`create_time`) values (1,'酒店1',1,'酒店位置1','http://localhost:8080/situlvyouguanli/file/download?fileName=1620971658020.jpg','100.00','酒店详情1\r\n','2021-05-14 13:54:25'),(2,'酒店2',2,'酒店位置2','http://localhost:8080/situlvyouguanli/file/download?fileName=1620971692790.jpg','200.00','酒店详情2\r\n','2021-05-14 13:54:59'),(3,'酒店3',3,'酒店位置3','http://localhost:8080/situlvyouguanli/file/download?fileName=1620971745428.jpg','300.00','酒店详情3\r\n','2021-05-14 13:55:49');

/*Table structure for table `jiudian_collection` */

DROP TABLE IF EXISTS `jiudian_collection`;

CREATE TABLE `jiudian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='酒店收藏';

/*Data for the table `jiudian_collection` */

insert  into `jiudian_collection`(`id`,`jiudian_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-03 20:41:53','2021-04-03 20:41:53'),(2,1,2,'2021-04-03 21:09:14','2021-04-03 21:09:14');

/*Table structure for table `jiudian_order` */

DROP TABLE IF EXISTS `jiudian_order`;

CREATE TABLE `jiudian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiudian_time` timestamp NULL DEFAULT NULL COMMENT '预定到达时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='酒店购票';

/*Data for the table `jiudian_order` */

insert  into `jiudian_order`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_time`,`insert_time`,`create_time`) values (2,6,1,'2021-05-29 00:00:00','2021-05-14 15:01:05','2021-05-14 15:01:05');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食图片',
  `meishi_new_money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `meishi_content` text COMMENT '美食详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1  show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='美食';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`meishi_name`,`meishi_photo`,`meishi_new_money`,`meishi_content`,`create_time`) values (5,'美食1','http://localhost:8080/situlvyouguanli/file/download?fileName=1620971823020.jpg','100.00','美食详情1\r\n','2021-05-14 13:57:09'),(6,'美食2','http://localhost:8080/situlvyouguanli/file/download?fileName=1620971842200.jpg','200.00','美食详情2\r\n','2021-05-14 13:57:29'),(7,'美食3','http://localhost:8080/situlvyouguanli/file/download?fileName=1620971856494.jpg','300.00','美食详情3\r\n','2021-05-14 13:57:41');

/*Table structure for table `meishi_collection` */

DROP TABLE IF EXISTS `meishi_collection`;

CREATE TABLE `meishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='美食收藏';

/*Data for the table `meishi_collection` */

/*Table structure for table `meishi_order` */

DROP TABLE IF EXISTS `meishi_order`;

CREATE TABLE `meishi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `meishi_number` int(200) DEFAULT NULL COMMENT '数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='美食订单';

/*Data for the table `meishi_order` */

insert  into `meishi_order`(`id`,`meishi_id`,`yonghu_id`,`meishi_number`,`insert_time`,`create_time`) values (2,6,1,13,'2021-05-14 15:01:11','2021-05-14 15:01:11'),(3,6,1,13,'2021-05-14 15:01:12','2021-05-14 15:01:12');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1',2,'http://localhost:8080/situlvyouguanli/file/download?fileName=1620972283376.jpg','2021-05-12 15:50:50','新闻详情1\r\n','2021-05-12 15:50:50'),(2,'新闻名称2',1,'http://localhost:8080/situlvyouguanli/file/download?fileName=1620972258437.jpg','2021-05-12 15:51:02','新闻详情2\r\n','2021-05-12 15:51:02');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'admin','users','管理员','c2814z7mfeucuubp77zbf2tuqht16jdo','2021-05-14 10:31:12','2021-05-14 16:03:18'),(4,1,'111','yonghu','用户','wpqqo34xdg2zq7xb2gt9tz6g79gcvkp9','2021-05-14 14:27:34','2021-05-14 15:28:24'),(5,4,'333','yonghu','用户','3k8qc8wcifxuku19z23d8vhexgfg3knh','2021-05-14 15:02:23','2021-05-14 16:02:23');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xiangche` */

DROP TABLE IF EXISTS `xiangche`;

CREATE TABLE `xiangche` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangche_name` varchar(200) DEFAULT NULL COMMENT '相册名  Search111',
  `xiangche_types` int(11) DEFAULT NULL COMMENT '相册类型  Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '上传用户',
  `xiangche_photo` varchar(200) DEFAULT NULL COMMENT '相册图',
  `xiangche_content` text COMMENT '相册详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='相册';

/*Data for the table `xiangche` */

insert  into `xiangche`(`id`,`xiangche_name`,`xiangche_types`,`yonghu_id`,`xiangche_photo`,`xiangche_content`,`create_time`) values (4,'相册1',1,4,'http://localhost:8080/situlvyouguanli/file/download?fileName=1620975599795.jpg','相册详情1\r\n','2021-05-14 15:00:02'),(5,'相册1',2,2,'http://localhost:8080/situlvyouguanli/file/download?fileName=1620975613040.jpg','相册详情1\r\n','2021-05-14 15:00:17'),(6,'相册1',3,1,'http://localhost:8080/situlvyouguanli/file/download?fileName=1620975627899.jpg','相册详情1\r\n','2021-05-14 15:00:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011064871','17789944561','http://localhost:8080/situlvyouguanli/file/download?fileName=1620970701046.jpg','2021-05-12 15:39:40'),(2,'222','123456','用户2',2,'410882200011064872','17789944562','http://localhost:8080/situlvyouguanli/file/download?fileName=1620970661246.jpg','2021-05-12 15:39:58'),(4,'333','123456','用户3',1,'410882189812221111','17796655641','http://localhost:8080/situlvyouguanli/file/download?fileName=1620974714678.jpg','2021-05-14 14:45:15');

/*Table structure for table `yulexiangmu` */

DROP TABLE IF EXISTS `yulexiangmu`;

CREATE TABLE `yulexiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yulexiangmu_name` varchar(200) DEFAULT NULL COMMENT '娱乐项目名称  Search111 ',
  `yulexiangmu_photo` varchar(200) DEFAULT NULL COMMENT '娱乐项目图片',
  `yulexiangmu_new_money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `yulexiangmu_content` text COMMENT '娱乐项目详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1  show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='娱乐项目';

/*Data for the table `yulexiangmu` */

insert  into `yulexiangmu`(`id`,`yulexiangmu_name`,`yulexiangmu_photo`,`yulexiangmu_new_money`,`yulexiangmu_content`,`create_time`) values (5,'娱乐项目1','http://localhost:8080/situlvyouguanli/file/download?fileName=1620972024931.jpg','100.00','娱乐项目详情1\r\n\r\n','2021-05-14 14:00:43'),(6,'娱乐项目2','http://localhost:8080/situlvyouguanli/file/download?fileName=1620972054132.jpg','200.00','娱乐项目详情2\r\n\r\n','2021-05-14 14:00:59'),(7,'娱乐项目3','http://localhost:8080/situlvyouguanli/file/download?fileName=1620972066041.jpg','300.00','娱乐项目详情3\r\n\r\n','2021-05-14 14:01:11');

/*Table structure for table `yulexiangmu_collection` */

DROP TABLE IF EXISTS `yulexiangmu_collection`;

CREATE TABLE `yulexiangmu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yulexiangmu_id` int(11) DEFAULT NULL COMMENT '娱乐项目id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='娱乐项目收藏';

/*Data for the table `yulexiangmu_collection` */

/*Table structure for table `yulexiangmu_order` */

DROP TABLE IF EXISTS `yulexiangmu_order`;

CREATE TABLE `yulexiangmu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yulexiangmu_id` int(11) DEFAULT NULL COMMENT '娱乐项目id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `yulexiangmu_number` int(200) DEFAULT NULL COMMENT '人数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='娱乐项目订单';

/*Data for the table `yulexiangmu_order` */

insert  into `yulexiangmu_order`(`id`,`yulexiangmu_id`,`yonghu_id`,`yulexiangmu_number`,`insert_time`,`create_time`) values (2,6,1,10,'2021-05-14 14:27:49','2021-05-14 14:27:49'),(3,5,1,123,'2021-05-14 15:01:18','2021-05-14 15:01:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
