/*
Navicat MySQL Data Transfer

Source Server         : 1400310506
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : mooctest

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2017-11-22 12:12:32
*/

SET FOREIGN_KEY_CHECKS=0;

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pb1syocle6w9q5kxr2mw0w1io` (`organization`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', null, '2017-06-06 00:07:24', '2017-06-06 00:07:41', '2017-05-07 00:03:00', '2017-07-08 00:03:00', '软件测试与质量', null, '<p style=\"text-indent: 2em;\">软件缺陷伴随软件的出现而出现，若没有软件测试，那我们只能无奈地看缺陷飞了。软件测试可以发现缺陷，验证软件质量，是软件质量保证的重要手段之一。让我们通过本课程的学习，一起来探讨软件测试的基本概念和核心方法，探索借助先进的软件测试工具实现测试的高效管理与实施，尝试发掘软件质量的奥秘。</p>', null, 'M1496678844189', null, '/static/upload/image/201706/0709abf8-26fc-4fdb-84f5-94e4d654c55c.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('2', null, '2017-06-06 03:15:39', '2017-06-06 03:25:12', '2017-05-07 03:12:00', '2017-05-08 03:12:00', '电子线路设计、测试与实验（二）', null, '<p style=\"text-indent: 2em;\">从基础做起，面向社会与行业实际要求，由国家级教学团队名师手把手引领电子线路设计与测试的学习与实践，培养电子技术应用的基本实验技能及电子系统的设计与创新能力。&quot;电子线路设计、测试与实验&quot;课程是你大学难忘的回忆，更是你职业人生辉煌的起点！</p>', null, 'M1496690138947', null, '/static/upload/image/201706/9f593af7-c61e-4fb3-be91-df2fbe44340a.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('3', null, '2017-06-06 03:28:56', '2017-06-06 03:28:58', '2017-06-07 03:28:00', '2017-06-08 03:28:00', '电子技术应用实验1（数字电路基础实验）', null, '<p style=\"text-indent: 2em;\">让我们一起进入数字电路实验的世界！让课程带你循序渐进的学习常用仪器使用技巧，通过中小规模集成电路了解数字电路基础模块的应用，从一个电路、一根连线、一次测试、一次解决问题开始进入数字电路设计的大门！</p>', null, 'M1496690935557', null, '/static/upload/image/201706/7471980f-1fe5-47e6-a1da-179385f694e0.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('4', null, '2017-06-06 07:42:14', '2017-06-06 07:42:16', '2017-06-06 08:00:00', '2017-06-08 08:00:00', 'C语言程序设计精髓', null, '<p style=\"text-indent: 2em;\">学习程序设计是一件充满挑战、更充满乐趣的事情，然而学习之初，它之所以给你枯燥乏味的感觉，那是因为没有发掘出它的趣味来。本课程力图用最简明的语言、最典型的实例及最通俗的解释将这种趣味性挖掘出来，带给你全新的学习体验，和你一起欣赏C语言之美，领悟C语言之妙，体会学习C语言之无穷乐趣。</p>', null, 'M1496706133603', null, '/static/upload/image/201706/0f76c345-ece6-46ad-97eb-00a684f3b191.png', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('5', null, '2017-06-06 07:56:46', '2017-06-06 07:57:02', '2017-06-06 08:00:00', '2017-06-09 08:00:00', 'AVR单片机应用技术', null, '<p style=\"text-indent: 2em;\">《AVR单片机应用技术》课程是以新型AVRMega16单片机作为学习载体，以单片机在实际电子产品的应用为主要学习目标，以项目化进行组织、实际电子产品开发步骤作为教学实施方式的教改课程。</p>', null, 'M1496707006467', null, '/static/upload/image/201706/4c156df9-2263-4f73-8f31-4be805fe69bf.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('6', null, '2017-06-06 09:56:13', '2017-06-06 09:56:15', '2017-06-10 09:56:00', '2017-06-20 09:56:00', '信号与系统', null, '<p style=\"text-indent: 2em;\">大千世界就是一个信号的世界，一个个系统各司其职，又紧密配合，你想探寻其奥秘吗？那就跟随西安电子科技大学的郭宝龙教授，来学习“信号与系统”课程，他将带领大家领略信息处理技术的神奇魅力。</p>', null, 'M1496714172678', null, '/static/upload/image/201706/c0cbe5b7-25a6-416d-909b-2e0ad548c639.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('7', null, '2017-06-06 09:57:40', '2017-06-06 09:57:43', '2017-05-10 09:57:00', '2017-05-30 09:57:00', '数学（升学模块）', null, '<p style=\"text-indent: 2em;\">学完两年的中职数学，要进入对口升学考试总复习阶段的你，是否对某些重点难点的数学知识不清楚？题目不会做？需要对所有知识点进行梳理、总结、提升。数学（升学模块）MOOC将从知识点梳理与小结、典型题与易错题分析、综合测试、答疑等各个环节，为你提供全方位的帮助，带你领略全新的备考体验！</p>', null, 'M1496714260117', null, '/static/upload/image/201706/9c56ba3a-92d3-4cfe-8cd8-829660b231ee.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('8', null, '2017-06-06 10:00:46', '2017-06-06 10:00:48', '2017-06-11 10:00:00', '2017-06-30 10:00:00', '普通化学', null, '<p style=\"text-indent: 2em;\">这是非化学化工专业学生在本科阶段学习的唯一一门化学公共基础课，在这里你能够更深入的学习物质结构、化学基本原理、元素化学、有机化学、分析化学等内容，能够从理论上分析为什么化工生产中能够使用催化剂提高反应速率，为什么有些金属硬，有些金属软，就让我们怀揣疑问，一起开始这门课程的学习吧！</p>', null, 'M1496714446049', null, '/static/upload/image/201706/a20c4c2f-0fc4-48bb-a3c4-5e8b7001d362.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('9', null, '2017-06-06 10:02:27', '2017-06-06 10:02:29', '2017-06-11 10:02:00', '2017-06-30 10:02:00', '程序设计基础', null, '<p style=\"text-indent: 2em;\">程序设计的魅力源自于它永无止境的挑战，成就感与释怀感，让您如痴如醉。C语言是当今世界最受欢迎的计算机语言，是全球顶尖大学最受追捧的第一门计算机语言。“项目驱动、信息化”教学；“新形态、一体化”教材；助力全国二级C语言考证。在这里让我们一起体会成功，享受创新，打造美好未来！</p>', null, 'M1496714546928', null, '/static/upload/image/201706/d33d72a1-dea4-49aa-b512-b8a05b25c269.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('10', null, '2017-06-06 10:04:13', '2017-06-06 10:04:15', '2017-06-11 10:04:00', '2017-06-30 10:04:00', '网络结构化布线与施工', null, '<p style=\"text-indent: 2em;\">&nbsp;本课程是计算机网络技术专业的专业核心课程。根据网络技术领域的职业岗位任职要求，讲述网络布线施工，工程监理和企事业网络维护等知识。围绕当前网络综合布线工程中的基本概念、规范，布线工程中的传输介质和器材、工具的使用，布线子系统的施工工艺、施工图纸的绘制，布线系统的测试、验收等内容，培养学生的相关职业能力和职业素质。</p>', null, 'M1496714653350', null, '/static/upload/image/201706/71915b58-d064-461b-959f-f43eec28741e.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('11', null, '2017-06-06 10:05:26', '2017-06-06 10:05:28', '2017-06-11 10:05:00', '2017-06-22 10:05:00', '机械工程控制基础', null, '<p style=\"text-indent: 2em;\">“机械工程控制基础”课程是机械工程学科和相近学科的核心课程，是机械工程及自动化专业和相近专业的主要专业基础课。目前是东北大学机械工程与自动化学院的本科生平台课程，同时也是机械电子工程专业硕士研究生的入学考试课程。</p>', null, 'M1496714726268', null, '/static/upload/image/201706/a5c2ec9b-9ebf-472b-8e22-d0a1ef9d2f75.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('12', null, '2017-06-06 10:06:27', '2017-06-06 10:06:29', '2017-06-13 10:06:00', '2017-06-30 10:06:00', '金融学基础', null, '<p style=\"text-indent: 2em;\">本课程是金融方向的基础课程之一，将围绕时间和风险两个维度下跨时期优化、资产估值和风险管理三大内容，通过个人生命周期财务规划、资本预算决策、投资组合与CAPM，以及股票、债券、期货与期权等典型金融产品的具体应用，助您全面了解现代金融学的框架体系，建立金融分析的思维与逻辑。</p>', null, 'M1496714787158', null, '/static/upload/image/201706/2ea80648-8ee8-45d7-af0a-a4a9f2d189b8.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('13', null, '2017-06-06 10:07:53', '2017-06-06 10:07:57', '2017-06-14 10:07:00', '2017-06-30 10:07:00', '成功心理与人才发展', null, '<p style=\"text-indent: 2em;\">成功——是人生永恒的追求。没有成功，人生就失去意义，人生就没有价值；没有成功，社会就不能向前发展。同学们渴望成功，渴望拥有辉煌的事业，过上富裕的生活，拥有甜蜜的爱情，美满幸福的家庭以及健康的身心，那么请你走进《成功心理与人才发展》课堂，让我们一起探讨通往成功的途径。</p>', null, 'M1496714873374', null, '/static/upload/image/201706/a6d46cce-efe7-49b3-a222-2230e485032a.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('14', null, '2017-06-06 10:09:15', '2017-06-06 10:09:17', '2017-06-15 10:09:00', '2017-06-29 10:09:00', '建筑材料', null, '<p style=\"text-indent: 2em;\">《建筑材料》是土木工程、建筑学、工程管理、工程造价、无机非金属材料等专业一门专业基础课。通过学习，能帮助你掌握常用建筑材料的性能和使用条件，熟悉其技术指标的测试、检测、储运、验收方法，能根根工程情况合理选择与使用材料、设计其生产和施工工艺，从而达到保证工程质量、节约材料的目的。</p>', null, 'M1496714954963', null, '/static/upload/image/201706/31ecb0f7-9c2f-4d82-9f70-177cc2eac10f.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('15', null, '2017-06-06 10:10:39', '2017-06-06 10:10:41', '2017-06-15 10:10:00', '2017-06-30 10:10:00', '航空燃气涡轮发动机结构设计', null, '<p style=\"text-indent: 2em;\">航空燃气涡轮发动机是人类实现飞行梦想的源动力，被誉为“工业皇冠上的明珠”。那么它由哪些结构组成？其功能如何通过结构设计实现？不同结构的设计要求是什么？未来结构设计科学技术发展方向是什么？本课程将是你迈上航空发动机殿堂的第一个台阶，为你打开探索其奥秘，发现、思考、解决问题的大门。</p>', null, 'M1496715039173', null, '/static/upload/image/201706/4c60a220-2ba6-4551-9bfd-2c39372e1b14.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('16', null, '2017-06-06 10:11:39', '2017-06-06 10:11:40', '2017-06-12 10:11:00', '2017-06-30 10:11:00', '软件工程', null, '<p style=\"text-indent: 2em;\">《软件工程》是软件工程专业的主干课，同时也是计算机类专业、信息类专业的重要专业课。本课程也可作为软件、计算机领域的从业人员的设计开发、项目管理等工作参考和借鉴。 本课程介绍面向对象软件工程的基本概念、原理、方法和工具，通过实例来讲解面向对象软件开发的整个过程。本慕课资料均为双语。</p>', null, 'M1496715098508', null, '/static/upload/image/201706/f920d376-2889-4dbc-bdd4-4edff034d865.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('17', null, '2017-06-06 10:12:50', '2017-06-06 10:12:51', '2017-06-14 10:12:00', '2017-06-30 10:12:00', '中职数学（六）——复习模块', null, '<p style=\"text-indent: 2em;\">本单元以数学文化、数学思想为引领，以《数学（基础模块）上册》的知识内容为载体，以知识的内在联系为线索，是对数学学习的一次提升。同时，本课程系统讲解了《数学（基础模块）上册》中涉及的计算工具的使用方法，帮助学生从繁琐的纸笔计算中解放出来，为探索数学规律解决实际问题提供了有力的工具。</p>', null, 'M1496715169824', null, '/static/upload/image/201706/16cef6a5-9212-4a1b-8494-575df4eefa92.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('18', null, '2017-06-06 10:13:59', '2017-06-06 10:14:01', '2017-06-14 10:13:00', '2017-06-30 10:13:00', '自然保护与生态安全：拯救地球家园', null, '<p style=\"text-indent: 2em;\">本课程采用大量的数据和案例来“数说”自然保护，了解自然生态系统、自然资源及自然保护的现状，熟悉全球自然生态保护的热点问题，探讨生态安全的重要性，共同守护地球家园。</p>', null, 'M1496715239133', null, '/static/upload/image/201706/e0457419-fa46-4b7f-99ec-5f4fc00210b3.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('19', null, '2017-06-06 10:15:01', '2017-06-06 10:15:03', '2017-06-13 10:14:00', '2017-06-30 10:14:00', 'VisualBasic6.0程序设计', null, '<p style=\"text-indent: 2em;\">50年前，Basic的诞生结束了计算机只能由专业人员使用的历史，推动了计算机的普及。Windows操作系统的出现又将Basic推向一个新的高度——Visual Basic。它是一个以结构化Basic语言为基础、以事件驱动为机制的“可视”的程序设计语言，能够支持多媒体、数据库、网络等应用，可方便、轻松地开发应用软件。</p>', null, 'M1496715301105', null, '/static/upload/image/201706/d408b025-f981-44f1-a020-e7b494f77d9a.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('20', null, '2017-06-06 10:16:12', '2017-06-06 10:16:13', '2017-06-14 10:16:00', '2017-06-30 10:16:00', '静态网页设计', null, '<p style=\"text-indent: 2em;\">本课程采用项目化教学，结构新颖、层次分明、内容丰富。整个教学过程按照企业网站开发的真实工作过程，依据网站需求、设计、开发、测试、发布等开发流程，从网站规划、页面设计、页面制作等方面揭示了生活类网站、企业类网站等的完整开发过程。使学生在轻松的教学氛围中得到了项目开发实训锻炼。<br/></p>', null, 'M1496715371807', null, '/static/upload/image/201706/56398a5e-9cf0-45e3-b27f-faa4c6e5fbd0.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('21', null, '2017-06-06 10:17:47', '2017-06-06 10:17:48', '2017-06-13 10:17:00', '2017-06-22 10:17:00', 'C编程方法学', null, '<p style=\"text-indent: 2em;\">C语言在各类编程语言排行榜上一直位居前两位，历史悠久，但依然生命力旺盛，它是很多其他编程语言的基础，在系统程序、嵌入式系统、物联网应用等领域依然是无可替代的。本课程是零基础的编程入门课，是后续学习其它计算机课程的基础。学习它，掌握它，你将发现计算机编程原来也是一件很有趣的事情。</p>', null, 'M1496715466806', null, '/static/upload/image/201706/c87fa698-31f3-41f8-984b-2a69809a0b1e.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('22', null, '2017-06-06 10:19:34', '2017-06-06 10:19:36', '2017-06-14 10:19:00', '2017-06-26 10:19:00', '理论力学', null, '<p style=\"text-indent: 2em;\">本课程以哈尔滨工业大学理学教研组编写的经典教材为授课内容，前期经过精心准备，视频录制，通过视频学习可以完成课程全部基本内容的学习（仅包括上册，并排除虚位移原理），并布置作业，设置单元测试。以期达到通过MOOC的形式最大程度得到课堂学习的效果。</p>', null, 'M1496715574249', null, '/static/upload/image/201706/49801786-96ea-48d9-a42e-37bd479a09ef.jpg', null, 'PUBLISHED');
INSERT INTO `course` VALUES ('23', null, '2017-06-06 12:28:31', '2017-06-06 12:28:33', '2017-06-07 12:28:00', '2017-06-30 12:28:00', '软件测试', null, '<p style=\"text-indent: 2em;\">软件是人类的智力产品，从需求分析、构思创建、设计实现、运行维护到终结使用，具有‘生命周期’和质量的特征属性。软件质量保证最主要的策略与方法是持续开展测试，测试工程师常被誉为‘软件医生’。本课程系统介绍软件测试的主要理论知识与业界主流工程方法。你想学习和掌握它吗？ 欢迎加入学习！</p>', null, 'M1496723311122', null, '/static/upload/image/201706/a71c2d9d-11bd-400d-afca-ee33c81d7f1d.jpg', null, 'PUBLISHED');

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
-- Records of courseware
-- ----------------------------

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
-- Records of course_chapter
-- ----------------------------

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
-- Records of course_notice
-- ----------------------------

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
INSERT INTO `stuinfo` VALUES ('aaa', '123', '323214', '', null, null, '', null, '', '', '', '', '', '', '1');

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
