/*
Navicat MySQL Data Transfer

Source Server         : 1400310506
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : mooctest

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2017-11-24 11:44:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `classification` varchar(255) NOT NULL,
  `visit_count` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_id` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `begin_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` text,
  `content` text,
  `criterion` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `picture_path` varchar(255) DEFAULT NULL,
  `attend_count` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) NOT NULL,
  `course_out_line` longtext,
  `course_progress` int(11) DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pb1syocle6w9q5kxr2mw0w1io` (`organization`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for courseware
-- ----------------------------
DROP TABLE IF EXISTS `courseware`;
CREATE TABLE `courseware` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `chapter_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `course_file` varchar(255) DEFAULT NULL,
  `flie_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for course_chapter
-- ----------------------------
DROP TABLE IF EXISTS `course_chapter`;
CREATE TABLE `course_chapter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for course_notice
-- ----------------------------
DROP TABLE IF EXISTS `course_notice`;
CREATE TABLE `course_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `classification` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `visit_count` int(11) DEFAULT NULL,
  `reply_count` int(11) DEFAULT NULL,
  `praise_count` int(11) DEFAULT NULL,
  `nonsupport_count` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for discuss_reply
-- ----------------------------
DROP TABLE IF EXISTS `discuss_reply`;
CREATE TABLE `discuss_reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `discuss_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `praise_count` int(11) DEFAULT NULL,
  `nonsupport_count` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `classification` varchar(255) NOT NULL,
  `dfile` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `visit_count` int(11) DEFAULT NULL,
  `download_count` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
