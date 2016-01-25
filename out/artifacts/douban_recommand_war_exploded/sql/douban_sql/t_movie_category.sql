/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : douban_recommand

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-01-07 22:01:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_movie_category
-- ----------------------------
DROP TABLE IF EXISTS `t_movie_category`;
CREATE TABLE `t_movie_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_movie_category
-- ----------------------------
INSERT INTO `t_movie_category` VALUES ('1', '歌舞');
INSERT INTO `t_movie_category` VALUES ('2', '恐怖');
INSERT INTO `t_movie_category` VALUES ('3', '武侠');
INSERT INTO `t_movie_category` VALUES ('4', '喜剧');
INSERT INTO `t_movie_category` VALUES ('5', '奇幻');
INSERT INTO `t_movie_category` VALUES ('6', '情色');
INSERT INTO `t_movie_category` VALUES ('7', '儿童');
INSERT INTO `t_movie_category` VALUES ('8', '剧情');
INSERT INTO `t_movie_category` VALUES ('9', '战争');
INSERT INTO `t_movie_category` VALUES ('10', '悬疑');
INSERT INTO `t_movie_category` VALUES ('11', '犯罪');
INSERT INTO `t_movie_category` VALUES ('12', '灾难');
INSERT INTO `t_movie_category` VALUES ('13', '家庭');
INSERT INTO `t_movie_category` VALUES ('14', '动作');
INSERT INTO `t_movie_category` VALUES ('15', '冒险');
INSERT INTO `t_movie_category` VALUES ('16', '科幻');
INSERT INTO `t_movie_category` VALUES ('17', '音乐');
INSERT INTO `t_movie_category` VALUES ('18', '运动');
INSERT INTO `t_movie_category` VALUES ('19', '动画');
INSERT INTO `t_movie_category` VALUES ('20', '历史');
INSERT INTO `t_movie_category` VALUES ('21', '传记');
INSERT INTO `t_movie_category` VALUES ('22', '古装');
INSERT INTO `t_movie_category` VALUES ('23', '爱情');
INSERT INTO `t_movie_category` VALUES ('24', '同性');
INSERT INTO `t_movie_category` VALUES ('25', '惊悚');
