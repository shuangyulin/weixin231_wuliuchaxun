/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shudawuliuxinxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shudawuliuxinxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shudawuliuxinxi`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'管理在后台可以回复',NULL,NULL,NULL,1,1,'2022-04-05 21:04:48');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/shudawuliuxinxi/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/shudawuliuxinxi/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/shudawuliuxinxi/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'jijianxinxi_types','物品类型',1,'物品类型1',NULL,NULL,'2022-04-05 19:49:16'),(2,'jijianxinxi_types','物品类型',2,'物品类型2',NULL,NULL,'2022-04-05 19:49:16'),(3,'jijianxinxi_types','物品类型',3,'物品类型3',NULL,NULL,'2022-04-05 19:49:16'),(4,'tongchengjisong_types','任务类型',1,'代买',NULL,NULL,'2022-04-05 19:49:16'),(5,'tongchengjisong_types','任务类型',2,'代送',NULL,NULL,'2022-04-05 19:49:16'),(6,'tongchengjisong_types','任务类型',3,'代取',NULL,NULL,'2022-04-05 19:49:16'),(7,'fapiaoshenqing_yesno_types','申请状态',1,'申请中',NULL,NULL,'2022-04-05 19:49:16'),(8,'fapiaoshenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-04-05 19:49:16'),(9,'fapiaoshenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-04-05 19:49:16'),(10,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-04-05 19:49:16'),(11,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-04-05 19:49:16'),(12,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-04-05 19:49:16'),(13,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-04-05 19:49:16'),(14,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-05 19:49:16'),(15,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-05 19:49:16'),(16,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-05 19:49:16'),(17,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-05 19:49:16'),(18,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-05 19:49:16'),(19,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-05 19:49:16'),(20,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-05 19:49:16');

/*Table structure for table `fapiaoshenqing` */

DROP TABLE IF EXISTS `fapiaoshenqing`;

CREATE TABLE `fapiaoshenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jijianxinxi_id` int(11) DEFAULT NULL COMMENT '寄件信息',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fapiaoshenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `fapiaoshenqing_yesno_text` text COMMENT '申请备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='发票申请';

/*Data for the table `fapiaoshenqing` */

insert  into `fapiaoshenqing`(`id`,`jijianxinxi_id`,`yonghu_id`,`fapiaoshenqing_yesno_types`,`fapiaoshenqing_yesno_text`,`insert_time`,`create_time`) values (1,1,2,1,NULL,'2022-04-05 19:49:24','2022-04-05 19:49:24'),(2,2,2,1,NULL,'2022-04-05 19:49:24','2022-04-05 19:49:24'),(3,3,2,1,NULL,'2022-04-05 19:49:24','2022-04-05 19:49:24'),(4,4,3,1,NULL,'2022-04-05 19:49:24','2022-04-05 19:49:24'),(5,5,2,2,'同意123','2022-04-05 19:49:24','2022-04-05 19:49:24'),(8,4,1,1,NULL,'2022-04-05 21:03:54','2022-04-05 21:03:54');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-04-05 19:49:24','2022-04-05 19:49:24','2022-04-05 19:49:24'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-04-05 19:49:24','2022-04-05 19:49:24','2022-04-05 19:49:24'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-04-05 19:49:24','2022-04-05 19:49:24','2022-04-05 19:49:24'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,1,'2022-04-05 19:49:24','2022-04-05 19:49:24','2022-04-05 19:49:24'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,1,'2022-04-05 19:49:24','2022-04-05 19:49:24','2022-04-05 19:49:24'),(6,NULL,NULL,1,'管理评论2312',5,2,'2022-04-05 20:54:32',NULL,'2022-04-05 20:54:32'),(7,NULL,1,NULL,'用户评论123',5,2,'2022-04-05 21:05:04',NULL,'2022-04-05 21:05:04');

/*Table structure for table `jijianxinxi` */

DROP TABLE IF EXISTS `jijianxinxi`;

CREATE TABLE `jijianxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jijianxinxi_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jijianxinxi_name` varchar(200) DEFAULT NULL COMMENT '收件人名称 Search111',
  `jijianxinxi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jijianxinxi_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `jijianxinxi_address` varchar(200) DEFAULT NULL COMMENT '送件住址',
  `jijianxinxi_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `jijianxinxi_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `tongchengjisong_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='寄件信息';

/*Data for the table `jijianxinxi` */

insert  into `jijianxinxi`(`id`,`jijianxinxi_uuid_number`,`yonghu_id`,`jijianxinxi_name`,`jijianxinxi_phone`,`jijianxinxi_photo`,`jijianxinxi_address`,`jijianxinxi_types`,`jijianxinxi_money`,`tongchengjisong_content`,`insert_time`,`create_time`) values (1,'164915936433713',3,'收件人名称1','17703786901','http://localhost:8080/shudawuliuxinxi/upload/1649160039835.jpeg','送件住址1',2,'760.46','备注1','2022-04-05 19:49:24','2022-04-05 19:49:24'),(2,'16491593643376',3,'收件人名称2','17703786902','http://localhost:8080/shudawuliuxinxi/upload/1649160023905.webp','送件住址2',1,'772.65','备注2','2022-04-05 19:49:24','2022-04-05 19:49:24'),(3,'164915936433717',3,'收件人名称3','17703786903','http://localhost:8080/shudawuliuxinxi/upload/1649160014572.webp','送件住址3',2,'646.99','备注3','2022-04-05 19:49:24','2022-04-05 19:49:24'),(4,'164915936433716',1,'收件人名称4','17703786904','http://localhost:8080/shudawuliuxinxi/upload/1649160007725.webp','送件住址4',3,'7.44','备注4','2022-04-05 19:49:24','2022-04-05 19:49:24'),(5,'164915936433720',3,'收件人名称5','17703786905','http://localhost:8080/shudawuliuxinxi/upload/1649159996579.webp','送件住址5',1,'937.59','备注5','2022-04-05 19:49:24','2022-04-05 19:49:24');

/*Table structure for table `kuaijian` */

DROP TABLE IF EXISTS `kuaijian`;

CREATE TABLE `kuaijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kuaijian_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kuaijian_name` varchar(200) DEFAULT NULL COMMENT '发件人名称 Search111',
  `kuaijian_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `kuaijian_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `kuaijian_address` varchar(200) DEFAULT NULL COMMENT '送件住址',
  `jijianxinxi_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `kuaijian_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='快件信息';

/*Data for the table `kuaijian` */

insert  into `kuaijian`(`id`,`kuaijian_uuid_number`,`yonghu_id`,`kuaijian_name`,`kuaijian_phone`,`kuaijian_photo`,`kuaijian_address`,`jijianxinxi_types`,`kuaijian_content`,`insert_time`,`create_time`) values (1,'16491593643441',1,'发件人名称1','17703786901','http://localhost:8080/shudawuliuxinxi/upload/1649160039835.jpeg','送件住址1',2,'备注1','2022-04-05 19:49:24','2022-04-05 19:49:24'),(2,'164915936434520',3,'发件人名称2','17703786902','http://localhost:8080/shudawuliuxinxi/upload/1649160023905.webp','送件住址2',2,'备注2','2022-04-05 19:49:24','2022-04-05 19:49:24'),(3,'16491593643456',2,'发件人名称3','17703786903','http://localhost:8080/shudawuliuxinxi/upload/1649160014572.webp','送件住址3',1,'备注3','2022-04-05 19:49:24','2022-04-05 19:49:24'),(4,'16491593643457',3,'发件人名称4','17703786904','http://localhost:8080/shudawuliuxinxi/upload/1649160007725.webp','送件住址4',1,'备注4','2022-04-05 19:49:24','2022-04-05 19:49:24'),(5,'164915936434513',3,'发件人名称5','17703786905','http://localhost:8080/shudawuliuxinxi/upload/1649159996579.webp','送件住址5',1,'备注5','2022-04-05 19:49:24','2022-04-05 19:49:24');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/shudawuliuxinxi/upload/news1.jpg','2022-04-05 19:49:24','公告详情1','2022-04-05 19:49:24'),(2,'公告标题2',2,'http://localhost:8080/shudawuliuxinxi/upload/news2.jpg','2022-04-05 19:49:24','公告详情2','2022-04-05 19:49:24'),(3,'公告标题3',1,'http://localhost:8080/shudawuliuxinxi/upload/news3.jpg','2022-04-05 19:49:24','公告详情3','2022-04-05 19:49:24'),(4,'公告标题4',3,'http://localhost:8080/shudawuliuxinxi/upload/news4.jpg','2022-04-05 19:49:24','公告详情4','2022-04-05 19:49:24'),(5,'公告标题5',2,'http://localhost:8080/shudawuliuxinxi/upload/news5.jpg','2022-04-05 19:49:24','公告详情5','2022-04-05 19:49:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','u9014yul9jr4eic56lbbemg9b9iaj3ug','2022-04-05 19:48:24','2022-04-05 22:03:40'),(2,1,'admin','users','管理员','bc03e271j85pcf8m2v1wlaujkinvhwxf','2022-04-05 20:54:00','2022-04-05 22:07:46');

/*Table structure for table `tongchengjisong` */

DROP TABLE IF EXISTS `tongchengjisong`;

CREATE TABLE `tongchengjisong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tongchengjisong_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tongchengjisong_name` varchar(200) DEFAULT NULL COMMENT '位置 Search111',
  `tongchengjisong_types` int(11) DEFAULT NULL COMMENT '任务类型 Search111',
  `tongchengjisong_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `tongchengjisong_text` text COMMENT '任务详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='同城急送';

/*Data for the table `tongchengjisong` */

insert  into `tongchengjisong`(`id`,`tongchengjisong_uuid_number`,`yonghu_id`,`tongchengjisong_name`,`tongchengjisong_types`,`tongchengjisong_money`,`tongchengjisong_text`,`insert_time`,`create_time`) values (1,'164915936435619',2,'位置1',2,'164.83','任务详情1','2022-04-05 19:49:24','2022-04-05 19:49:24'),(2,'164915936435613',2,'位置2',1,'926.05','任务详情2','2022-04-05 19:49:24','2022-04-05 19:49:24'),(3,'164915936435611',3,'位置3',2,'941.88','任务详情3','2022-04-05 19:49:24','2022-04-05 19:49:24'),(4,'164915936435614',2,'位置4',1,'921.17','任务详情4','2022-04-05 19:49:24','2022-04-05 19:49:24'),(5,'164915936435610',1,'位置5',2,'700.29','任务详情5','2022-04-05 19:49:24','2022-04-05 19:49:24'),(6,'1649163852267',1,'内蒙古自治区乌兰察布市凉城县凉城县天成乡十八号',2,'90.00','11233','2022-04-05 21:04:31','2022-04-05 21:04:31');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/shudawuliuxinxi/upload/yonghu1.jpg','17703786901','1@qq.com',1,1,'2022-04-05 19:49:24'),(2,'a2','123456','用户姓名2','http://localhost:8080/shudawuliuxinxi/upload/yonghu2.jpg','17703786902','2@qq.com',1,1,'2022-04-05 19:49:24'),(3,'a3','123456','用户姓名3','http://localhost:8080/shudawuliuxinxi/upload/yonghu3.jpg','17703786903','3@qq.com',2,1,'2022-04-05 19:49:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
