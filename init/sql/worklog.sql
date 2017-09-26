/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : worklog

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-09-27 00:10:29
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_daily_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_daily_log`;
CREATE TABLE `t_daily_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `content` longtext NOT NULL COMMENT '内容',
  `date` date NOT NULL,
  `fk_user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`fk_user_id`),
  CONSTRAINT `t_daily_log_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='天日志';

-- ----------------------------
-- Records of t_daily_log
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(256) NOT NULL COMMENT '密码',
  `salt` varchar(128) NOT NULL COMMENT '盐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO t_user VALUES ('1', 'admin', '123456', 'hello');
INSERT INTO t_user VALUES ('2', 'admin', '123456', 'hello');

-- ----------------------------
-- Table structure for `t_week_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_week_log`;
CREATE TABLE `t_week_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `content` longtext NOT NULL COMMENT '内容',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `fk_user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`fk_user_id`),
  CONSTRAINT `t_week_log_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='周日志';

-- ----------------------------
-- Records of t_week_log
-- ----------------------------
