/*
Navicat MySQL Data Transfer

Source Server         : yezhiqiang
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : scms

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-04-07 16:34:29
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='学院表';

-- ----------------------------
-- Records of t_academy
-- ----------------------------
INSERT INTO `t_academy` VALUES ('1', '信息工程学院', '2017-01-29 09:25:11');
INSERT INTO `t_academy` VALUES ('2', '体育科学学院', '2017-01-29 09:26:41');
INSERT INTO `t_academy` VALUES ('3', '人文学院', '2017-02-03 16:16:29');
INSERT INTO `t_academy` VALUES ('4', '法政学院', '2017-02-04 09:26:40');
INSERT INTO `t_academy` VALUES ('5', '物理学院', '2017-03-10 14:26:33');
INSERT INTO `t_academy` VALUES ('6', '数计学院', '2017-03-10 14:27:01');
INSERT INTO `t_academy` VALUES ('7', '教育科学学院', '2017-03-10 14:27:22');
INSERT INTO `t_academy` VALUES ('8', '外国语学院', '2017-03-10 14:27:33');
INSERT INTO `t_academy` VALUES ('9', '生命科学学院', '2017-03-10 14:28:28');
INSERT INTO `t_academy` VALUES ('10', '化学化工学院', '2017-03-10 14:28:43');
INSERT INTO `t_academy` VALUES ('11', '商学院', '2017-03-10 14:29:43');
INSERT INTO `t_academy` VALUES ('12', '美术与设计学院', '2017-03-10 14:30:13');
INSERT INTO `t_academy` VALUES ('13', '音乐与舞蹈学院', '2017-03-10 14:30:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=1913 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_c_relationship
-- ----------------------------
INSERT INTO `t_c_relationship` VALUES ('793', '1339', '745', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('794', '1339', '746', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('795', '1339', '747', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('796', '1339', '748', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('797', '1339', '749', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('798', '1339', '750', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('799', '1339', '751', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('800', '1339', '752', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('801', '1339', '753', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('802', '1339', '754', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('803', '1339', '755', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('804', '1339', '756', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('805', '1339', '757', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('806', '1339', '758', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('807', '1339', '759', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('808', '1339', '760', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('809', '1339', '761', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('810', '1339', '762', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('811', '1339', '763', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('812', '1339', '764', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('813', '1339', '765', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('814', '1339', '766', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('815', '1339', '767', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('816', '1339', '768', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('817', '1339', '769', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('818', '1339', '770', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('819', '1339', '771', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('820', '1339', '772', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('821', '1339', '773', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('822', '1339', '774', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('823', '1339', '775', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('824', '1339', '776', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('825', '1339', '777', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('826', '1339', '778', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('827', '1339', '779', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('828', '1339', '780', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('829', '1339', '781', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('830', '1339', '782', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('831', '1339', '783', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('832', '1339', '784', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('833', '1339', '785', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('834', '1339', '786', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('835', '1339', '787', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('836', '1339', '788', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('837', '1339', '789', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('838', '1339', '790', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('839', '1339', '791', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('840', '1339', '792', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('841', '1339', '793', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('842', '1339', '794', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('843', '1339', '795', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('844', '1339', '796', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('845', '1339', '797', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('846', '1339', '798', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('847', '1339', '799', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('848', '1339', '800', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('849', '1339', '801', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('850', '1339', '802', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('851', '1339', '803', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('852', '1339', '804', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('853', '1339', '805', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('854', '1339', '806', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('855', '1339', '807', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('856', '1339', '808', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('857', '1340', '745', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('858', '1340', '746', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('859', '1340', '747', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('860', '1340', '748', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('861', '1340', '749', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('862', '1340', '750', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('863', '1340', '751', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('864', '1340', '752', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('865', '1340', '753', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('866', '1340', '754', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('867', '1340', '755', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('868', '1340', '756', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('869', '1340', '757', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('870', '1340', '758', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('871', '1340', '759', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('872', '1340', '760', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('873', '1340', '761', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('874', '1340', '762', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('875', '1340', '763', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('876', '1340', '764', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('877', '1340', '765', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('878', '1340', '766', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('879', '1340', '767', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('880', '1340', '768', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('881', '1340', '769', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('882', '1340', '770', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('883', '1340', '771', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('884', '1340', '772', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('885', '1340', '773', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('886', '1340', '774', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('887', '1340', '775', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('888', '1340', '776', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('889', '1340', '777', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('890', '1340', '778', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('891', '1340', '779', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('892', '1340', '780', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('893', '1340', '781', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('894', '1340', '782', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('895', '1340', '783', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('896', '1340', '784', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('897', '1340', '785', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('898', '1340', '786', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('899', '1340', '787', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('900', '1340', '788', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('901', '1340', '789', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('902', '1340', '790', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('903', '1340', '791', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('904', '1340', '792', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('905', '1340', '793', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('906', '1340', '794', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('907', '1340', '795', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('908', '1340', '796', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('909', '1340', '797', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('910', '1340', '798', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('911', '1340', '799', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('912', '1340', '800', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('913', '1340', '801', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('914', '1340', '802', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('915', '1340', '803', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('916', '1340', '804', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('917', '1340', '805', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('918', '1340', '806', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('919', '1340', '807', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('920', '1340', '808', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('985', '1341', '873', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('986', '1341', '874', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('987', '1341', '875', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('988', '1341', '876', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('989', '1341', '877', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('990', '1341', '878', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('991', '1341', '879', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('992', '1341', '880', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('993', '1341', '881', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('994', '1341', '882', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('995', '1341', '883', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('996', '1341', '884', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('997', '1341', '885', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('998', '1341', '886', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('999', '1341', '887', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1000', '1341', '888', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1001', '1341', '889', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1002', '1341', '890', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1003', '1341', '891', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1004', '1341', '892', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1005', '1341', '893', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1006', '1341', '894', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1007', '1341', '895', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1008', '1341', '896', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1009', '1341', '897', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1010', '1341', '898', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1011', '1341', '899', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1012', '1341', '900', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1013', '1341', '901', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1014', '1341', '902', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1015', '1341', '903', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1016', '1341', '904', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1017', '1341', '905', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1018', '1341', '906', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1019', '1341', '907', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1020', '1341', '908', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1021', '1341', '909', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1022', '1341', '910', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1023', '1341', '911', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1024', '1341', '912', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1025', '1341', '913', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1026', '1341', '914', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1027', '1341', '915', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1028', '1341', '916', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1029', '1341', '917', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1030', '1341', '918', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1031', '1341', '919', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1032', '1341', '920', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1033', '1341', '921', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1034', '1341', '922', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1035', '1341', '923', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1036', '1341', '924', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1037', '1341', '925', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1038', '1341', '926', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1039', '1341', '927', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1040', '1341', '928', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1041', '1341', '929', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1042', '1341', '930', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1043', '1341', '931', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1044', '1341', '932', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1045', '1341', '933', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1046', '1341', '934', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1047', '1341', '935', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1048', '1341', '936', '2017-04-06', '2017-04-06');
INSERT INTO `t_c_relationship` VALUES ('1049', '1342', '745', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1050', '1342', '746', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1051', '1342', '747', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1052', '1342', '748', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1053', '1342', '749', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1054', '1342', '750', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1055', '1342', '751', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1056', '1342', '752', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1057', '1342', '753', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1058', '1342', '754', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1059', '1342', '755', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1060', '1342', '756', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1061', '1342', '757', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1062', '1342', '758', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1063', '1342', '759', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1064', '1342', '760', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1065', '1342', '761', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1066', '1342', '762', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1067', '1342', '763', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1068', '1342', '764', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1069', '1342', '765', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1070', '1342', '766', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1071', '1342', '767', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1072', '1342', '768', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1073', '1342', '769', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1074', '1342', '770', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1075', '1342', '771', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1076', '1342', '772', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1077', '1342', '773', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1078', '1342', '774', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1079', '1342', '775', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1080', '1342', '776', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1081', '1342', '777', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1082', '1342', '778', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1083', '1342', '779', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1084', '1342', '780', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1085', '1342', '781', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1086', '1342', '782', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1087', '1342', '783', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1088', '1342', '784', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1089', '1342', '785', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1090', '1342', '786', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1091', '1342', '787', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1092', '1342', '788', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1093', '1342', '789', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1094', '1342', '790', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1095', '1342', '791', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1096', '1342', '792', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1097', '1342', '793', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1098', '1342', '794', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1099', '1342', '795', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1100', '1342', '796', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1101', '1342', '797', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1102', '1342', '798', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1103', '1342', '799', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1104', '1342', '800', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1105', '1342', '801', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1106', '1342', '802', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1107', '1342', '803', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1108', '1342', '804', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1109', '1342', '805', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1110', '1342', '806', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1111', '1342', '807', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1112', '1342', '808', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1113', '1343', '745', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1114', '1343', '746', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1115', '1343', '747', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1116', '1343', '748', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1117', '1343', '749', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1118', '1343', '750', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1119', '1343', '751', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1120', '1343', '752', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1121', '1343', '753', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1122', '1343', '754', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1123', '1343', '755', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1124', '1343', '756', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1125', '1343', '757', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1126', '1343', '758', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1127', '1343', '759', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1128', '1343', '760', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1129', '1343', '761', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1130', '1343', '762', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1131', '1343', '763', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1132', '1343', '764', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1133', '1343', '765', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1134', '1343', '766', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1135', '1343', '767', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1136', '1343', '768', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1137', '1343', '769', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1138', '1343', '770', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1139', '1343', '771', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1140', '1343', '772', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1141', '1343', '773', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1142', '1343', '774', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1143', '1343', '775', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1144', '1343', '776', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1145', '1343', '777', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1146', '1343', '778', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1147', '1343', '779', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1148', '1343', '780', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1149', '1343', '781', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1150', '1343', '782', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1151', '1343', '783', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1152', '1343', '784', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1153', '1343', '785', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1154', '1343', '786', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1155', '1343', '787', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1156', '1343', '788', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1157', '1343', '789', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1158', '1343', '790', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1159', '1343', '791', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1160', '1343', '792', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1161', '1343', '793', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1162', '1343', '794', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1163', '1343', '795', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1164', '1343', '796', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1165', '1343', '797', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1166', '1343', '798', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1167', '1343', '799', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1168', '1343', '800', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1169', '1343', '801', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1170', '1343', '802', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1171', '1343', '803', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1172', '1343', '804', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1173', '1343', '805', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1174', '1343', '806', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1175', '1343', '807', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1176', '1343', '808', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1465', '1345', '745', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1466', '1345', '746', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1467', '1345', '747', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1468', '1345', '748', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1469', '1345', '749', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1470', '1345', '750', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1471', '1345', '751', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1472', '1345', '752', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1473', '1345', '753', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1474', '1345', '754', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1475', '1345', '755', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1476', '1345', '756', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1477', '1345', '757', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1478', '1345', '758', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1479', '1345', '759', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1480', '1345', '760', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1481', '1345', '761', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1482', '1345', '762', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1483', '1345', '763', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1484', '1345', '764', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1485', '1345', '765', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1486', '1345', '766', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1487', '1345', '767', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1488', '1345', '768', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1489', '1345', '769', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1490', '1345', '770', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1491', '1345', '771', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1492', '1345', '772', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1493', '1345', '773', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1494', '1345', '774', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1495', '1345', '775', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1496', '1345', '776', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1497', '1345', '777', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1498', '1345', '778', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1499', '1345', '779', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1500', '1345', '780', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1501', '1345', '781', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1502', '1345', '782', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1503', '1345', '783', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1504', '1345', '784', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1505', '1345', '785', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1506', '1345', '786', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1507', '1345', '787', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1508', '1345', '788', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1509', '1345', '789', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1510', '1345', '790', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1511', '1345', '791', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1512', '1345', '792', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1513', '1345', '793', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1514', '1345', '794', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1515', '1345', '795', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1516', '1345', '796', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1517', '1345', '797', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1518', '1345', '798', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1519', '1345', '799', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1520', '1345', '800', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1521', '1345', '801', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1522', '1345', '802', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1523', '1345', '803', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1524', '1345', '804', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1525', '1345', '805', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1526', '1345', '806', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1527', '1345', '807', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1528', '1345', '808', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1529', '1345', '873', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1530', '1345', '874', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1531', '1345', '875', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1532', '1345', '876', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1533', '1345', '877', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1534', '1345', '878', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1535', '1345', '879', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1536', '1345', '880', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1537', '1345', '881', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1538', '1345', '882', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1539', '1345', '883', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1540', '1345', '884', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1541', '1345', '885', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1542', '1345', '886', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1543', '1345', '887', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1544', '1345', '888', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1545', '1345', '889', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1546', '1345', '890', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1547', '1345', '891', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1548', '1345', '892', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1549', '1345', '893', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1550', '1345', '894', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1551', '1345', '895', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1552', '1345', '896', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1553', '1345', '897', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1554', '1345', '898', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1555', '1345', '899', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1556', '1345', '900', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1557', '1345', '901', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1558', '1345', '902', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1559', '1345', '903', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1560', '1345', '904', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1561', '1345', '905', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1562', '1345', '906', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1563', '1345', '907', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1564', '1345', '908', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1565', '1345', '909', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1566', '1345', '910', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1567', '1345', '911', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1568', '1345', '912', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1569', '1345', '913', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1570', '1345', '914', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1571', '1345', '915', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1572', '1345', '916', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1573', '1345', '917', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1574', '1345', '918', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1575', '1345', '919', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1576', '1345', '920', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1577', '1345', '921', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1578', '1345', '922', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1579', '1345', '923', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1580', '1345', '924', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1581', '1345', '925', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1582', '1345', '926', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1583', '1345', '927', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1584', '1345', '928', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1585', '1345', '929', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1586', '1345', '930', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1587', '1345', '931', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1588', '1345', '932', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1589', '1345', '933', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1590', '1345', '934', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1591', '1345', '935', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1592', '1345', '936', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1625', '1345', '1065', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1626', '1345', '1066', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1627', '1345', '1067', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1628', '1345', '1068', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1629', '1345', '1069', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1630', '1345', '1070', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1631', '1345', '1071', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1632', '1345', '1072', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1633', '1345', '1073', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1634', '1345', '1074', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1635', '1345', '1075', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1636', '1345', '1076', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1637', '1345', '1077', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1638', '1345', '1078', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1639', '1345', '1079', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1640', '1345', '1080', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1641', '1345', '1081', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1642', '1345', '1082', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1643', '1345', '1083', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1644', '1345', '1084', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1645', '1345', '1085', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1646', '1345', '1086', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1647', '1345', '1087', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1648', '1345', '1088', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1649', '1345', '1089', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1650', '1345', '1090', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1651', '1345', '1091', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1652', '1345', '1092', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1653', '1345', '1093', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1654', '1345', '1094', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1655', '1345', '1095', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1656', '1345', '1096', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1657', '1345', '1097', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1658', '1345', '1098', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1659', '1345', '1099', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1660', '1345', '1100', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1661', '1345', '1101', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1662', '1345', '1102', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1663', '1345', '1103', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1664', '1345', '1104', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1665', '1345', '1105', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1666', '1345', '1106', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1667', '1345', '1107', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1668', '1345', '1108', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1669', '1345', '1109', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1670', '1345', '1110', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1671', '1345', '1111', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1672', '1345', '1112', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1673', '1345', '1113', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1674', '1345', '1114', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1675', '1345', '1115', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1676', '1345', '1116', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1677', '1345', '1117', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1678', '1345', '1118', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1679', '1345', '1119', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1680', '1345', '1120', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1681', '1345', '1121', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1682', '1345', '1122', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1683', '1345', '1123', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1684', '1345', '1124', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1685', '1345', '1125', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1686', '1345', '1126', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1687', '1345', '1127', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1688', '1345', '1128', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1689', '1345', '1129', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1690', '1345', '1130', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1691', '1345', '1131', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1692', '1345', '1132', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1693', '1345', '1133', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1694', '1345', '1134', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1695', '1345', '1135', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1696', '1345', '1136', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1697', '1345', '1137', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1698', '1345', '1138', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1699', '1345', '1139', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1700', '1345', '1140', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1701', '1345', '1141', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1702', '1345', '1142', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1703', '1345', '1143', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1704', '1345', '1144', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1705', '1345', '1145', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1706', '1345', '1146', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1707', '1345', '1147', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1708', '1345', '1148', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1709', '1345', '1149', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1710', '1345', '1150', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1711', '1345', '1151', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1712', '1345', '1152', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1713', '1345', '1153', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1714', '1345', '1154', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1715', '1345', '1155', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1716', '1345', '1156', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1717', '1345', '1157', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1718', '1345', '1158', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1719', '1345', '1159', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1720', '1345', '1160', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1721', '1345', '1161', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1722', '1345', '1162', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1723', '1345', '1163', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1724', '1345', '1164', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1725', '1345', '1165', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1726', '1345', '1166', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1727', '1345', '1167', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1728', '1345', '1168', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1729', '1345', '1169', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1730', '1345', '1170', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1731', '1345', '1171', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1732', '1345', '1172', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1733', '1345', '1173', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1734', '1345', '1174', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1735', '1345', '1175', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1736', '1345', '1176', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1737', '1345', '1177', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1738', '1345', '1178', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1739', '1345', '1179', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1740', '1345', '1180', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1741', '1345', '1181', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1742', '1345', '1182', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1743', '1345', '1183', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1744', '1345', '1184', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1745', '1345', '1185', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1746', '1345', '1186', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1747', '1345', '1187', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1748', '1345', '1188', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1749', '1345', '1189', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1750', '1345', '1190', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1751', '1345', '1191', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1752', '1345', '1192', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1753', '1352', '1033', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1754', '1352', '1034', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1755', '1352', '1035', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1756', '1352', '1036', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1757', '1352', '1037', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1758', '1352', '1038', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1759', '1352', '1039', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1760', '1352', '1040', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1761', '1352', '1041', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1762', '1352', '1042', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1763', '1352', '1043', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1764', '1352', '1044', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1765', '1352', '1045', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1766', '1352', '1046', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1767', '1352', '1047', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1768', '1352', '1048', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1769', '1352', '1049', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1770', '1352', '1050', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1771', '1352', '1051', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1772', '1352', '1052', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1773', '1352', '1053', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1774', '1352', '1054', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1775', '1352', '1055', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1776', '1352', '1056', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1777', '1352', '1057', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1778', '1352', '1058', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1779', '1352', '1059', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1780', '1352', '1060', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1781', '1352', '1061', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1782', '1352', '1062', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1783', '1352', '1063', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1784', '1352', '1064', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1785', '1353', '1033', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1786', '1353', '1034', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1787', '1353', '1035', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1788', '1353', '1036', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1789', '1353', '1037', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1790', '1353', '1038', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1791', '1353', '1039', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1792', '1353', '1040', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1793', '1353', '1041', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1794', '1353', '1042', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1795', '1353', '1043', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1796', '1353', '1044', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1797', '1353', '1045', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1798', '1353', '1046', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1799', '1353', '1047', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1800', '1353', '1048', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1801', '1353', '1049', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1802', '1353', '1050', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1803', '1353', '1051', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1804', '1353', '1052', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1805', '1353', '1053', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1806', '1353', '1054', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1807', '1353', '1055', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1808', '1353', '1056', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1809', '1353', '1057', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1810', '1353', '1058', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1811', '1353', '1059', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1812', '1353', '1060', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1813', '1353', '1061', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1814', '1353', '1062', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1815', '1353', '1063', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1816', '1353', '1064', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1817', '1354', '1033', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1818', '1354', '1034', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1819', '1354', '1035', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1820', '1354', '1036', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1821', '1354', '1037', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1822', '1354', '1038', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1823', '1354', '1039', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1824', '1354', '1040', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1825', '1354', '1041', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1826', '1354', '1042', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1827', '1354', '1043', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1828', '1354', '1044', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1829', '1354', '1045', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1830', '1354', '1046', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1831', '1354', '1047', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1832', '1354', '1048', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1833', '1354', '1049', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1834', '1354', '1050', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1835', '1354', '1051', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1836', '1354', '1052', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1837', '1354', '1053', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1838', '1354', '1054', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1839', '1354', '1055', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1840', '1354', '1056', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1841', '1354', '1057', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1842', '1354', '1058', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1843', '1354', '1059', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1844', '1354', '1060', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1845', '1354', '1061', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1846', '1354', '1062', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1847', '1354', '1063', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1848', '1354', '1064', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1849', '1355', '873', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1850', '1355', '874', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1851', '1355', '875', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1852', '1355', '876', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1853', '1355', '877', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1854', '1355', '878', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1855', '1355', '879', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1856', '1355', '880', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1857', '1355', '881', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1858', '1355', '882', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1859', '1355', '883', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1860', '1355', '884', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1861', '1355', '885', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1862', '1355', '886', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1863', '1355', '887', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1864', '1355', '888', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1865', '1355', '889', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1866', '1355', '890', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1867', '1355', '891', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1868', '1355', '892', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1869', '1355', '893', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1870', '1355', '894', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1871', '1355', '895', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1872', '1355', '896', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1873', '1355', '897', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1874', '1355', '898', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1875', '1355', '899', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1876', '1355', '900', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1877', '1355', '901', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1878', '1355', '902', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1879', '1355', '903', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1880', '1355', '904', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1881', '1355', '905', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1882', '1355', '906', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1883', '1355', '907', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1884', '1355', '908', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1885', '1355', '909', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1886', '1355', '910', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1887', '1355', '911', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1888', '1355', '912', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1889', '1355', '913', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1890', '1355', '914', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1891', '1355', '915', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1892', '1355', '916', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1893', '1355', '917', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1894', '1355', '918', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1895', '1355', '919', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1896', '1355', '920', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1897', '1355', '921', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1898', '1355', '922', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1899', '1355', '923', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1900', '1355', '924', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1901', '1355', '925', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1902', '1355', '926', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1903', '1355', '927', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1904', '1355', '928', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1905', '1355', '929', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1906', '1355', '930', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1907', '1355', '931', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1908', '1355', '932', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1909', '1355', '933', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1910', '1355', '934', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1911', '1355', '935', '2017-04-07', '2017-04-07');
INSERT INTO `t_c_relationship` VALUES ('1912', '1355', '936', '2017-04-07', '2017-04-07');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Records of t_classes
-- ----------------------------
INSERT INTO `t_classes` VALUES ('29', '13外包1', '2013', '73', '36');
INSERT INTO `t_classes` VALUES ('30', '13外包2', '2013', '73', '39');
INSERT INTO `t_classes` VALUES ('31', '14外包1', '2014', '73', '40');
INSERT INTO `t_classes` VALUES ('32', '14外包2', '2014', '73', '39');
INSERT INTO `t_classes` VALUES ('33', '13计本', '2013', '74', '50');
INSERT INTO `t_classes` VALUES ('34', '14计本', '2014', '74', '44');
INSERT INTO `t_classes` VALUES ('35', '13水上', '2013', '83', '30');
INSERT INTO `t_classes` VALUES ('36', '13人体1班', '2013', '81', '40');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='教师与课程';

-- ----------------------------
-- Records of t_classes_course
-- ----------------------------
INSERT INTO `t_classes_course` VALUES ('19', '29', '35', '60', '73', '64');
INSERT INTO `t_classes_course` VALUES ('26', '30', '35', '62', '73', '64');
INSERT INTO `t_classes_course` VALUES ('29', '36', '38', '66', '81', '32');
INSERT INTO `t_classes_course` VALUES ('30', '34', '36', '67', '74', '32');
INSERT INTO `t_classes_course` VALUES ('31', '34', '37', '68', '74', '32');
INSERT INTO `t_classes_course` VALUES ('32', '34', '36', '69', '74', '32');
INSERT INTO `t_classes_course` VALUES ('33', '0', '39', '70', '0', '32');

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('60', '大数据技术', '64', '73', '2017-04-06 14:24:31');
INSERT INTO `t_course` VALUES ('62', '大数据技术', '64', '73', '2017-04-06 15:10:24');
INSERT INTO `t_course` VALUES ('66', '人体运动基础', '32', '81', '2017-04-06 21:04:03');
INSERT INTO `t_course` VALUES ('67', '计算机组成原理', '32', '74', '2017-04-06 21:08:28');
INSERT INTO `t_course` VALUES ('68', 'acm程序设计', '32', '74', '2017-04-06 21:40:43');
INSERT INTO `t_course` VALUES ('69', '计算机数学', '32', '74', '2017-04-06 21:44:15');
INSERT INTO `t_course` VALUES ('70', '四大名著导读', '32', '0', '2017-04-07 09:27:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=1193 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_detail
-- ----------------------------
INSERT INTO `t_course_detail` VALUES ('745', '35', '60', '1', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('746', '35', '60', '1', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('747', '35', '60', '1', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('748', '35', '60', '1', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('749', '35', '60', '2', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('750', '35', '60', '2', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('751', '35', '60', '2', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('752', '35', '60', '2', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('753', '35', '60', '3', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('754', '35', '60', '3', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('755', '35', '60', '3', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('756', '35', '60', '3', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('757', '35', '60', '4', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('758', '35', '60', '4', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('759', '35', '60', '4', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('760', '35', '60', '4', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('761', '35', '60', '5', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('762', '35', '60', '5', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('763', '35', '60', '5', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('764', '35', '60', '5', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('765', '35', '60', '6', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('766', '35', '60', '6', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('767', '35', '60', '6', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('768', '35', '60', '6', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('769', '35', '60', '7', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('770', '35', '60', '7', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('771', '35', '60', '7', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('772', '35', '60', '7', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('773', '35', '60', '8', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('774', '35', '60', '8', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('775', '35', '60', '8', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('776', '35', '60', '8', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('777', '35', '60', '9', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('778', '35', '60', '9', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('779', '35', '60', '9', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('780', '35', '60', '9', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('781', '35', '60', '10', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('782', '35', '60', '10', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('783', '35', '60', '10', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('784', '35', '60', '10', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('785', '35', '60', '11', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('786', '35', '60', '11', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('787', '35', '60', '11', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('788', '35', '60', '11', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('789', '35', '60', '12', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('790', '35', '60', '12', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('791', '35', '60', '12', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('792', '35', '60', '12', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('793', '35', '60', '13', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('794', '35', '60', '13', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('795', '35', '60', '13', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('796', '35', '60', '13', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('797', '35', '60', '14', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('798', '35', '60', '14', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('799', '35', '60', '14', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('800', '35', '60', '14', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('801', '35', '60', '15', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('802', '35', '60', '15', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('803', '35', '60', '15', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('804', '35', '60', '15', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('805', '35', '60', '16', '1', '1', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('806', '35', '60', '16', '1', '2', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('807', '35', '60', '16', '4', '3', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('808', '35', '60', '16', '4', '4', '1', '0', '1', '3', '0', 'hadoop、mapreduce基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('873', '35', '62', '1', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('874', '35', '62', '1', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('875', '35', '62', '1', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('876', '35', '62', '1', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('877', '35', '62', '2', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('878', '35', '62', '2', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('879', '35', '62', '2', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('880', '35', '62', '2', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('881', '35', '62', '3', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('882', '35', '62', '3', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('883', '35', '62', '3', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('884', '35', '62', '3', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('885', '35', '62', '4', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('886', '35', '62', '4', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('887', '35', '62', '4', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('888', '35', '62', '4', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('889', '35', '62', '5', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('890', '35', '62', '5', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('891', '35', '62', '5', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('892', '35', '62', '5', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('893', '35', '62', '6', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('894', '35', '62', '6', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('895', '35', '62', '6', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('896', '35', '62', '6', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('897', '35', '62', '7', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('898', '35', '62', '7', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('899', '35', '62', '7', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('900', '35', '62', '7', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('901', '35', '62', '8', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('902', '35', '62', '8', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('903', '35', '62', '8', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('904', '35', '62', '8', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('905', '35', '62', '9', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('906', '35', '62', '9', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('907', '35', '62', '9', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('908', '35', '62', '9', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('909', '35', '62', '10', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('910', '35', '62', '10', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('911', '35', '62', '10', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('912', '35', '62', '10', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('913', '35', '62', '11', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('914', '35', '62', '11', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('915', '35', '62', '11', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('916', '35', '62', '11', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('917', '35', '62', '12', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('918', '35', '62', '12', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('919', '35', '62', '12', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('920', '35', '62', '12', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('921', '35', '62', '13', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('922', '35', '62', '13', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('923', '35', '62', '13', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('924', '35', '62', '13', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('925', '35', '62', '14', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('926', '35', '62', '14', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('927', '35', '62', '14', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('928', '35', '62', '14', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('929', '35', '62', '15', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('930', '35', '62', '15', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('931', '35', '62', '15', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('932', '35', '62', '15', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('933', '35', '62', '16', '2', '1', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('934', '35', '62', '16', '2', '2', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('935', '35', '62', '16', '5', '5', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('936', '35', '62', '16', '5', '6', '1', '0', '1', '3', '0', 'hadoop、map-reduce基础应用', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1033', '38', '66', '1', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1034', '38', '66', '1', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1035', '38', '66', '2', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1036', '38', '66', '2', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1037', '38', '66', '3', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1038', '38', '66', '3', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1039', '38', '66', '4', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1040', '38', '66', '4', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1041', '38', '66', '5', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1042', '38', '66', '5', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1043', '38', '66', '6', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1044', '38', '66', '6', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1045', '38', '66', '7', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1046', '38', '66', '7', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1047', '38', '66', '8', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1048', '38', '66', '8', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1049', '38', '66', '9', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1050', '38', '66', '9', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1051', '38', '66', '10', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1052', '38', '66', '10', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1053', '38', '66', '11', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1054', '38', '66', '11', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1055', '38', '66', '12', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1056', '38', '66', '12', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1057', '38', '66', '13', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1058', '38', '66', '13', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1059', '38', '66', '14', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1060', '38', '66', '14', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1061', '38', '66', '15', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1062', '38', '66', '15', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1063', '38', '66', '16', '1', '1', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1064', '38', '66', '16', '1', '2', '4', '0', '1', '2', '0', '人体运动基础', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1065', '36', '67', '1', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1066', '36', '67', '1', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1067', '36', '67', '2', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1068', '36', '67', '2', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1069', '36', '67', '3', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1070', '36', '67', '3', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1071', '36', '67', '4', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1072', '36', '67', '4', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1073', '36', '67', '5', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1074', '36', '67', '5', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1075', '36', '67', '6', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1076', '36', '67', '6', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1077', '36', '67', '7', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1078', '36', '67', '7', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1079', '36', '67', '8', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1080', '36', '67', '8', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1081', '36', '67', '9', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1082', '36', '67', '9', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1083', '36', '67', '10', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1084', '36', '67', '10', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1085', '36', '67', '11', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1086', '36', '67', '11', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1087', '36', '67', '12', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1088', '36', '67', '12', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1089', '36', '67', '13', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1090', '36', '67', '13', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1091', '36', '67', '14', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1092', '36', '67', '14', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1093', '36', '67', '15', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1094', '36', '67', '15', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1095', '36', '67', '16', '5', '7', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1096', '36', '67', '16', '5', '8', '5', '0', '1', '3', '0', '计算机组成原理', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1097', '37', '68', '1', '2', '5', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1098', '37', '68', '1', '2', '6', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1099', '37', '68', '1', '2', '7', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1100', '37', '68', '1', '2', '8', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1101', '37', '68', '2', '2', '5', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1102', '37', '68', '2', '2', '6', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1103', '37', '68', '2', '2', '7', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1104', '37', '68', '2', '2', '8', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1105', '37', '68', '3', '2', '5', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1106', '37', '68', '3', '2', '6', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1107', '37', '68', '3', '2', '7', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1108', '37', '68', '3', '2', '8', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1109', '37', '68', '4', '2', '5', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1110', '37', '68', '4', '2', '6', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1111', '37', '68', '4', '2', '7', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1112', '37', '68', '4', '2', '8', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1113', '37', '68', '5', '2', '5', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1114', '37', '68', '5', '2', '6', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1115', '37', '68', '5', '2', '7', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1116', '37', '68', '5', '2', '8', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1117', '37', '68', '6', '2', '5', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1118', '37', '68', '6', '2', '6', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1119', '37', '68', '6', '2', '7', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1120', '37', '68', '6', '2', '8', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1121', '37', '68', '7', '2', '5', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1122', '37', '68', '7', '2', '6', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1123', '37', '68', '7', '2', '7', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1124', '37', '68', '7', '2', '8', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1125', '37', '68', '8', '2', '5', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1126', '37', '68', '8', '2', '6', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1127', '37', '68', '8', '2', '7', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1128', '37', '68', '8', '2', '8', '1', '0', '1', '2', '0', 'acm', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1129', '36', '69', '1', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1130', '36', '69', '1', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1131', '36', '69', '2', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1132', '36', '69', '2', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1133', '36', '69', '3', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1134', '36', '69', '3', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1135', '36', '69', '4', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1136', '36', '69', '4', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1137', '36', '69', '5', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1138', '36', '69', '5', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1139', '36', '69', '6', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1140', '36', '69', '6', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1141', '36', '69', '7', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1142', '36', '69', '7', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1143', '36', '69', '8', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1144', '36', '69', '8', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1145', '36', '69', '9', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1146', '36', '69', '9', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1147', '36', '69', '10', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1148', '36', '69', '10', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1149', '36', '69', '11', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1150', '36', '69', '11', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1151', '36', '69', '12', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1152', '36', '69', '12', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1153', '36', '69', '13', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1154', '36', '69', '13', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1155', '36', '69', '14', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1156', '36', '69', '14', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1157', '36', '69', '15', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1158', '36', '69', '15', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1159', '36', '69', '16', '3', '3', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1160', '36', '69', '16', '3', '4', '2', '0', '1', '3', '0', '计算机应用需要的数学基础知识', '2017-04-06', '2017-04-06');
INSERT INTO `t_course_detail` VALUES ('1161', '39', '70', '1', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1162', '39', '70', '1', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1163', '39', '70', '2', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1164', '39', '70', '2', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1165', '39', '70', '3', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1166', '39', '70', '3', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1167', '39', '70', '4', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1168', '39', '70', '4', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1169', '39', '70', '5', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1170', '39', '70', '5', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1171', '39', '70', '6', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1172', '39', '70', '6', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1173', '39', '70', '7', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1174', '39', '70', '7', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1175', '39', '70', '8', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1176', '39', '70', '8', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1177', '39', '70', '9', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1178', '39', '70', '9', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1179', '39', '70', '10', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1180', '39', '70', '10', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1181', '39', '70', '11', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1182', '39', '70', '11', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1183', '39', '70', '12', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1184', '39', '70', '12', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1185', '39', '70', '13', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1186', '39', '70', '13', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1187', '39', '70', '14', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1188', '39', '70', '14', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1189', '39', '70', '15', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1190', '39', '70', '15', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1191', '39', '70', '16', '7', '5', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');
INSERT INTO `t_course_detail` VALUES ('1192', '39', '70', '16', '7', '6', '4', '0', '2', '2', '0', '四大名著导读', '2017-04-07', '2017-04-07');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_evaluate
-- ----------------------------
INSERT INTO `t_evaluate` VALUES ('1', '1339', '100', '不错，老师讲得很好', '0', '60');

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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='专业表';

-- ----------------------------
-- Records of t_major
-- ----------------------------
INSERT INTO `t_major` VALUES ('73', '计算机科学与技术（软件服务外包）', '1', '4', '2017-04-06 10:13:13');
INSERT INTO `t_major` VALUES ('74', '计算机科学与技术（师范）', '1', '4', '2017-04-06 10:13:31');
INSERT INTO `t_major` VALUES ('75', '计算机科学与技术（软件工程）', '1', '4', '2017-04-06 10:13:48');
INSERT INTO `t_major` VALUES ('76', '计算机科学与技术（网络工程）', '1', '4', '2017-04-06 10:14:05');
INSERT INTO `t_major` VALUES ('77', '电子信息工程', '1', '4', '2017-04-06 10:14:21');
INSERT INTO `t_major` VALUES ('78', '电气工程及其自动化', '1', '4', '2017-04-06 10:14:33');
INSERT INTO `t_major` VALUES ('79', '教育技术学', '1', '4', '2017-04-06 10:14:45');
INSERT INTO `t_major` VALUES ('80', '数字媒体', '1', '4', '2017-04-06 10:14:57');
INSERT INTO `t_major` VALUES ('81', '人体运动与科学', '2', '4', '2017-04-06 10:15:33');
INSERT INTO `t_major` VALUES ('82', '体育教育', '2', '4', '2017-04-06 10:15:47');
INSERT INTO `t_major` VALUES ('83', '水上运动', '2', '4', '2017-04-06 10:16:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('29', '100', '1339', '60', '2017-04-06 15:21:01', '1');
INSERT INTO `t_score` VALUES ('30', '99', '1340', '60', '2017-04-06 15:21:09', '1');
INSERT INTO `t_score` VALUES ('31', '100', '1341', '62', '2017-04-06 15:21:18', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=1356 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1339', null, '叶志强', '2013874134', '0', null, null, null, '2013-09-07 00:00:00', '13802439641', null, '1187456698@qq.com', null, null, '440782199407230613', null, null, '2013', '29', null, '2013874134', 'ylKM2XiN27oMlMlYK6M4ZpPxPO1EFPqrxCuebsUz+zHJVKGKBDEX+52UBmNDnY4cWr/M+Wg6msmtXFJNFtkNlQ==');
INSERT INTO `t_student` VALUES ('1340', null, '陈海燕', '2013874135', '1', null, null, null, '2013-09-07 00:00:00', '13800138000', null, '123456@qq.com', null, null, '440782199407230614', null, null, '2013', '29', null, '2013874135', 'h8kHaMxvf/uLWv1xnlWItZPxPO1EFPqrxCuebsUz+zHJVKGKBDEX+08co0d4thHpbOQ5MPTpwFcZUfcg2kT3lQ==');
INSERT INTO `t_student` VALUES ('1341', null, '王大锤', '2013874201', '0', null, null, null, '2013-09-07 00:00:00', '13800138000', null, '123456@qq.com', null, null, '440882199407234561', null, null, '2013', '30', null, '2013874201', 'EEZXGYxaUdgXazqxl861jJPxPO1EFPqrxCuebsUz+zHJVKGKBDEX+33kOYj+5/71x7cNXtGNV5sODgj0IjPJtQ==');
INSERT INTO `t_student` VALUES ('1342', null, '林海阳', '2013874133', '0', null, null, null, '2013-09-07 00:00:00', '13800138000', null, '123456789@163.com', null, null, '440782199408230614', null, null, '2013', '29', null, '2013974133', 'k3Hc3VHJzQhLUknWp/z9kv8LrTFdNYA+yT5dAGWSeE8Bt4Dl9i90auCx2aP6knPeS5m4RRiioLTcG6iqIeMKVg==');
INSERT INTO `t_student` VALUES ('1343', null, '陈宜武', '2013874132', '0', null, null, null, '2013-09-07 00:00:00', '13800138000', null, '789456123@qq.com', null, null, '440782199207552631', null, null, '2013', '29', null, '2013874132', 'Y3ER9gWMbgeoxEPjy8B0cf8LrTFdNYA+yT5dAGWSeE8Bt4Dl9i90auHnvjP4t1zySEkwvdBk0I7yvQlzkN52qw==');
INSERT INTO `t_student` VALUES ('1345', null, '李菲菲', '2013874202', '1', null, null, null, '2013-09-07 00:00:00', '13800138000', null, '4445566@163.com', null, null, '440782199506132456', null, null, '2013', '30', null, '2013874202', 'L2jkDHA1RpTMObD0zXqf9ZPxPO1EFPqrxCuebsUz+zHJVKGKBDEX+8RZVw2n94iFbOQ5MPTpwFffDSmsqt4e0w==');
INSERT INTO `t_student` VALUES ('1352', null, '黎明', '2013884101', '0', '', null, '', '2013-09-07 00:00:00', '18302439641', '', '1079412177@qq.com', '', '', '440895199825634000', '', '', '2013', '36', '', '2013884101', '3+lE+Zvx2+QtnHBX8S3a65PxPO1EFPqrxCuebsUz+zHJVKGKBDEX+yA7EL9+GFDDHkl+4AEtb3D3umOmMQMuog==');
INSERT INTO `t_student` VALUES ('1353', null, '刘德华', '2013884102', '0', '', null, '', '2013-09-07 00:00:00', '18356426985', '', '45612895@qq.com', '', '', '440783199507229000', '', '', '2013', '36', '', '2013884102', 'PlLKX1BOod46WSV8q3Q+7vIzUqcJUQEC/W1Juz5Te4HAAMKf1P9XLZFOJOjZyAK7jdjpARL5qXwkKOA9yY3OwA==');
INSERT INTO `t_student` VALUES ('1354', null, '张学友', '2013884103', '0', '', null, '', '2013-09-07 00:00:00', '13956412658', '', '856123422@qq.com', '', '', '440782199632561000', '', '', '2013', '36', '', '2013884103', 'b5DkSu2oF7eBZDNJvwC+Z5PxPO1EFPqrxCuebsUz+zHJVKGKBDEX+2QO5n9pDN14LHAwTSOZHjupPJr9FLJEPg==');
INSERT INTO `t_student` VALUES ('1355', null, '朱明明', '2013874203', '1', null, null, null, '2013-09-07 00:00:00', '13800138000', null, '147852@163.com', null, null, '440782199507230613', null, null, '2013', '30', null, '2013874203', 'fN8yJ15cC3egfKypuCQyKv8LrTFdNYA+yT5dAGWSeE8Bt4Dl9i90akLCnqQpJjConhzsidSnXWftdxTLVwMy1w==');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='教师表';

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('35', null, '彭增炎', '101', '0', null, null, null, '2017-04-06 10:25:58', '13800138000', null, null, '445478455964125632', null, '1', '101', '0');
INSERT INTO `t_teacher` VALUES ('36', null, '李君', '102', '0', null, null, null, '2017-04-06 10:26:23', '13800138000', null, null, '445125788451254562', null, '1', '102', '1');
INSERT INTO `t_teacher` VALUES ('37', null, '吴涛', '103', '0', null, null, null, '2017-04-06 10:26:47', '13800138000', null, null, '445214774512547851', null, '2', '103', '1');
INSERT INTO `t_teacher` VALUES ('38', null, '陈霞', '201', '1', null, null, null, '2017-04-06 10:27:14', '13800138000', null, null, '445123444589654123', null, '3', '201', '2');
INSERT INTO `t_teacher` VALUES ('39', null, '杜鹃', '301', '1', null, null, null, '2017-04-07 09:22:25', '13800138000', null, null, '440784556412587456', null, '2', '301', '3');

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
