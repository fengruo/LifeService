/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : 127.0.0.1:3306
Source Database       : lifeservicedb

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-01 11:48:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbactivity
-- ----------------------------
DROP TABLE IF EXISTS `tbactivity`;
CREATE TABLE `tbactivity` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `zname` varchar(255) DEFAULT NULL COMMENT '活动名',
  `zdate` varchar(255) DEFAULT NULL COMMENT '活动发布日期',
  `zcontent` text COMMENT '活动内容',
  `zimg1` varchar(255) DEFAULT NULL COMMENT '图片url',
  `zimg2` varchar(255) DEFAULT NULL,
  `zimg3` varchar(255) DEFAULT NULL,
  `zfbnameid` int(20) DEFAULT NULL COMMENT '发布人名称',
  `zfbstate` int(4) DEFAULT NULL COMMENT '爱心活动发布状态',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbactivity
-- ----------------------------

-- ----------------------------
-- Table structure for tbadmin
-- ----------------------------
DROP TABLE IF EXISTS `tbadmin`;
CREATE TABLE `tbadmin` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `zname` varchar(255) DEFAULT NULL COMMENT '管理员登录名',
  `zpass` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbadmin
-- ----------------------------

-- ----------------------------
-- Table structure for tbheader
-- ----------------------------
DROP TABLE IF EXISTS `tbheader`;
CREATE TABLE `tbheader` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `ahref` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbheader
-- ----------------------------

-- ----------------------------
-- Table structure for tbservicelist
-- ----------------------------
DROP TABLE IF EXISTS `tbservicelist`;
CREATE TABLE `tbservicelist` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `zserviceid` int(20) DEFAULT NULL,
  `btitle` varchar(255) DEFAULT NULL COMMENT '二级标题名',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbservicelist
-- ----------------------------
INSERT INTO `tbservicelist` VALUES ('1', '1', '保姆');
INSERT INTO `tbservicelist` VALUES ('2', '1', '月嫂');
INSERT INTO `tbservicelist` VALUES ('3', '1', '小时工');
INSERT INTO `tbservicelist` VALUES ('4', '1', '看护');
INSERT INTO `tbservicelist` VALUES ('5', '1', '搬家');
INSERT INTO `tbservicelist` VALUES ('6', '2', '空调');
INSERT INTO `tbservicelist` VALUES ('7', '2', '冰箱');
INSERT INTO `tbservicelist` VALUES ('8', '2', '洗衣机');

-- ----------------------------
-- Table structure for tbservicetitle
-- ----------------------------
DROP TABLE IF EXISTS `tbservicetitle`;
CREATE TABLE `tbservicetitle` (
  `zid` int(20) NOT NULL AUTO_INCREMENT COMMENT '服务一级标题id',
  `btitle` varchar(255) DEFAULT NULL COMMENT '一级标题名',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbservicetitle
-- ----------------------------
INSERT INTO `tbservicetitle` VALUES ('1', '家政服务');
INSERT INTO `tbservicetitle` VALUES ('2', '家电维修');

-- ----------------------------
-- Table structure for tbshopinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbshopinfo`;
CREATE TABLE `tbshopinfo` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `zspname` varchar(255) DEFAULT NULL COMMENT '商品名字',
  `zfbdate` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `zfbuserid` int(20) DEFAULT NULL COMMENT '用户id',
  `zjystate` int(4) DEFAULT NULL COMMENT '交易状态  0 已发布 1已完成交易 2已删除',
  `zspprice` double(20,2) DEFAULT NULL COMMENT '商品价格',
  `zspimg1` varchar(255) DEFAULT NULL COMMENT '图片url1',
  `zspimg2` varchar(255) DEFAULT NULL,
  `zspimg3` varchar(255) DEFAULT NULL,
  `zspdescripe` text COMMENT '商品描述',
  `zspdetail` text COMMENT '商品详细说明',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshopinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbshoplist
-- ----------------------------
DROP TABLE IF EXISTS `tbshoplist`;
CREATE TABLE `tbshoplist` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `zname` varchar(255) DEFAULT NULL COMMENT '商品二级标题id',
  `ztitleid` int(20) DEFAULT NULL COMMENT '商品一级标题id',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoplist
-- ----------------------------
INSERT INTO `tbshoplist` VALUES ('1', '手机', '1');
INSERT INTO `tbshoplist` VALUES ('2', '电脑', '1');
INSERT INTO `tbshoplist` VALUES ('3', '其他', '1');
INSERT INTO `tbshoplist` VALUES ('4', '毛衣', '2');
INSERT INTO `tbshoplist` VALUES ('5', '衬衫', '2');
INSERT INTO `tbshoplist` VALUES ('6', '裙子', '2');

-- ----------------------------
-- Table structure for tbshoptitle
-- ----------------------------
DROP TABLE IF EXISTS `tbshoptitle`;
CREATE TABLE `tbshoptitle` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `zname` varchar(255) DEFAULT NULL COMMENT '一级标题',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoptitle
-- ----------------------------
INSERT INTO `tbshoptitle` VALUES ('1', '电子产品');
INSERT INTO `tbshoptitle` VALUES ('2', '衣物');

-- ----------------------------
-- Table structure for tbuser
-- ----------------------------
DROP TABLE IF EXISTS `tbuser`;
CREATE TABLE `tbuser` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `zusername` varchar(255) DEFAULT NULL COMMENT '用户登陆名',
  `zpassword` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `zname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `zphone` varchar(255) DEFAULT NULL COMMENT '手机',
  `zemail` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `zsex` int(4) DEFAULT NULL COMMENT '用户性别  1男 2女',
  `zaddress` varchar(255) DEFAULT NULL COMMENT '地址',
  `zcardid` varchar(25) DEFAULT NULL COMMENT '身份证',
  `zstate` int(4) DEFAULT NULL COMMENT '用户状态 ',
  `ztypeid` int(4) DEFAULT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbuser
-- ----------------------------

-- ----------------------------
-- Table structure for tbusertype
-- ----------------------------
DROP TABLE IF EXISTS `tbusertype`;
CREATE TABLE `tbusertype` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `zname` varchar(255) DEFAULT NULL COMMENT '用户角色名称',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusertype
-- ----------------------------

-- ----------------------------
-- Table structure for tbztbd
-- ----------------------------
DROP TABLE IF EXISTS `tbztbd`;
CREATE TABLE `tbztbd` (
  `zid` int(20) NOT NULL AUTO_INCREMENT,
  `ztitle` varchar(255) DEFAULT NULL,
  `zfbname` varchar(255) DEFAULT NULL COMMENT '发布人',
  `zcontent` text COMMENT '发布内容',
  `zfbdate` varchar(255) DEFAULT NULL COMMENT '发布日期',
  `zfbstate` int(4) DEFAULT NULL COMMENT '发布状态',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbztbd
-- ----------------------------
