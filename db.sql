/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm3957q
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm3957q` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm3957q`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm3957q/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm3957q/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm3957q/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussxianluxinxi` */

DROP TABLE IF EXISTS `discussxianluxinxi`;

CREATE TABLE `discussxianluxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='线路信息评论表';

/*Data for the table `discussxianluxinxi` */

insert  into `discussxianluxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-29 00:46:38',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxianluxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-04-29 00:46:38',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxianluxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-04-29 00:46:38',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxianluxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-04-29 00:46:38',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxianluxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-04-29 00:46:38',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxianluxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-04-29 00:46:38',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-29 00:46:38','标题1','简介1','http://localhost:8080/ssm3957q/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-04-29 00:46:38','标题2','简介2','http://localhost:8080/ssm3957q/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-04-29 00:46:38','标题3','简介3','http://localhost:8080/ssm3957q/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-04-29 00:46:38','标题4','简介4','http://localhost:8080/ssm3957q/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-04-29 00:46:38','标题5','简介5','http://localhost:8080/ssm3957q/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-04-29 00:46:38','标题6','简介6','http://localhost:8080/ssm3957q/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-29 00:46:38');

/*Table structure for table `xianluxinxi` */

DROP TABLE IF EXISTS `xianluxinxi`;

CREATE TABLE `xianluxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) DEFAULT NULL COMMENT '线路名称',
  `xianluqidian` varchar(200) DEFAULT NULL COMMENT '线路起点',
  `xianluzhongdian` varchar(200) DEFAULT NULL COMMENT '线路终点',
  `xianlutujing` longtext COMMENT '线路途经',
  `bancituijian` longtext COMMENT '班次推荐',
  `bancishijian` varchar(200) DEFAULT NULL COMMENT '班次时间',
  `suoxushijian` varchar(200) DEFAULT NULL COMMENT '所需时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xianlujieshao` longtext COMMENT '线路介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='线路信息';

/*Data for the table `xianluxinxi` */

insert  into `xianluxinxi`(`id`,`addtime`,`xianlumingcheng`,`xianluqidian`,`xianluzhongdian`,`xianlutujing`,`bancituijian`,`bancishijian`,`suoxushijian`,`fengmian`,`xianlujieshao`) values (21,'2021-04-29 00:46:37','线路名称1','线路起点1','线路终点1','线路途经1','班次推荐1','班次时间1','所需时间1','http://localhost:8080/ssm3957q/upload/xianluxinxi_fengmian1.jpg','线路介绍1');
insert  into `xianluxinxi`(`id`,`addtime`,`xianlumingcheng`,`xianluqidian`,`xianluzhongdian`,`xianlutujing`,`bancituijian`,`bancishijian`,`suoxushijian`,`fengmian`,`xianlujieshao`) values (22,'2021-04-29 00:46:37','线路名称2','线路起点2','线路终点2','线路途经2','班次推荐2','班次时间2','所需时间2','http://localhost:8080/ssm3957q/upload/xianluxinxi_fengmian2.jpg','线路介绍2');
insert  into `xianluxinxi`(`id`,`addtime`,`xianlumingcheng`,`xianluqidian`,`xianluzhongdian`,`xianlutujing`,`bancituijian`,`bancishijian`,`suoxushijian`,`fengmian`,`xianlujieshao`) values (23,'2021-04-29 00:46:37','线路名称3','线路起点3','线路终点3','线路途经3','班次推荐3','班次时间3','所需时间3','http://localhost:8080/ssm3957q/upload/xianluxinxi_fengmian3.jpg','线路介绍3');
insert  into `xianluxinxi`(`id`,`addtime`,`xianlumingcheng`,`xianluqidian`,`xianluzhongdian`,`xianlutujing`,`bancituijian`,`bancishijian`,`suoxushijian`,`fengmian`,`xianlujieshao`) values (24,'2021-04-29 00:46:37','线路名称4','线路起点4','线路终点4','线路途经4','班次推荐4','班次时间4','所需时间4','http://localhost:8080/ssm3957q/upload/xianluxinxi_fengmian4.jpg','线路介绍4');
insert  into `xianluxinxi`(`id`,`addtime`,`xianlumingcheng`,`xianluqidian`,`xianluzhongdian`,`xianlutujing`,`bancituijian`,`bancishijian`,`suoxushijian`,`fengmian`,`xianlujieshao`) values (25,'2021-04-29 00:46:37','线路名称5','线路起点5','线路终点5','线路途经5','班次推荐5','班次时间5','所需时间5','http://localhost:8080/ssm3957q/upload/xianluxinxi_fengmian5.jpg','线路介绍5');
insert  into `xianluxinxi`(`id`,`addtime`,`xianlumingcheng`,`xianluqidian`,`xianluzhongdian`,`xianlutujing`,`bancituijian`,`bancishijian`,`suoxushijian`,`fengmian`,`xianlujieshao`) values (26,'2021-04-29 00:46:37','线路名称6','线路起点6','线路终点6','线路途经6','班次推荐6','班次时间6','所需时间6','http://localhost:8080/ssm3957q/upload/xianluxinxi_fengmian6.jpg','线路介绍6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-29 00:46:37','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm3957q/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (12,'2021-04-29 00:46:37','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm3957q/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (13,'2021-04-29 00:46:37','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm3957q/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (14,'2021-04-29 00:46:37','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm3957q/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (15,'2021-04-29 00:46:37','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm3957q/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (16,'2021-04-29 00:46:37','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm3957q/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `zhandianfenlei` */

DROP TABLE IF EXISTS `zhandianfenlei`;

CREATE TABLE `zhandianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='站点分类';

/*Data for the table `zhandianfenlei` */

insert  into `zhandianfenlei`(`id`,`addtime`,`fenlei`) values (31,'2021-04-29 00:46:37','分类1');
insert  into `zhandianfenlei`(`id`,`addtime`,`fenlei`) values (32,'2021-04-29 00:46:37','分类2');
insert  into `zhandianfenlei`(`id`,`addtime`,`fenlei`) values (33,'2021-04-29 00:46:38','分类3');
insert  into `zhandianfenlei`(`id`,`addtime`,`fenlei`) values (34,'2021-04-29 00:46:38','分类4');
insert  into `zhandianfenlei`(`id`,`addtime`,`fenlei`) values (35,'2021-04-29 00:46:38','分类5');
insert  into `zhandianfenlei`(`id`,`addtime`,`fenlei`) values (36,'2021-04-29 00:46:38','分类6');

/*Table structure for table `zhandianxinxi` */

DROP TABLE IF EXISTS `zhandianxinxi`;

CREATE TABLE `zhandianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhandianmingcheng` varchar(200) DEFAULT NULL COMMENT '站点名称',
  `zhandianfenlei` varchar(200) DEFAULT NULL COMMENT '站点分类',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fachejiange` varchar(200) DEFAULT NULL COMMENT '发车间隔',
  `xiangqing` longtext COMMENT '详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='站点信息';

/*Data for the table `zhandianxinxi` */

insert  into `zhandianxinxi`(`id`,`addtime`,`zhandianmingcheng`,`zhandianfenlei`,`dizhi`,`fachejiange`,`xiangqing`,`tupian`) values (41,'2021-04-29 00:46:38','站点名称1','站点分类1','地址1','发车间隔1','详情1','http://localhost:8080/ssm3957q/upload/zhandianxinxi_tupian1.jpg');
insert  into `zhandianxinxi`(`id`,`addtime`,`zhandianmingcheng`,`zhandianfenlei`,`dizhi`,`fachejiange`,`xiangqing`,`tupian`) values (42,'2021-04-29 00:46:38','站点名称2','站点分类2','地址2','发车间隔2','详情2','http://localhost:8080/ssm3957q/upload/zhandianxinxi_tupian2.jpg');
insert  into `zhandianxinxi`(`id`,`addtime`,`zhandianmingcheng`,`zhandianfenlei`,`dizhi`,`fachejiange`,`xiangqing`,`tupian`) values (43,'2021-04-29 00:46:38','站点名称3','站点分类3','地址3','发车间隔3','详情3','http://localhost:8080/ssm3957q/upload/zhandianxinxi_tupian3.jpg');
insert  into `zhandianxinxi`(`id`,`addtime`,`zhandianmingcheng`,`zhandianfenlei`,`dizhi`,`fachejiange`,`xiangqing`,`tupian`) values (44,'2021-04-29 00:46:38','站点名称4','站点分类4','地址4','发车间隔4','详情4','http://localhost:8080/ssm3957q/upload/zhandianxinxi_tupian4.jpg');
insert  into `zhandianxinxi`(`id`,`addtime`,`zhandianmingcheng`,`zhandianfenlei`,`dizhi`,`fachejiange`,`xiangqing`,`tupian`) values (45,'2021-04-29 00:46:38','站点名称5','站点分类5','地址5','发车间隔5','详情5','http://localhost:8080/ssm3957q/upload/zhandianxinxi_tupian5.jpg');
insert  into `zhandianxinxi`(`id`,`addtime`,`zhandianmingcheng`,`zhandianfenlei`,`dizhi`,`fachejiange`,`xiangqing`,`tupian`) values (46,'2021-04-29 00:46:38','站点名称6','站点分类6','地址6','发车间隔6','详情6','http://localhost:8080/ssm3957q/upload/zhandianxinxi_tupian6.jpg');

/*Table structure for table `zhoubianfenlei` */

DROP TABLE IF EXISTS `zhoubianfenlei`;

CREATE TABLE `zhoubianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhoubianfenlei` varchar(200) DEFAULT NULL COMMENT '周边分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='周边分类';

/*Data for the table `zhoubianfenlei` */

insert  into `zhoubianfenlei`(`id`,`addtime`,`zhoubianfenlei`) values (51,'2021-04-29 00:46:38','周边分类1');
insert  into `zhoubianfenlei`(`id`,`addtime`,`zhoubianfenlei`) values (52,'2021-04-29 00:46:38','周边分类2');
insert  into `zhoubianfenlei`(`id`,`addtime`,`zhoubianfenlei`) values (53,'2021-04-29 00:46:38','周边分类3');
insert  into `zhoubianfenlei`(`id`,`addtime`,`zhoubianfenlei`) values (54,'2021-04-29 00:46:38','周边分类4');
insert  into `zhoubianfenlei`(`id`,`addtime`,`zhoubianfenlei`) values (55,'2021-04-29 00:46:38','周边分类5');
insert  into `zhoubianfenlei`(`id`,`addtime`,`zhoubianfenlei`) values (56,'2021-04-29 00:46:38','周边分类6');

/*Table structure for table `zhoubianxinxi` */

DROP TABLE IF EXISTS `zhoubianxinxi`;

CREATE TABLE `zhoubianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `zhoubianfenlei` varchar(200) DEFAULT NULL COMMENT '周边分类',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `neirong` longtext COMMENT '内容',
  `gengxinshijian` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='周边信息';

/*Data for the table `zhoubianxinxi` */

insert  into `zhoubianxinxi`(`id`,`addtime`,`mingcheng`,`zhoubianfenlei`,`fengmiantupian`,`xiangxidizhi`,`lianxifangshi`,`neirong`,`gengxinshijian`) values (61,'2021-04-29 00:46:38','名称1','周边分类1','http://localhost:8080/ssm3957q/upload/zhoubianxinxi_fengmiantupian1.jpg','详细地址1','联系方式1','内容1','2021-04-29');
insert  into `zhoubianxinxi`(`id`,`addtime`,`mingcheng`,`zhoubianfenlei`,`fengmiantupian`,`xiangxidizhi`,`lianxifangshi`,`neirong`,`gengxinshijian`) values (62,'2021-04-29 00:46:38','名称2','周边分类2','http://localhost:8080/ssm3957q/upload/zhoubianxinxi_fengmiantupian2.jpg','详细地址2','联系方式2','内容2','2021-04-29');
insert  into `zhoubianxinxi`(`id`,`addtime`,`mingcheng`,`zhoubianfenlei`,`fengmiantupian`,`xiangxidizhi`,`lianxifangshi`,`neirong`,`gengxinshijian`) values (63,'2021-04-29 00:46:38','名称3','周边分类3','http://localhost:8080/ssm3957q/upload/zhoubianxinxi_fengmiantupian3.jpg','详细地址3','联系方式3','内容3','2021-04-29');
insert  into `zhoubianxinxi`(`id`,`addtime`,`mingcheng`,`zhoubianfenlei`,`fengmiantupian`,`xiangxidizhi`,`lianxifangshi`,`neirong`,`gengxinshijian`) values (64,'2021-04-29 00:46:38','名称4','周边分类4','http://localhost:8080/ssm3957q/upload/zhoubianxinxi_fengmiantupian4.jpg','详细地址4','联系方式4','内容4','2021-04-29');
insert  into `zhoubianxinxi`(`id`,`addtime`,`mingcheng`,`zhoubianfenlei`,`fengmiantupian`,`xiangxidizhi`,`lianxifangshi`,`neirong`,`gengxinshijian`) values (65,'2021-04-29 00:46:38','名称5','周边分类5','http://localhost:8080/ssm3957q/upload/zhoubianxinxi_fengmiantupian5.jpg','详细地址5','联系方式5','内容5','2021-04-29');
insert  into `zhoubianxinxi`(`id`,`addtime`,`mingcheng`,`zhoubianfenlei`,`fengmiantupian`,`xiangxidizhi`,`lianxifangshi`,`neirong`,`gengxinshijian`) values (66,'2021-04-29 00:46:38','名称6','周边分类6','http://localhost:8080/ssm3957q/upload/zhoubianxinxi_fengmiantupian6.jpg','详细地址6','联系方式6','内容6','2021-04-29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
