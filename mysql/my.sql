SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `yunzhi_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '相片ID',               
  `name` varchar(30) DEFAULT '' COMMENT '相片名字',                                  
  `ablumId` int(11) unsigned COMMENT '相册ID', 
  `address` varchar(30) DEFAULT '' COMMENT '存放地址',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `age` int(4) unsigned DEFAULT ''  COMMENT '年龄',
  `name` varchar(30) DEFAULT '' COMMENT '姓名',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0男，1女',
  `username` varchar(16) NOT NULL COMMENT '用户名',
  `email` varchar(30) DEFAULT '' COMMENT '邮箱',
  `tel` varchar(30) DEFAULT '' COMMENT '电话号码',
  `address` varchar(30) DEFAULT '' COMMENT '居住地区',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册ID',               
  `name` varchar(30) DEFAULT '' COMMENT '相册名字',                                  
  `userId` int(11) unsigned COMMENT '创建者ID',
  `creatName` varchar(16) NOT NULL COMMENT '创建者名字',
  `address` varchar(30) DEFAULT '' COMMENT '存放地址',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `dec` varchar(230) DEFAULT '' COMMENT '相册描述', 
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



ALTER TABLE `user` ADD `photoAdd` VARCHAR(30) NULL COMMENT '照片存放地址' AFTER `update_time`;

INSERT INTO `album` (`id`, `name`, `userId`, `creatName`, `address`, `create_time`, `update_time`, `dec`) VALUES ('0', '诺基亚', '0', '胡海兵', 'album.jpg', '0', '0', '诺基亚实习合照');

INSERT INTO `photo` (`id`, `name`, `ablumId`, `address`, `create_time`) VALUES ('0', '合照', '0', '合照.jpg', '0');



