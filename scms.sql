/*
Navicat MySQL Data Transfer

Source Server         : yezhiqiang
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : scms

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-28 17:26:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_academy
-- ----------------------------
DROP TABLE IF EXISTS `t_academy`;
CREATE TABLE `t_academy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `academy_name` varchar(100) DEFAULT NULL COMMENT '学院名',
  `create_date` datetime DEFAULT NULL COMMENT '开设时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='学院表';

-- ----------------------------
-- Records of t_academy
-- ----------------------------
INSERT INTO `t_academy` VALUES ('70', '信息工程学院', '2017-01-29 09:25:11');
INSERT INTO `t_academy` VALUES ('71', '体育科学学院', '2017-01-29 09:26:41');
INSERT INTO `t_academy` VALUES ('72', '人文学院', '2017-02-03 16:16:29');
INSERT INTO `t_academy` VALUES ('73', '法政学院', '2017-02-04 09:26:40');
INSERT INTO `t_academy` VALUES ('74', '物理学院', '2017-03-10 14:26:33');
INSERT INTO `t_academy` VALUES ('75', '数计学院', '2017-03-10 14:27:01');
INSERT INTO `t_academy` VALUES ('76', '教育科学学院', '2017-03-10 14:27:22');
INSERT INTO `t_academy` VALUES ('77', '外国语学院', '2017-03-10 14:27:33');
INSERT INTO `t_academy` VALUES ('78', '生命科学学院', '2017-03-10 14:28:28');
INSERT INTO `t_academy` VALUES ('79', '化学化工学院', '2017-03-10 14:28:43');
INSERT INTO `t_academy` VALUES ('80', '商学院', '2017-03-10 14:29:43');
INSERT INTO `t_academy` VALUES ('81', '美术与设计学院', '2017-03-10 14:30:13');
INSERT INTO `t_academy` VALUES ('82', '音乐与舞蹈学院', '2017-03-10 14:30:28');

-- ----------------------------
-- Table structure for t_building
-- ----------------------------
DROP TABLE IF EXISTS `t_building`;
CREATE TABLE `t_building` (
  `building_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上课大楼ID',
  `building_name` varchar(255) DEFAULT NULL COMMENT '上课大楼名称',
  `building_address` varchar(255) DEFAULT NULL COMMENT '上课大楼地址',
  `building_manager` varchar(255) DEFAULT NULL COMMENT '上课大楼管理员',
  `building_phone` varchar(255) DEFAULT NULL COMMENT '上课大楼管理员联系方式',
  PRIMARY KEY (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_building
-- ----------------------------
INSERT INTO `t_building` VALUES ('1', '第一教学楼', '燕岭区19号', '陈小明', '13800138564');
INSERT INTO `t_building` VALUES ('2', '第二教学楼', '雷阳区雷阳广场旁', '李富贵', '13613485964');
INSERT INTO `t_building` VALUES ('3', '第三教学楼', '雷阳区22号', '陈伟明', '13413526412');
INSERT INTO `t_building` VALUES ('4', '第四教学楼', '雷阳区树人广场对面', '陈伟明', '13413526412');
INSERT INTO `t_building` VALUES ('5', '综合实验楼A', '雷阳区18号', '毛泽西', '13622569845');
INSERT INTO `t_building` VALUES ('6', '综合实验楼B', '雷阳区19号', '毛泽西', '13622569845');
INSERT INTO `t_building` VALUES ('7', '鸿园三楼', '雷阳区鸿园食堂三层室内运动馆', '谭超文', '13425412365');
INSERT INTO `t_building` VALUES ('8', '新区田径场', '雷阳区泽园食堂对面', '谭超文', '13425412365');
INSERT INTO `t_building` VALUES ('9', '旧区田径场', '燕岭区东大门旁', '谭超文', '13425412365');

-- ----------------------------
-- Table structure for t_building_room
-- ----------------------------
DROP TABLE IF EXISTS `t_building_room`;
CREATE TABLE `t_building_room` (
  `tbr_id` int(11) NOT NULL AUTO_INCREMENT,
  `building_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`tbr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_building_room
-- ----------------------------
INSERT INTO `t_building_room` VALUES ('1', '6', '18', '50');
INSERT INTO `t_building_room` VALUES ('2', '3', '11', '60');
INSERT INTO `t_building_room` VALUES ('3', '2', '1', '70');
INSERT INTO `t_building_room` VALUES ('4', '1', '1', '50');
INSERT INTO `t_building_room` VALUES ('5', '1', '2', '70');
INSERT INTO `t_building_room` VALUES ('6', '4', '3', '70');
INSERT INTO `t_building_room` VALUES ('7', '9', '12', '70');

-- ----------------------------
-- Table structure for t_classes
-- ----------------------------
DROP TABLE IF EXISTS `t_classes`;
CREATE TABLE `t_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `class_name` varchar(100) DEFAULT NULL COMMENT '班级名',
  `grade` varchar(10) DEFAULT NULL COMMENT '年级',
  `major_id` int(11) DEFAULT NULL COMMENT '专业id',
  `stu_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Records of t_classes
-- ----------------------------
INSERT INTO `t_classes` VALUES ('21', '13外包1', '2013', '56', '36');
INSERT INTO `t_classes` VALUES ('22', '13外包2', '2013', '56', '39');
INSERT INTO `t_classes` VALUES ('23', '13计本', '2013', '57', '50');
INSERT INTO `t_classes` VALUES ('24', '人体1班', '2013', '58', '30');
INSERT INTO `t_classes` VALUES ('25', '数媒1班', '2013', '69', '50');
INSERT INTO `t_classes` VALUES ('26', '数媒2班', '2013', '69', '50');
INSERT INTO `t_classes` VALUES ('27', '国学1班', '2013', '70', '40');
INSERT INTO `t_classes` VALUES ('28', '英语教育1班', '2013', '72', '60');

-- ----------------------------
-- Table structure for t_classes_course
-- ----------------------------
DROP TABLE IF EXISTS `t_classes_course`;
CREATE TABLE `t_classes_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `classes_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL COMMENT '教师id',
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `major_id` int(11) DEFAULT NULL,
  `hours` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='教师与课程';

-- ----------------------------
-- Records of t_classes_course
-- ----------------------------
INSERT INTO `t_classes_course` VALUES ('12', '21', '28', '11', '56', '48');
INSERT INTO `t_classes_course` VALUES ('14', '21', '27', '50', '56', '64');
INSERT INTO `t_classes_course` VALUES ('15', '28', '34', '52', '72', '32');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `course_name` varchar(100) DEFAULT NULL COMMENT '课程名',
  `need_hours` tinyint(4) DEFAULT NULL COMMENT '所需学时',
  `major_id` int(11) DEFAULT '0' COMMENT '专业id',
  `create_date` datetime DEFAULT NULL COMMENT '开设时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('11', '设计模式', '48', '56', '2017-01-29 09:31:18');
INSERT INTO `t_course` VALUES ('17', 'VB设计基础', '32', '0', '2017-03-10 10:06:53');
INSERT INTO `t_course` VALUES ('18', '女性与艺术', '32', '0', '2017-03-10 14:22:25');
INSERT INTO `t_course` VALUES ('42', '红楼梦', '8', '0', '2017-03-14 15:25:42');
INSERT INTO `t_course` VALUES ('43', '鲁迅文学', '32', '0', '2017-03-14 17:19:16');
INSERT INTO `t_course` VALUES ('44', '中国近现代史', '4', '0', '2017-03-14 17:21:39');
INSERT INTO `t_course` VALUES ('46', '歌唱基础', '32', '0', '2017-03-15 16:09:09');
INSERT INTO `t_course` VALUES ('49', '法制与道德', '32', '0', '2017-03-16 14:24:36');
INSERT INTO `t_course` VALUES ('50', '大数据基础与实践', '64', '56', '2017-03-27 17:05:47');
INSERT INTO `t_course` VALUES ('52', '小学英语', '32', '72', '2017-03-28 17:11:19');

-- ----------------------------
-- Table structure for t_course_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_course_detail`;
CREATE TABLE `t_course_detail` (
  `tcd_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL COMMENT '关联的老师ID',
  `course_id` int(11) DEFAULT NULL COMMENT '关联的课程ID',
  `week_id` int(11) DEFAULT NULL COMMENT '第几周',
  `day_id` int(11) DEFAULT NULL COMMENT '星期几',
  `section_id` int(11) DEFAULT NULL COMMENT '第几节',
  `building_room_id` int(11) DEFAULT NULL COMMENT '关联地点ID',
  `select_num` int(11) DEFAULT NULL COMMENT '课程被选数量',
  `type` varchar(255) DEFAULT NULL COMMENT '1.学校安排的必修课程 2.学校安排的选修(普通)课程 3.学校安排的的选修(网络)课程 4.自由选择的讲座课程 5.自由选择的网络课程',
  `credit` varchar(255) DEFAULT NULL COMMENT '课程学分',
  `like_num` int(11) DEFAULT NULL COMMENT '课程评价分数',
  `course_introduce` varchar(255) DEFAULT NULL COMMENT '课程简介',
  `create_time` date DEFAULT NULL,
  `last_update_time` date DEFAULT NULL,
  PRIMARY KEY (`tcd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_detail
-- ----------------------------
INSERT INTO `t_course_detail` VALUES ('1', '27', '17', '1', '2', '9', '1', '0', '2', '2', '0', 'VB设计，助你走上人生巅峰', null, null);
INSERT INTO `t_course_detail` VALUES ('2', '27', '17', '1', '2', '10', '1', '0', '2', '2', '0', 'VB设计，助你走上人生巅峰', null, null);
INSERT INTO `t_course_detail` VALUES ('3', '28', '11', '1', '1', '1', '2', '0', '1', '4', '0', 'Java设计模式，架构的深入', null, null);
INSERT INTO `t_course_detail` VALUES ('4', '28', '11', '1', '1', '2', '2', '0', '1', '4', '0', 'Java设计模式，架构的深入', null, null);
INSERT INTO `t_course_detail` VALUES ('5', '31', '18', '1', '4', '9', '3', '0', '2', '2', '0', '探索女性的真善美', null, null);
INSERT INTO `t_course_detail` VALUES ('6', '31', '18', '1', '4', '10', '3', '0', '2', '2', '0', '探索女性的真善美', null, null);
INSERT INTO `t_course_detail` VALUES ('251', '31', '42', '2', '2', '3', '4', '0', '2', '0.5', '0', '石头记', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('252', '31', '42', '2', '2', '4', '4', '0', '2', '0.5', '0', '石头记', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('253', '31', '42', '4', '2', '3', '4', '0', '2', '0.5', '0', '石头记', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('254', '31', '42', '4', '2', '4', '4', '0', '2', '0.5', '0', '石头记', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('255', '31', '42', '1', '1', '3', '1', '0', '2', '0.5', '0', '石头记', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('256', '31', '42', '1', '1', '4', '1', '0', '2', '0.5', '0', '石头记', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('257', '31', '42', '3', '1', '1', '1', '0', '2', '0.5', '0', '石头记', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('258', '31', '42', '3', '1', '2', '1', '0', '2', '0.5', '0', '石头记', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('259', '32', '43', '1', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('260', '32', '43', '1', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('261', '32', '43', '2', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('262', '32', '43', '2', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('263', '32', '43', '3', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('264', '32', '43', '3', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('265', '32', '43', '4', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('266', '32', '43', '4', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('267', '32', '43', '5', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('268', '32', '43', '5', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('269', '32', '43', '6', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('270', '32', '43', '6', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('271', '32', '43', '7', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('272', '32', '43', '7', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('273', '32', '43', '8', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('274', '32', '43', '8', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('275', '32', '43', '9', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('276', '32', '43', '9', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('277', '32', '43', '10', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('278', '32', '43', '10', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('279', '32', '43', '11', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('280', '32', '43', '11', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('281', '32', '43', '12', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('282', '32', '43', '12', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('283', '32', '43', '13', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('284', '32', '43', '13', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('285', '32', '43', '14', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('286', '32', '43', '14', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('287', '32', '43', '15', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('288', '32', '43', '15', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('289', '32', '43', '16', '4', '9', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('290', '32', '43', '16', '4', '10', '5', '0', '2', '2', '0', '鲁迅文集的研读与分析', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('291', '31', '44', '2', '2', '9', '5', '0', '2', '1', '0', '中国近代内忧外患的国情解读', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('292', '31', '44', '2', '2', '10', '5', '0', '2', '1', '0', '中国近代内忧外患的国情解读', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('293', '31', '44', '1', '1', '9', '4', '0', '2', '1', '0', '中国近代内忧外患的国情解读', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('294', '31', '44', '1', '1', '10', '4', '0', '2', '1', '0', '中国近代内忧外患的国情解读', '2017-03-14', '2017-03-14');
INSERT INTO `t_course_detail` VALUES ('295', '33', '46', '1', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('296', '33', '46', '1', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('297', '33', '46', '2', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('298', '33', '46', '2', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('299', '33', '46', '3', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('300', '33', '46', '3', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('301', '33', '46', '4', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('302', '33', '46', '4', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('303', '33', '46', '5', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('304', '33', '46', '5', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('305', '33', '46', '6', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('306', '33', '46', '6', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('307', '33', '46', '7', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('308', '33', '46', '7', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('309', '33', '46', '8', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('310', '33', '46', '8', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('311', '33', '46', '9', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('312', '33', '46', '9', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('313', '33', '46', '10', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('314', '33', '46', '10', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('315', '33', '46', '11', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('316', '33', '46', '11', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('317', '33', '46', '12', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('318', '33', '46', '12', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('319', '33', '46', '13', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('320', '33', '46', '13', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('321', '33', '46', '14', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('322', '33', '46', '14', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('323', '33', '46', '15', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('324', '33', '46', '15', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('325', '33', '46', '16', '2', '9', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('326', '33', '46', '16', '2', '10', '3', '0', '2', '2', '0', '歌唱基础，踏入艺术的殿堂', '2017-03-15', '2017-03-15');
INSERT INTO `t_course_detail` VALUES ('327', '31', '49', '1', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('328', '31', '49', '1', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('329', '31', '49', '2', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('330', '31', '49', '2', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('331', '31', '49', '3', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('332', '31', '49', '3', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('333', '31', '49', '4', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('334', '31', '49', '4', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('335', '31', '49', '5', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('336', '31', '49', '5', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('337', '31', '49', '6', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('338', '31', '49', '6', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('339', '31', '49', '7', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('340', '31', '49', '7', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('341', '31', '49', '8', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('342', '31', '49', '8', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('343', '31', '49', '9', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('344', '31', '49', '9', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('345', '31', '49', '10', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('346', '31', '49', '10', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('347', '31', '49', '11', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('348', '31', '49', '11', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('349', '31', '49', '12', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('350', '31', '49', '12', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('351', '31', '49', '13', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('352', '31', '49', '13', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('353', '31', '49', '14', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('354', '31', '49', '14', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('355', '31', '49', '15', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('356', '31', '49', '15', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('357', '31', '49', '16', '4', '9', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('358', '31', '49', '16', '4', '10', '2', '0', '2', '1', '0', '所谓法治观念是指人们对法律的性质、地位、作用等问题的认识和看法也就是依靠法律管理国家、管理经济和治理社会的观念', '2017-03-16', '2017-03-16');
INSERT INTO `t_course_detail` VALUES ('359', '27', '50', '1', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('360', '27', '50', '1', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('361', '27', '50', '1', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('362', '27', '50', '1', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('363', '27', '50', '2', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('364', '27', '50', '2', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('365', '27', '50', '2', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('366', '27', '50', '2', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('367', '27', '50', '3', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('368', '27', '50', '3', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('369', '27', '50', '3', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('370', '27', '50', '3', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('371', '27', '50', '4', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('372', '27', '50', '4', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('373', '27', '50', '4', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('374', '27', '50', '4', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('375', '27', '50', '5', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('376', '27', '50', '5', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('377', '27', '50', '5', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('378', '27', '50', '5', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('379', '27', '50', '6', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('380', '27', '50', '6', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('381', '27', '50', '6', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('382', '27', '50', '6', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('383', '27', '50', '7', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('384', '27', '50', '7', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('385', '27', '50', '7', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('386', '27', '50', '7', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('387', '27', '50', '8', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('388', '27', '50', '8', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('389', '27', '50', '8', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('390', '27', '50', '8', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('391', '27', '50', '9', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('392', '27', '50', '9', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('393', '27', '50', '9', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('394', '27', '50', '9', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('395', '27', '50', '10', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('396', '27', '50', '10', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('397', '27', '50', '10', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('398', '27', '50', '10', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('399', '27', '50', '11', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('400', '27', '50', '11', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('401', '27', '50', '11', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('402', '27', '50', '11', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('403', '27', '50', '12', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('404', '27', '50', '12', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('405', '27', '50', '12', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('406', '27', '50', '12', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('407', '27', '50', '13', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('408', '27', '50', '13', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('409', '27', '50', '13', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('410', '27', '50', '13', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('411', '27', '50', '14', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('412', '27', '50', '14', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('413', '27', '50', '14', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('414', '27', '50', '14', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('415', '27', '50', '15', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('416', '27', '50', '15', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('417', '27', '50', '15', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('418', '27', '50', '15', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('419', '27', '50', '16', '1', '1', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('420', '27', '50', '16', '1', '2', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('421', '27', '50', '16', '4', '5', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('422', '27', '50', '16', '4', '6', '1', '0', '1', '3', '0', 'hadoop，mapreduce等大数据基础的学习与应用', '2017-03-27', '2017-03-27');
INSERT INTO `t_course_detail` VALUES ('455', '34', '52', '1', '1', '1', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('456', '34', '52', '1', '1', '2', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('457', '34', '52', '2', '1', '1', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('458', '34', '52', '2', '1', '2', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('459', '34', '52', '3', '1', '1', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('460', '34', '52', '3', '1', '2', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('461', '34', '52', '4', '1', '1', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('462', '34', '52', '4', '1', '2', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('463', '34', '52', '5', '1', '1', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('464', '34', '52', '5', '1', '2', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('465', '34', '52', '6', '1', '1', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');
INSERT INTO `t_course_detail` VALUES ('466', '34', '52', '6', '1', '2', '2', '0', '1', '2', '0', '小学英语基础', '2017-03-28', '2017-03-28');

-- ----------------------------
-- Table structure for t_c_relationship
-- ----------------------------
DROP TABLE IF EXISTS `t_c_relationship`;
CREATE TABLE `t_c_relationship` (
  `tcr_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL COMMENT '学生ID',
  `course_detail_id` int(11) DEFAULT NULL COMMENT '关联的课程详情ID',
  `create_time` date DEFAULT NULL,
  `last_update_time` date DEFAULT NULL,
  PRIMARY KEY (`tcr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=599 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_c_relationship
-- ----------------------------
INSERT INTO `t_c_relationship` VALUES ('1', '1303', '1', null, null);
INSERT INTO `t_c_relationship` VALUES ('2', '1303', '2', null, null);
INSERT INTO `t_c_relationship` VALUES ('3', '1302', '3', null, null);
INSERT INTO `t_c_relationship` VALUES ('4', '1302', '4', null, null);
INSERT INTO `t_c_relationship` VALUES ('5', '1302', '5', null, null);
INSERT INTO `t_c_relationship` VALUES ('6', '1302', '6', null, null);
INSERT INTO `t_c_relationship` VALUES ('123', '1302', '251', '2017-03-14', '2017-03-14');
INSERT INTO `t_c_relationship` VALUES ('124', '1302', '252', '2017-03-14', '2017-03-14');
INSERT INTO `t_c_relationship` VALUES ('125', '1302', '253', '2017-03-14', '2017-03-14');
INSERT INTO `t_c_relationship` VALUES ('126', '1302', '254', '2017-03-14', '2017-03-14');
INSERT INTO `t_c_relationship` VALUES ('127', '1302', '255', '2017-03-14', '2017-03-14');
INSERT INTO `t_c_relationship` VALUES ('128', '1302', '256', '2017-03-14', '2017-03-14');
INSERT INTO `t_c_relationship` VALUES ('129', '1302', '257', '2017-03-14', '2017-03-14');
INSERT INTO `t_c_relationship` VALUES ('130', '1302', '258', '2017-03-14', '2017-03-14');
INSERT INTO `t_c_relationship` VALUES ('131', '1303', '251', '2017-03-15', '2017-03-15');
INSERT INTO `t_c_relationship` VALUES ('132', '1303', '252', '2017-03-15', '2017-03-15');
INSERT INTO `t_c_relationship` VALUES ('133', '1303', '253', '2017-03-15', '2017-03-15');
INSERT INTO `t_c_relationship` VALUES ('134', '1303', '254', '2017-03-15', '2017-03-15');
INSERT INTO `t_c_relationship` VALUES ('135', '1303', '255', '2017-03-15', '2017-03-15');
INSERT INTO `t_c_relationship` VALUES ('136', '1303', '256', '2017-03-15', '2017-03-15');
INSERT INTO `t_c_relationship` VALUES ('137', '1303', '257', '2017-03-15', '2017-03-15');
INSERT INTO `t_c_relationship` VALUES ('138', '1303', '258', '2017-03-15', '2017-03-15');
INSERT INTO `t_c_relationship` VALUES ('139', '1302', '359', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('140', '1302', '360', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('141', '1302', '361', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('142', '1302', '362', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('143', '1302', '363', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('144', '1302', '364', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('145', '1302', '365', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('146', '1302', '366', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('147', '1302', '367', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('148', '1302', '368', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('149', '1302', '369', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('150', '1302', '370', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('151', '1302', '371', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('152', '1302', '372', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('153', '1302', '373', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('154', '1302', '374', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('155', '1302', '375', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('156', '1302', '376', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('157', '1302', '377', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('158', '1302', '378', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('159', '1302', '379', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('160', '1302', '380', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('161', '1302', '381', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('162', '1302', '382', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('163', '1302', '383', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('164', '1302', '384', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('165', '1302', '385', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('166', '1302', '386', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('167', '1302', '387', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('168', '1302', '388', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('169', '1302', '389', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('170', '1302', '390', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('171', '1302', '391', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('172', '1302', '392', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('173', '1302', '393', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('174', '1302', '394', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('175', '1302', '395', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('176', '1302', '396', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('177', '1302', '397', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('178', '1302', '398', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('179', '1302', '399', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('180', '1302', '400', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('181', '1302', '401', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('182', '1302', '402', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('183', '1302', '403', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('184', '1302', '404', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('185', '1302', '405', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('186', '1302', '406', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('187', '1302', '407', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('188', '1302', '408', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('189', '1302', '409', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('190', '1302', '410', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('191', '1302', '411', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('192', '1302', '412', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('193', '1302', '413', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('194', '1302', '414', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('195', '1302', '415', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('196', '1302', '416', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('197', '1302', '417', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('198', '1302', '418', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('199', '1302', '419', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('200', '1302', '420', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('201', '1302', '421', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('202', '1302', '422', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('203', '1305', '359', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('204', '1305', '360', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('205', '1305', '361', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('206', '1305', '362', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('207', '1305', '363', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('208', '1305', '364', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('209', '1305', '365', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('210', '1305', '366', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('211', '1305', '367', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('212', '1305', '368', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('213', '1305', '369', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('214', '1305', '370', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('215', '1305', '371', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('216', '1305', '372', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('217', '1305', '373', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('218', '1305', '374', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('219', '1305', '375', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('220', '1305', '376', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('221', '1305', '377', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('222', '1305', '378', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('223', '1305', '379', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('224', '1305', '380', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('225', '1305', '381', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('226', '1305', '382', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('227', '1305', '383', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('228', '1305', '384', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('229', '1305', '385', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('230', '1305', '386', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('231', '1305', '387', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('232', '1305', '388', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('233', '1305', '389', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('234', '1305', '390', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('235', '1305', '391', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('236', '1305', '392', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('237', '1305', '393', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('238', '1305', '394', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('239', '1305', '395', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('240', '1305', '396', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('241', '1305', '397', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('242', '1305', '398', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('243', '1305', '399', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('244', '1305', '400', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('245', '1305', '401', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('246', '1305', '402', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('247', '1305', '403', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('248', '1305', '404', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('249', '1305', '405', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('250', '1305', '406', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('251', '1305', '407', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('252', '1305', '408', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('253', '1305', '409', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('254', '1305', '410', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('255', '1305', '411', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('256', '1305', '412', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('257', '1305', '413', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('258', '1305', '414', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('259', '1305', '415', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('260', '1305', '416', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('261', '1305', '417', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('262', '1305', '418', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('263', '1305', '419', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('264', '1305', '420', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('265', '1305', '421', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('266', '1305', '422', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('267', '1306', '359', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('268', '1306', '360', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('269', '1306', '361', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('270', '1306', '362', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('271', '1306', '363', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('272', '1306', '364', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('273', '1306', '365', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('274', '1306', '366', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('275', '1306', '367', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('276', '1306', '368', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('277', '1306', '369', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('278', '1306', '370', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('279', '1306', '371', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('280', '1306', '372', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('281', '1306', '373', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('282', '1306', '374', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('283', '1306', '375', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('284', '1306', '376', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('285', '1306', '377', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('286', '1306', '378', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('287', '1306', '379', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('288', '1306', '380', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('289', '1306', '381', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('290', '1306', '382', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('291', '1306', '383', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('292', '1306', '384', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('293', '1306', '385', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('294', '1306', '386', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('295', '1306', '387', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('296', '1306', '388', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('297', '1306', '389', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('298', '1306', '390', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('299', '1306', '391', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('300', '1306', '392', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('301', '1306', '393', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('302', '1306', '394', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('303', '1306', '395', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('304', '1306', '396', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('305', '1306', '397', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('306', '1306', '398', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('307', '1306', '399', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('308', '1306', '400', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('309', '1306', '401', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('310', '1306', '402', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('311', '1306', '403', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('312', '1306', '404', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('313', '1306', '405', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('314', '1306', '406', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('315', '1306', '407', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('316', '1306', '408', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('317', '1306', '409', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('318', '1306', '410', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('319', '1306', '411', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('320', '1306', '412', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('321', '1306', '413', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('322', '1306', '414', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('323', '1306', '415', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('324', '1306', '416', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('325', '1306', '417', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('326', '1306', '418', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('327', '1306', '419', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('328', '1306', '420', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('329', '1306', '421', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('330', '1306', '422', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('331', '1330', '359', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('332', '1330', '360', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('333', '1330', '361', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('334', '1330', '362', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('335', '1330', '363', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('336', '1330', '364', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('337', '1330', '365', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('338', '1330', '366', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('339', '1330', '367', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('340', '1330', '368', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('341', '1330', '369', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('342', '1330', '370', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('343', '1330', '371', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('344', '1330', '372', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('345', '1330', '373', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('346', '1330', '374', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('347', '1330', '375', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('348', '1330', '376', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('349', '1330', '377', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('350', '1330', '378', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('351', '1330', '379', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('352', '1330', '380', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('353', '1330', '381', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('354', '1330', '382', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('355', '1330', '383', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('356', '1330', '384', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('357', '1330', '385', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('358', '1330', '386', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('359', '1330', '387', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('360', '1330', '388', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('361', '1330', '389', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('362', '1330', '390', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('363', '1330', '391', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('364', '1330', '392', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('365', '1330', '393', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('366', '1330', '394', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('367', '1330', '395', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('368', '1330', '396', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('369', '1330', '397', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('370', '1330', '398', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('371', '1330', '399', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('372', '1330', '400', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('373', '1330', '401', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('374', '1330', '402', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('375', '1330', '403', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('376', '1330', '404', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('377', '1330', '405', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('378', '1330', '406', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('379', '1330', '407', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('380', '1330', '408', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('381', '1330', '409', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('382', '1330', '410', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('383', '1330', '411', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('384', '1330', '412', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('385', '1330', '413', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('386', '1330', '414', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('387', '1330', '415', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('388', '1330', '416', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('389', '1330', '417', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('390', '1330', '418', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('391', '1330', '419', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('392', '1330', '420', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('393', '1330', '421', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('394', '1330', '422', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('395', '1331', '359', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('396', '1331', '360', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('397', '1331', '361', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('398', '1331', '362', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('399', '1331', '363', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('400', '1331', '364', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('401', '1331', '365', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('402', '1331', '366', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('403', '1331', '367', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('404', '1331', '368', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('405', '1331', '369', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('406', '1331', '370', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('407', '1331', '371', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('408', '1331', '372', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('409', '1331', '373', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('410', '1331', '374', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('411', '1331', '375', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('412', '1331', '376', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('413', '1331', '377', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('414', '1331', '378', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('415', '1331', '379', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('416', '1331', '380', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('417', '1331', '381', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('418', '1331', '382', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('419', '1331', '383', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('420', '1331', '384', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('421', '1331', '385', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('422', '1331', '386', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('423', '1331', '387', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('424', '1331', '388', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('425', '1331', '389', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('426', '1331', '390', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('427', '1331', '391', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('428', '1331', '392', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('429', '1331', '393', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('430', '1331', '394', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('431', '1331', '395', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('432', '1331', '396', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('433', '1331', '397', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('434', '1331', '398', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('435', '1331', '399', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('436', '1331', '400', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('437', '1331', '401', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('438', '1331', '402', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('439', '1331', '403', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('440', '1331', '404', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('441', '1331', '405', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('442', '1331', '406', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('443', '1331', '407', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('444', '1331', '408', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('445', '1331', '409', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('446', '1331', '410', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('447', '1331', '411', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('448', '1331', '412', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('449', '1331', '413', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('450', '1331', '414', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('451', '1331', '415', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('452', '1331', '416', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('453', '1331', '417', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('454', '1331', '418', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('455', '1331', '419', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('456', '1331', '420', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('457', '1331', '421', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('458', '1331', '422', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('459', '1332', '359', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('460', '1332', '360', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('461', '1332', '361', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('462', '1332', '362', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('463', '1332', '363', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('464', '1332', '364', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('465', '1332', '365', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('466', '1332', '366', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('467', '1332', '367', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('468', '1332', '368', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('469', '1332', '369', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('470', '1332', '370', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('471', '1332', '371', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('472', '1332', '372', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('473', '1332', '373', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('474', '1332', '374', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('475', '1332', '375', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('476', '1332', '376', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('477', '1332', '377', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('478', '1332', '378', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('479', '1332', '379', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('480', '1332', '380', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('481', '1332', '381', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('482', '1332', '382', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('483', '1332', '383', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('484', '1332', '384', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('485', '1332', '385', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('486', '1332', '386', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('487', '1332', '387', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('488', '1332', '388', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('489', '1332', '389', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('490', '1332', '390', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('491', '1332', '391', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('492', '1332', '392', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('493', '1332', '393', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('494', '1332', '394', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('495', '1332', '395', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('496', '1332', '396', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('497', '1332', '397', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('498', '1332', '398', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('499', '1332', '399', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('500', '1332', '400', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('501', '1332', '401', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('502', '1332', '402', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('503', '1332', '403', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('504', '1332', '404', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('505', '1332', '405', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('506', '1332', '406', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('507', '1332', '407', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('508', '1332', '408', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('509', '1332', '409', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('510', '1332', '410', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('511', '1332', '411', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('512', '1332', '412', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('513', '1332', '413', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('514', '1332', '414', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('515', '1332', '415', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('516', '1332', '416', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('517', '1332', '417', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('518', '1332', '418', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('519', '1332', '419', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('520', '1332', '420', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('521', '1332', '421', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('522', '1332', '422', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('523', '1336', '359', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('524', '1336', '360', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('525', '1336', '361', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('526', '1336', '362', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('527', '1336', '363', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('528', '1336', '364', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('529', '1336', '365', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('530', '1336', '366', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('531', '1336', '367', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('532', '1336', '368', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('533', '1336', '369', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('534', '1336', '370', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('535', '1336', '371', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('536', '1336', '372', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('537', '1336', '373', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('538', '1336', '374', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('539', '1336', '375', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('540', '1336', '376', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('541', '1336', '377', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('542', '1336', '378', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('543', '1336', '379', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('544', '1336', '380', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('545', '1336', '381', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('546', '1336', '382', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('547', '1336', '383', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('548', '1336', '384', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('549', '1336', '385', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('550', '1336', '386', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('551', '1336', '387', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('552', '1336', '388', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('553', '1336', '389', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('554', '1336', '390', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('555', '1336', '391', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('556', '1336', '392', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('557', '1336', '393', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('558', '1336', '394', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('559', '1336', '395', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('560', '1336', '396', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('561', '1336', '397', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('562', '1336', '398', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('563', '1336', '399', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('564', '1336', '400', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('565', '1336', '401', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('566', '1336', '402', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('567', '1336', '403', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('568', '1336', '404', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('569', '1336', '405', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('570', '1336', '406', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('571', '1336', '407', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('572', '1336', '408', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('573', '1336', '409', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('574', '1336', '410', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('575', '1336', '411', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('576', '1336', '412', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('577', '1336', '413', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('578', '1336', '414', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('579', '1336', '415', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('580', '1336', '416', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('581', '1336', '417', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('582', '1336', '418', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('583', '1336', '419', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('584', '1336', '420', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('585', '1336', '421', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('586', '1336', '422', '2017-03-27', '2017-03-27');
INSERT INTO `t_c_relationship` VALUES ('587', '1337', '455', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('588', '1337', '456', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('589', '1337', '457', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('590', '1337', '458', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('591', '1337', '459', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('592', '1337', '460', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('593', '1337', '461', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('594', '1337', '462', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('595', '1337', '463', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('596', '1337', '464', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('597', '1337', '465', '2017-03-28', '2017-03-28');
INSERT INTO `t_c_relationship` VALUES ('598', '1337', '466', '2017-03-28', '2017-03-28');

-- ----------------------------
-- Table structure for t_day
-- ----------------------------
DROP TABLE IF EXISTS `t_day`;
CREATE TABLE `t_day` (
  `day_id` int(11) NOT NULL AUTO_INCREMENT,
  `day_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_day
-- ----------------------------
INSERT INTO `t_day` VALUES ('1', '星期一');
INSERT INTO `t_day` VALUES ('2', '星期二');
INSERT INTO `t_day` VALUES ('3', '星期三');
INSERT INTO `t_day` VALUES ('4', '星期四');
INSERT INTO `t_day` VALUES ('5', '星期五');
INSERT INTO `t_day` VALUES ('6', '星期六');
INSERT INTO `t_day` VALUES ('7', '星期日');

-- ----------------------------
-- Table structure for t_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `t_evaluate`;
CREATE TABLE `t_evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `evaluate_score` int(11) DEFAULT NULL,
  `evaluate_text` varchar(255) DEFAULT NULL,
  `class_course_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_evaluate
-- ----------------------------
INSERT INTO `t_evaluate` VALUES ('5', '1302', '90', '很好', '0', '11');
INSERT INTO `t_evaluate` VALUES ('8', '1305', '70', '还可以', '0', '11');
INSERT INTO `t_evaluate` VALUES ('11', '1302', '100', '非常棒', '0', '18');
INSERT INTO `t_evaluate` VALUES ('12', '1302', '100', '', '0', '42');
INSERT INTO `t_evaluate` VALUES ('13', '1302', '77', '', '0', '50');
INSERT INTO `t_evaluate` VALUES ('14', '1337', '90', '我很喜欢这个老师讲的课', '0', '52');

-- ----------------------------
-- Table structure for t_major
-- ----------------------------
DROP TABLE IF EXISTS `t_major`;
CREATE TABLE `t_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `major_name` varchar(100) DEFAULT NULL COMMENT '专业名',
  `academy_id` int(11) DEFAULT NULL COMMENT '学院id',
  `system` tinyint(4) DEFAULT NULL COMMENT '学制',
  `create_date` datetime DEFAULT NULL COMMENT '开设时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='专业表';

-- ----------------------------
-- Records of t_major
-- ----------------------------
INSERT INTO `t_major` VALUES ('56', '计算机科学与技术（软件服务外包）', '70', '4', '2017-01-29 09:25:52');
INSERT INTO `t_major` VALUES ('57', '计算机科学与技术（师范）', '70', '4', '2017-01-29 09:26:23');
INSERT INTO `t_major` VALUES ('58', '人体运动', '71', '4', '2017-01-29 09:27:03');
INSERT INTO `t_major` VALUES ('60', '网络工程', '70', '4', '2017-02-03 09:48:55');
INSERT INTO `t_major` VALUES ('66', '电子信息工程', '70', '4', '2017-02-03 10:13:58');
INSERT INTO `t_major` VALUES ('69', '数字媒体', '70', '4', '2017-02-03 10:24:18');
INSERT INTO `t_major` VALUES ('70', '国学', '72', '4', '2017-02-03 16:17:06');
INSERT INTO `t_major` VALUES ('71', '教育技术学', '70', '4', '2017-02-04 10:50:54');
INSERT INTO `t_major` VALUES ('72', '英语教育', '77', '4', '2017-03-28 16:51:18');

-- ----------------------------
-- Table structure for t_room
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room` (
  `room_id` int(11) NOT NULL COMMENT '教学楼房间ID',
  `room_name` varchar(255) DEFAULT NULL COMMENT '教学楼房间名称',
  `room_type` varchar(255) DEFAULT NULL COMMENT '0代表室内,1代表室外',
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room
-- ----------------------------
INSERT INTO `t_room` VALUES ('1', '101', '1');
INSERT INTO `t_room` VALUES ('2', '102', '1');
INSERT INTO `t_room` VALUES ('6', '201', '1');
INSERT INTO `t_room` VALUES ('9', '204', '1');
INSERT INTO `t_room` VALUES ('11', '302', '1');
INSERT INTO `t_room` VALUES ('12', '风雨跑道', '0');
INSERT INTO `t_room` VALUES ('18', '303实验室', '1');

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `score` float DEFAULT NULL COMMENT '分数',
  `student_id` int(11) DEFAULT NULL COMMENT '学生id',
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `exam_date` datetime DEFAULT NULL COMMENT '考试时间',
  `term` varchar(20) DEFAULT NULL COMMENT '学期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('16', '90', '1302', '11', '2017-01-29 09:40:14', '1');
INSERT INTO `t_score` VALUES ('18', '40', '1305', '11', '2017-02-04 10:07:55', '1');
INSERT INTO `t_score` VALUES ('19', '100', '1303', '50', '2017-03-27 19:49:22', '1');
INSERT INTO `t_score` VALUES ('20', '90', '1337', '52', '2017-03-28 17:20:26', '1');

-- ----------------------------
-- Table structure for t_section
-- ----------------------------
DROP TABLE IF EXISTS `t_section`;
CREATE TABLE `t_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_section
-- ----------------------------
INSERT INTO `t_section` VALUES ('1', '第一节');
INSERT INTO `t_section` VALUES ('2', '第二节');
INSERT INTO `t_section` VALUES ('3', '第三节');
INSERT INTO `t_section` VALUES ('4', '第四节');
INSERT INTO `t_section` VALUES ('5', '第五节');
INSERT INTO `t_section` VALUES ('6', '第六节');
INSERT INTO `t_section` VALUES ('7', '第七节');
INSERT INTO `t_section` VALUES ('8', '第八节');
INSERT INTO `t_section` VALUES ('9', '第九节');
INSERT INTO `t_section` VALUES ('10', '第十节');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户表id',
  `student_name` varchar(50) DEFAULT NULL COMMENT '学生名',
  `student_no` varchar(11) DEFAULT NULL COMMENT '学号',
  `gender` int(1) DEFAULT NULL COMMENT '性别',
  `natives` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `birthday` datetime DEFAULT NULL COMMENT '出生年月',
  `address` varchar(500) DEFAULT NULL COMMENT '详细地址',
  `enter_date` datetime DEFAULT NULL COMMENT '入学时间',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `QQ` varchar(12) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(150) DEFAULT NULL COMMENT '邮箱',
  `national` varchar(20) DEFAULT NULL COMMENT '民族',
  `Political` varchar(20) DEFAULT NULL COMMENT '政治面貌',
  `idCard` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `family_phone` varchar(20) DEFAULT NULL COMMENT '家庭联系方式',
  `middle_school` varchar(100) DEFAULT NULL COMMENT '毕业中学',
  `grade` varchar(10) DEFAULT NULL COMMENT '年级',
  `class_id` int(11) DEFAULT NULL COMMENT '班级id',
  `examinee` varchar(16) DEFAULT NULL COMMENT '考试好',
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL COMMENT '融云token',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1338 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1302', null, '张三', '201', '0', '', null, '', '2017-01-29 00:00:00', '18320301585', '', '1187456698@qq.com', '', '', '440782199407230613', '', '', '2013', '21', null, '201', 'YVOaIL5iKmE2V2bZv0Q9t/IzUqcJUQEC/W1Juz5Te4FTfqbJKghSwVLEATvz6mVJUVpoJ1wMubKubUTSbkMbbw==');
INSERT INTO `t_student` VALUES ('1303', null, '李四', '202', '0', '', '2017-02-01 00:00:00', '', '2017-01-29 00:00:00', '18320301586', '', '1187456697@qq.com', '', '', '440782199407230614', '', '', '2013', '22', null, '202', null);
INSERT INTO `t_student` VALUES ('1304', null, '王大维', '301', '0', null, null, null, '2017-01-29 00:00:00', '18320301587', null, '1187456696@qq.com', null, null, '440782199407230615', null, null, '2013', '24', null, '301', null);
INSERT INTO `t_student` VALUES ('1305', null, '墨家和', '205', '1', null, null, null, '2017-02-03 00:00:00', '18320301588', null, '1187456695@qq.com', null, null, '440782199407230616', null, null, '2013', '21', null, '205', null);
INSERT INTO `t_student` VALUES ('1306', null, '叶志强', '206', '0', null, null, null, '1994-07-23 00:00:00', '13802439641', null, '1079412170@qq.com', null, null, '440782199407230623', null, null, '2013', '21', null, '206', null);
INSERT INTO `t_student` VALUES ('1330', null, '黎明', '230', '0', '', null, '', '2017-01-29 00:00:00', '18302439641', '', '1079412177@qq.com', '', '', '440895199825634000', '', '', '2013', '21', '', '230', null);
INSERT INTO `t_student` VALUES ('1331', null, '刘德华', '231', '1', '', null, '', '2017-01-29 00:00:00', '18356426985', '', '45612895@qq.com', '', '', '440783199507229000', '', '', '2013', '21', '', '231', null);
INSERT INTO `t_student` VALUES ('1332', null, '张学友', '232', '0', '', null, '', '2017-01-29 00:00:00', '13956412658', '', '856123422@qq.com', '', '', '440782199632561000', '', '', '2013', '21', '', '232', null);
INSERT INTO `t_student` VALUES ('1333', null, '陈小丹', '233', '1', null, null, null, '2017-03-09 00:00:00', '13822546978', null, '123456@qq.com', null, null, '4407845656895212', null, null, '2013', '24', null, '233', null);
INSERT INTO `t_student` VALUES ('1334', null, '李小米', '234', '1', null, null, null, '2017-01-10 00:00:00', '13800138000', null, '145263@163.com', null, null, '44028965124568', null, null, '2012', '27', null, '234', null);
INSERT INTO `t_student` VALUES ('1335', null, '林淋漓', '235', '0', null, null, null, '2017-03-15 00:00:00', '13800138555', null, '1532648@163.com', null, null, '44078219956412356', null, null, '2015', '25', null, '235', null);
INSERT INTO `t_student` VALUES ('1336', null, '朱明明', '236', '1', null, null, null, '2017-03-15 00:00:00', '13800123456', null, '123@qq.com', null, null, '440782199456124589', null, null, '2013', '21', null, '236', '');
INSERT INTO `t_student` VALUES ('1337', null, '李毛毛', '237', '1', null, null, null, '2013-09-07 00:00:00', '13854678452', null, '123@163.com', null, null, '440782199564784123', null, null, '2013', '28', null, '237', 'JMkdxxO0/GraMDEFZduZNf8LrTFdNYA+yT5dAGWSeE8Bt4Dl9i90aiExxy+52+iDfRD5yPe967wWIjQVoFkCjQ==');

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户表id',
  `teacher_name` varchar(50) DEFAULT NULL COMMENT '教师名',
  `teache_no` varchar(12) DEFAULT NULL COMMENT '职工号',
  `gender` int(1) DEFAULT NULL COMMENT '性别',
  `natives` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `national` varchar(20) DEFAULT NULL COMMENT '民族',
  `birthday` datetime DEFAULT NULL COMMENT '出生年月',
  `enter_date` datetime DEFAULT NULL COMMENT '入职时间',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `family_address` varchar(500) DEFAULT NULL COMMENT '家庭住址',
  `now_address` varchar(500) DEFAULT NULL COMMENT '现住址',
  `idCard` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `political` varchar(20) DEFAULT NULL COMMENT '政治面貌',
  `xueli_id` varchar(11) DEFAULT NULL COMMENT '学历id',
  `password` varchar(255) DEFAULT NULL,
  `belong` int(11) DEFAULT NULL COMMENT '属于的学院',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='教师表';

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('27', null, '陈大大', '101', '0', '', '', null, '2017-01-29 09:28:42', '13800138000', '', '', '440782197807059641', '党员', '0', '101', '70');
INSERT INTO `t_teacher` VALUES ('28', null, '李大大', '102', '0', '', '', null, '2017-01-29 09:28:59', '13800138111', '', '', '440782197807059642', '', '0', '102', '70');
INSERT INTO `t_teacher` VALUES ('29', null, '莫大大', '103', '1', null, null, null, '2017-01-29 09:29:14', '13800138222', null, null, '440782197807059643', null, '1', '103', '71');
INSERT INTO `t_teacher` VALUES ('30', null, '袁大大', '104', '1', null, null, null, '2017-02-03 15:49:28', '13800138333', null, null, '440782197807059644', null, '0', '104', '70');
INSERT INTO `t_teacher` VALUES ('31', null, '曹大大', '105', '1', null, null, null, '2017-02-07 09:59:17', '13800138444', null, null, '440782197856894521', null, '3', '105', '72');
INSERT INTO `t_teacher` VALUES ('32', null, '文大大', '106', '1', null, null, null, '2017-03-13 10:10:18', '13956124568', null, null, '440784569874125632', null, '3', '106', '72');
INSERT INTO `t_teacher` VALUES ('33', null, '乐大大', '107', '1', null, null, null, '2017-03-15 16:05:33', '13800124567', null, null, '440781199407230653', null, '3', '107', '82');
INSERT INTO `t_teacher` VALUES ('34', null, '关佩玉', '108', '1', null, null, null, '2017-03-28 16:53:44', '13855456231', null, null, '440782199234569841', null, '3', '108', '77');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `account` varchar(11) DEFAULT NULL COMMENT '账号',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `user_type` int(11) DEFAULT NULL COMMENT '用户类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '123456', '1');

-- ----------------------------
-- Table structure for t_week
-- ----------------------------
DROP TABLE IF EXISTS `t_week`;
CREATE TABLE `t_week` (
  `week_id` int(11) NOT NULL AUTO_INCREMENT,
  `week_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`week_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_week
-- ----------------------------
INSERT INTO `t_week` VALUES ('1', '第一周');
INSERT INTO `t_week` VALUES ('2', '第二周');
INSERT INTO `t_week` VALUES ('3', '第三周');
INSERT INTO `t_week` VALUES ('4', '第四周');
INSERT INTO `t_week` VALUES ('5', '第五周');
INSERT INTO `t_week` VALUES ('6', '第六周');
INSERT INTO `t_week` VALUES ('7', '第七周');
INSERT INTO `t_week` VALUES ('8', '第八周');
INSERT INTO `t_week` VALUES ('9', '第九周');
INSERT INTO `t_week` VALUES ('10', '第十周');
INSERT INTO `t_week` VALUES ('11', '第十一周');
INSERT INTO `t_week` VALUES ('12', '第十二周');
INSERT INTO `t_week` VALUES ('13', '第十三周');
INSERT INTO `t_week` VALUES ('14', '第十四周');
INSERT INTO `t_week` VALUES ('15', '第十五周');
INSERT INTO `t_week` VALUES ('16', '第十六周');

-- ----------------------------
-- Table structure for t_xueli
-- ----------------------------
DROP TABLE IF EXISTS `t_xueli`;
CREATE TABLE `t_xueli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) DEFAULT NULL COMMENT '学历名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_xueli
-- ----------------------------
