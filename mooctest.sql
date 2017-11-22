/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : mooctest

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2017-11-19 21:42:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stuinfo
-- ----------------------------
DROP TABLE IF EXISTS `stuinfo`;
CREATE TABLE `stuinfo` (
  `id` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `personal_id` varchar(18) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `student_id` varchar(11) DEFAULT NULL,
  `attendance_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `major_name` varchar(20) DEFAULT NULL,
  `tel_number` varchar(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wechat` varchar(20) DEFAULT NULL,
  `address` text,
  `is_enabled` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stuinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tecinfo
-- ----------------------------
DROP TABLE IF EXISTS `tecinfo`;
CREATE TABLE `tecinfo` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `personal_id` varchar(18) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `organization` varchar(30) DEFAULT NULL,
  `professional_title` varchar(30) DEFAULT NULL,
  `tel_number` varchar(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wechat` varchar(20) DEFAULT NULL,
  `address` text,
  `research_direction` varchar(255) DEFAULT NULL,
  `teaching_field` varchar(255) DEFAULT NULL,
  `personal_achivement` varchar(255) DEFAULT NULL,
  `is_enabled` int(1) DEFAULT NULL,
  `research_dirction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tecinfo
-- ----------------------------
