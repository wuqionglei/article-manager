/*
Navicat MySQL Data Transfer

Source Server         : 本地MySQL
Source Server Version : 50618
Source Host           : localhost:3306
Source Database       : numysql

Target Server Type    : MYSQL
Target Server Version : 50618
File Encoding         : 65001

Date: 2015-09-01 15:43:08
*/

/*SET FOREIGN_KEY_CHECKS=0;*/


-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin1', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('2', 'admin2', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('3', 'admin3', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('4', 'admin4', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('5', 'admin5', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('6', 'admin6', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('7', 'admin7', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('8', 'admin8', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('9', 'admin9', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('10', 'admin10', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('11', 'admin11', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('12', 'admin12', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('13', 'admin13', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('14', 'admin14', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('15', 'admin15', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('16', 'admin16', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('17', 'admin17', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('18', 'admin18', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('19', 'admin19', 'admin', '超级管理员', 'admin@qq.com');
INSERT INTO `t_user` VALUES ('20', 'admin20', 'admin', '超级管理员', 'admin@qq.com');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('1', '百度', 'www.baidu.com', '搜索引擎');
INSERT INTO `t_article` VALUES ('2', '搜狐', 'www.sohu.com', '门户网站');

