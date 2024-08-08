/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t281`;
CREATE DATABASE IF NOT EXISTS `t281` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t281`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-15 13:56:51'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-15 13:56:51'),
	(3, 'yaopin_types', '药品类型', 1, '药品类型1', NULL, NULL, '2022-03-15 13:56:51'),
	(4, 'yaopin_types', '药品类型', 2, '药品类型2', NULL, NULL, '2022-03-15 13:56:51'),
	(5, 'yaopin_types', '药品类型', 3, '药品类型3', NULL, NULL, '2022-03-15 13:56:51'),
	(6, 'yaopin_types', '药品类型', 4, '药品类型4', NULL, NULL, '2022-03-15 13:56:51'),
	(7, 'gongyingshang_types', '供应商类型', 1, '供应商类型1', NULL, NULL, '2022-03-15 13:56:51'),
	(8, 'gongyingshang_types', '供应商类型', 2, '供应商类型2', NULL, NULL, '2022-03-15 13:56:51'),
	(9, 'gongyingshang_xinyongdengji_types', '供应商信用等级类型', 1, '一级', NULL, NULL, '2022-03-15 13:56:51'),
	(10, 'gongyingshang_xinyongdengji_types', '供应商信用等级类型', 2, '二级', NULL, NULL, '2022-03-15 13:56:51'),
	(11, 'gongyingshang_xinyongdengji_types', '供应商信用等级类型', 3, '三级', NULL, NULL, '2022-03-15 13:56:51');

DROP TABLE IF EXISTS `gongyingshang`;
CREATE TABLE IF NOT EXISTS `gongyingshang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称  Search111 ',
  `gongyingshang_types` int DEFAULT NULL COMMENT '供应商类型',
  `gongyingshang_xinyongdengji_types` int DEFAULT NULL COMMENT '信用等级 Search111 ',
  `gongyingshang_content` text COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='供应商信息';

DELETE FROM `gongyingshang`;
INSERT INTO `gongyingshang` (`id`, `gongyingshang_name`, `gongyingshang_types`, `gongyingshang_xinyongdengji_types`, `gongyingshang_content`, `create_time`) VALUES
	(1, '供应商名称1', 2, 1, '供应商详情1', '2022-03-15 13:59:37'),
	(2, '供应商名称2', 1, 2, '供应商详情2', '2022-03-15 13:59:37'),
	(3, '供应商名称3', 1, 3, '供应商详情3', '2022-03-15 13:59:37'),
	(4, '供应商名称4', 2, 3, '供应商详情4', '2022-03-15 13:59:37'),
	(5, '供应商名称5', 1, 3, '供应商详情5', '2022-03-15 13:59:37');

DROP TABLE IF EXISTS `jinhuo`;
CREATE TABLE IF NOT EXISTS `jinhuo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jinhuo_uuid_number` varchar(200) DEFAULT NULL COMMENT '进货编号  Search111 ',
  `yaopin_id` int DEFAULT NULL COMMENT '药品',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `jinhuo_shuliang_number` int DEFAULT NULL COMMENT '进货数量',
  `jinhuo_content` text COMMENT '备注 ',
  `jinhuo_time` timestamp NULL DEFAULT NULL COMMENT '进货时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='进货';

DELETE FROM `jinhuo`;
INSERT INTO `jinhuo` (`id`, `jinhuo_uuid_number`, `yaopin_id`, `yuangong_id`, `jinhuo_shuliang_number`, `jinhuo_content`, `jinhuo_time`, `insert_time`, `create_time`) VALUES
	(1, '164735277754717', 1, 2, 84, '备注1', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(2, '164735277754711', 2, 1, 478, '备注2', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(3, '16473527775475', 3, 3, 179, '备注3', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(4, '164735277754715', 4, 2, 136, '备注4', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(5, '164735277754714', 5, 3, 303, '备注5', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(6, '1647393665874', 5, 3, 1, '<p>wew</p>', '2022-03-15 16:00:00', '2022-03-16 01:22:30', '2022-03-16 01:22:30'),
	(7, '1647394313133', 5, 1, 2, '<p>2022年3月16日进货2个</p>', '2022-03-15 16:00:00', '2022-03-16 01:32:17', '2022-03-16 01:32:17');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'z3arl4xjkdmiq2g63ku1hyghvlqduipd', '2022-03-16 01:06:36', '2024-07-24 02:57:21'),
	(2, 1, 'a1', 'yuangong', '员工', '4ww4jtddvbh4o6ip9eqvenfncw120dm4', '2022-03-16 01:31:43', '2024-07-24 02:58:15');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `xiaoshou`;
CREATE TABLE IF NOT EXISTS `xiaoshou` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiaoshou_uuid_number` varchar(200) DEFAULT NULL COMMENT '销售编号  Search111 ',
  `yaopin_id` int DEFAULT NULL COMMENT '药品',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `xiaoshou_shuliang_number` int DEFAULT NULL COMMENT '销售数量',
  `xiaoshou_content` text COMMENT '备注 ',
  `xiaoshou_time` timestamp NULL DEFAULT NULL COMMENT '销售时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='销售';

DELETE FROM `xiaoshou`;
INSERT INTO `xiaoshou` (`id`, `xiaoshou_uuid_number`, `yaopin_id`, `yuangong_id`, `xiaoshou_shuliang_number`, `xiaoshou_content`, `xiaoshou_time`, `insert_time`, `create_time`) VALUES
	(1, '164735277754918', 1, 1, 487, '备注1', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(2, '16473527775493', 2, 3, 272, '备注2', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(3, '16473527775493', 3, 3, 141, '备注3', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(4, '164735277754912', 4, 1, 140, '备注4', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(5, '164735277754913', 5, 3, 499, '备注5', '2022-03-15 13:59:37', '2022-03-15 13:59:37', '2022-03-15 13:59:37'),
	(6, '1647393761755', 5, 3, 1, '<p>223as</p>', '2022-03-14 16:00:00', '2022-03-16 01:22:54', '2022-03-16 01:22:54'),
	(8, '164735277754918', 1, 1, 487, '备注1', '2022-02-15 13:59:37', '2022-02-15 13:59:37', '2022-02-15 13:59:37'),
	(9, '16473527775493', 3, 3, 272, '备注2', '2022-02-15 13:59:37', '2022-02-15 13:59:37', '2022-02-15 13:59:37'),
	(10, '16473527775493', 3, 3, 141, '备注3', '2022-02-15 13:59:37', '2022-02-15 13:59:37', '2022-02-15 13:59:37'),
	(11, '164735277754912', 3, 1, 140, '备注4', '2022-02-15 13:59:37', '2022-02-15 13:59:37', '2022-02-15 13:59:37'),
	(12, '164735277754913', 5, 3, 499, '备注5', '2022-02-15 13:59:37', '2022-02-15 13:59:37', '2022-02-15 13:59:37'),
	(13, '1647393761755', 4, 3, 1, '<p>223as</p>', '2022-02-15 13:59:37', '2022-02-15 13:59:37', '2022-02-15 13:59:37'),
	(18, '1647394346373', 5, 1, 2, '<p>销售2个</p>', '2022-03-15 08:02:02', '2022-03-16 01:32:51', '2022-03-16 01:32:51');

DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE IF NOT EXISTS `yaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_id` int DEFAULT NULL COMMENT '供应商',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号  Search111 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_gongxiao` varchar(200) DEFAULT NULL COMMENT '药品功效  Search111 ',
  `yaopin_jibing` varchar(200) DEFAULT NULL COMMENT '所治疾病  Search111 ',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `yaopin_types` int DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_kucun_number` int DEFAULT NULL COMMENT '药品库存',
  `yaopin_jinjia_money` decimal(10,2) DEFAULT NULL COMMENT '进价 ',
  `yaopin_xiaoshou_money` decimal(10,2) DEFAULT NULL COMMENT '售价 ',
  `yaopin_content` text COMMENT '药品介绍 ',
  `yaopin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='药品';

DELETE FROM `yaopin`;
INSERT INTO `yaopin` (`id`, `gongyingshang_id`, `yaopin_uuid_number`, `yaopin_name`, `yaopin_gongxiao`, `yaopin_jibing`, `yaopin_photo`, `yaopin_types`, `yaopin_kucun_number`, `yaopin_jinjia_money`, `yaopin_xiaoshou_money`, `yaopin_content`, `yaopin_delete`, `create_time`) VALUES
	(1, 1, '16473527775519', '药品名称1', '药品功效1', '所治疾病1', 'http://localhost:8080/yiyaoguanlixitong/upload/yaopin1.jpg', 2, 101, 804.58, 654.40, '药品介绍1', 1, '2022-03-15 13:59:37'),
	(2, 2, '164735277755111', '药品名称2', '药品功效2', '所治疾病2', 'http://localhost:8080/yiyaoguanlixitong/upload/yaopin2.jpg', 3, 102, 682.60, 367.07, '药品介绍2', 1, '2022-03-15 13:59:37'),
	(3, 3, '16473527775518', '药品名称3', '药品功效3', '所治疾病3', 'http://localhost:8080/yiyaoguanlixitong/upload/yaopin3.jpg', 4, 103, 462.09, 578.56, '药品介绍3', 1, '2022-03-15 13:59:37'),
	(4, 4, '164735277755115', '药品名称4', '药品功效4', '所治疾病4', 'http://localhost:8080/yiyaoguanlixitong/upload/yaopin4.jpg', 4, 104, 3.51, 520.30, '药品介绍4', 1, '2022-03-15 13:59:37'),
	(5, 4, '164735277755216', '药品名称5', '药品功效5', '所治疾病5', 'http://localhost:8080/yiyaoguanlixitong/upload/yaopin5.jpg', 3, 105, 564.00, 877.77, '<p>药品介绍5</p>', 1, '2022-03-15 13:59:37');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `yuangong_email`, `create_time`) VALUES
	(1, '员工1', '123456', '员工姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/yiyaoguanlixitong/upload/yuangong1.jpg', 2, '1@qq.com', '2022-03-15 13:59:37'),
	(2, '员工2', '123456', '员工姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/yiyaoguanlixitong/upload/yuangong2.jpg', 2, '2@qq.com', '2022-03-15 13:59:37'),
	(3, '员工3', '123456', '员工姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/yiyaoguanlixitong/upload/yuangong3.jpg', 2, '3@qq.com', '2022-03-15 13:59:37');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
