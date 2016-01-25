/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : douban_recommand

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-01-07 22:01:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_hot_movie
-- ----------------------------
DROP TABLE IF EXISTS `t_hot_movie`;
CREATE TABLE `t_hot_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `movie_rate` double DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `release_date` date NOT NULL,
  `length_of_film` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26351661 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_hot_movie
-- ----------------------------
INSERT INTO `t_hot_movie` VALUES ('1428055', '罪恶之城2', 'http://movie.douban.com/subject/1428055/', '6.1', '/动作/惊悚/犯罪', ' 英语', 'p2193680612.jpg', '2014-08-22', '102');
INSERT INTO `t_hot_movie` VALUES ('1889243', '星际穿越', 'http://movie.douban.com/subject/1889243/', '9.1', '/剧情/科幻/悬疑/冒险', ' 英语', 'p2206088801.jpg', '2014-11-07', '169');
INSERT INTO `t_hot_movie` VALUES ('2147872', '德古拉元年', 'http://movie.douban.com/subject/2147872/', '6.1', '/剧情/动作/奇幻', ' 英语', 'p2202249262.jpg', '2014-10-02', '92');
INSERT INTO `t_hot_movie` VALUES ('2325873', '第七子：降魔之战', 'http://movie.douban.com/subject/2325873/', '5', '/奇幻/冒险', ' 英语', 'p2219669553.jpg', '2015-02-06', '103');
INSERT INTO `t_hot_movie` VALUES ('2973079', '霍比特人3：五军之战', 'http://movie.douban.com/subject/2973079/', '8.2', '/动作/奇幻/冒险', ' 英语', 'p2219406504.jpg', '2014-12-17', '144');
INSERT INTO `t_hot_movie` VALUES ('2998373', '帕丁顿熊', 'http://movie.douban.com/subject/2998373/', '7.7', '/喜剧/家庭', ' 英语', 'p2230471461.jpg', '2014-11-28', '95');
INSERT INTO `t_hot_movie` VALUES ('3006306', '温暖渐冻心', 'http://movie.douban.com/subject/3006306/', '7.4', '/剧情', ' 英语', 'p2204911658.jpg', '2014-10-10', '102');
INSERT INTO `t_hot_movie` VALUES ('3006769', '大眼睛', 'http://movie.douban.com/subject/3006769/', '6.8', '/剧情/传记', ' 英语 / 法语 / 意大利语', 'p2206810559.jpg', '2014-12-25', '106');
INSERT INTO `t_hot_movie` VALUES ('3007827', '意外的爱情', 'http://movie.douban.com/subject/3007827/', '4.7', '/喜剧/爱情', ' 英语', 'p2236176593.jpg', '2015-02-10', '100');
INSERT INTO `t_hot_movie` VALUES ('3012013', '伸冤人', 'http://movie.douban.com/subject/3012013/', '7.3', '/动作/惊悚/犯罪', ' 英语 / 俄语', 'p2201052935.jpg', '2014-09-26', '131');
INSERT INTO `t_hot_movie` VALUES ('3014399', '死亡占卜', 'http://movie.douban.com/subject/3014399/', '5.1', '/动作/惊悚/恐怖/冒险', ' 英语', 'p2191628035.jpg', '2014-10-24', '89');
INSERT INTO `t_hot_movie` VALUES ('3036472', '杀死信使', 'http://movie.douban.com/subject/3036472/', '6.7', '/剧情/悬疑/犯罪', ' 英语', 'p2185279427.jpg', '2014-10-10', '112');
INSERT INTO `t_hot_movie` VALUES ('3078390', '太平轮(上)', 'http://movie.douban.com/subject/3078390/', '5.7', '/剧情/爱情/战争', ' 汉语普通话 / 日语 / 闽南语 / 上海话', 'p2212075889.jpg', '2014-12-25', '129');
INSERT INTO `t_hot_movie` VALUES ('3089638', '塞尔玛', 'http://movie.douban.com/subject/3089638/', '7.2', '/剧情/传记/历史', ' 英语', 'p2220218254.jpg', '2014-12-25', '128');
INSERT INTO `t_hot_movie` VALUES ('3112738', '赛琳娜', 'http://movie.douban.com/subject/3112738/', '5.5', '/剧情', ' 英语', 'p2199665827.jpg', '2015-02-26', '109');
INSERT INTO `t_hot_movie` VALUES ('3157583', '宙斯之子：赫拉克勒斯', 'http://movie.douban.com/subject/3157583/', '5.9', '/动作/冒险', ' 英语', 'p2202615085.jpg', '2014-07-25', '101');
INSERT INTO `t_hot_movie` VALUES ('3217149', '忍者神龟：变种时代', 'http://movie.douban.com/subject/3217149/', '6.4', '/喜剧/动作/科幻/冒险', ' 英语 / 日语', 'p2204991581.jpg', '2014-08-08', '101');
INSERT INTO `t_hot_movie` VALUES ('3317370', '定制伴郎', 'http://movie.douban.com/subject/3317370/', '7.2', '/喜剧', ' 英语', 'p2212202680.jpg', '2015-01-06', '101');
INSERT INTO `t_hot_movie` VALUES ('3428529', '如果我留下', 'http://movie.douban.com/subject/3428529/', '6.1', '/剧情/爱情', ' 英语', 'p2210971106.jpg', '2014-08-22', '106');
INSERT INTO `t_hot_movie` VALUES ('3530407', '离别七日情', 'http://movie.douban.com/subject/3530407/', '6.8', '/剧情/喜剧', ' 英语', 'p2191254750.jpg', '2014-09-19', '103');
INSERT INTO `t_hot_movie` VALUES ('3821067', '一代宗师', 'http://movie.douban.com/subject/3821067/', '7.6', '/剧情/动作/传记', ' 汉语普通话 / 粤语 / 日语', 'p2217557172.jpg', '2013-08-23', '1113');
INSERT INTO `t_hot_movie` VALUES ('3993588', '狼图腾', 'http://movie.douban.com/subject/3993588/', '7', '/剧情/冒险', ' 汉语普通话 / 蒙古语', 'p2225291257.jpg', '2015-02-25', '121');
INSERT INTO `t_hot_movie` VALUES ('4160540', '机械姬', 'http://movie.douban.com/subject/4160540/', '7.9', '/剧情/科幻/惊悚', ' 英语', 'p2208934451.jpg', '2015-04-10', '108');
INSERT INTO `t_hot_movie` VALUES ('4301659', '危险藏匿', 'http://movie.douban.com/subject/4301659/', '6.3', '/剧情/犯罪', ' 英语', 'p2190225177.jpg', '2014-09-12', '106');
INSERT INTO `t_hot_movie` VALUES ('4845723', '死亡录像4：启示录', 'http://movie.douban.com/subject/4845723/', '5.4', '/剧情/惊悚/恐怖', ' 西班牙语', 's4567748.jpg', '2014-10-31', '95');
INSERT INTO `t_hot_movie` VALUES ('4881607', '撒娇女人最好命', 'http://movie.douban.com/subject/4881607/', '6', '/喜剧/爱情', ' 汉语普通话 / 英语', 'p2213388572.jpg', '2014-11-28', '95');
INSERT INTO `t_hot_movie` VALUES ('5153254', '爱你，罗茜', 'http://movie.douban.com/subject/5153254/', '7.3', '/喜剧/爱情', ' 英语', 'p2190768432.jpg', '2014-10-22', '102');
INSERT INTO `t_hot_movie` VALUES ('5154799', '木星上行', 'http://movie.douban.com/subject/5154799/', '5.5', '/动作/科幻/冒险', ' 英语 / 俄语', 'p2230222544.jpg', '2015-02-06', '126');
INSERT INTO `t_hot_movie` VALUES ('5327400', '寻找幸福的赫克托', 'http://movie.douban.com/subject/5327400/', '6.7', '/剧情/喜剧/冒险', ' 英语 / 法语 / 德语', 'p2188328689.jpg', '2014-08-14', '120');
INSERT INTO `t_hot_movie` VALUES ('5327474', '亚历山大和他最糟糕的一天', 'http://movie.douban.com/subject/5327474/', '6.5', '/喜剧/家庭', ' 英语', 'p2194255774.jpg', '2014-10-10', '81');
INSERT INTO `t_hot_movie` VALUES ('5432221', '性本恶', 'http://movie.douban.com/subject/5432221/', '6.7', '/剧情/喜剧/犯罪', ' 英语 / 日语', 'p2204216560.jpg', '2015-01-09', '148');
INSERT INTO `t_hot_movie` VALUES ('6126442', '一步之遥', 'http://movie.douban.com/subject/6126442/', '6.3', '/喜剧/爱情/冒险', ' 汉语普通话 / 英语 / 上海话 / 法语 / 日语 / 满语 / 越南语 / 拉丁语', 'p2210853894.jpg', '2014-12-18', '140');
INSERT INTO `t_hot_movie` VALUES ('6533054', '饥饿游戏3：嘲笑鸟(上)', 'http://movie.douban.com/subject/6533054/', '5.7', '/剧情/动作/科幻/冒险', ' 英语', 'p2222078042.jpg', '2014-11-21', '123');
INSERT INTO `t_hot_movie` VALUES ('6721670', '秦时明月之龙腾万里', 'http://movie.douban.com/subject/6721670/', '6.8', '/动画/奇幻/冒险/武侠', ' 汉语普通话 / 陕西方言', 'p2192465395.jpg', '2014-08-08', '98');
INSERT INTO `t_hot_movie` VALUES ('6873176', '最高通缉犯', 'http://movie.douban.com/subject/6873176/', '6.9', '/惊悚', ' 英语', 'p2190138822.jpg', '2014-07-25', '121');
INSERT INTO `t_hot_movie` VALUES ('6873740', '安妮：纽约奇缘', 'http://movie.douban.com/subject/6873740/', '6.3', '/剧情/喜剧/音乐/家庭', ' 英语', 'p2220435750.jpg', '2014-12-19', '118');
INSERT INTO `t_hot_movie` VALUES ('6873819', '机器纪元', 'http://movie.douban.com/subject/6873819/', '6.1', '/科幻/惊悚', ' 英语', 'p2213751986.jpg', '2014-10-10', '93');
INSERT INTO `t_hot_movie` VALUES ('7003416', '冲上云霄', 'http://movie.douban.com/subject/7003416/', '4.5', '/剧情/爱情', ' 汉语普通话 / 粤语', 'p2223365653.jpg', '2015-02-19', '100');
INSERT INTO `t_hot_movie` VALUES ('7046723', '猩球崛起2：黎明之战', 'http://movie.douban.com/subject/7046723/', '7.5', '/剧情/动作/科幻', ' 英语 / 美国手语', 'p2196211285.jpg', '2014-07-11', '130');
INSERT INTO `t_hot_movie` VALUES ('7054604', '变形金刚4：绝迹重生', 'http://movie.douban.com/subject/7054604/', '6.6', '/动作/科幻/冒险', ' 英语 / 汉语普通话 / 粤语', 'p2187231762.jpg', '2014-06-19', '166');
INSERT INTO `t_hot_movie` VALUES ('7059561', '垃圾男孩', 'http://movie.douban.com/subject/7059561/', '7.4', '/喜剧/犯罪/冒险', ' 葡萄牙语 / 英语', 'p2196446497.jpg', '2015-01-30', '113');
INSERT INTO `t_hot_movie` VALUES ('7065154', '银河护卫队', 'http://movie.douban.com/subject/7065154/', '8', '/动作/科幻/冒险', ' 英语 / 萨卡语', 'p2198455702.jpg', '2014-08-01', '121');
INSERT INTO `t_hot_movie` VALUES ('7065161', '鸣梁海战', 'http://movie.douban.com/subject/7065161/', '7', '/剧情/动作/传记/战争/冒险', ' 韩语', 'p2213003660.jpg', '2014-07-30', '109');
INSERT INTO `t_hot_movie` VALUES ('7065187', '不惧风暴', 'http://movie.douban.com/subject/7065187/', '6.7', '/动作/惊悚/灾难', ' 英语', 'p2196783192.jpg', '2014-08-08', '91');
INSERT INTO `t_hot_movie` VALUES ('7155005', '游客', 'http://movie.douban.com/subject/7155005/', '7.4', '/剧情/家庭', ' 瑞典语 / 英语 / 法语 / 挪威语', 'p2207561733.jpg', '2014-08-15', '120');
INSERT INTO `t_hot_movie` VALUES ('10440073', '艾芙莉', 'http://movie.douban.com/subject/10440073/', '4.8', '/动作/惊悚', ' 英语', 'p2209958225.jpg', '2015-01-23', '92');
INSERT INTO `t_hot_movie` VALUES ('10463953', '模仿游戏', 'http://movie.douban.com/subject/10463953/', '8.5', '/剧情/传记/战争', ' 英语 / 德语', 'p2202114105.jpg', '2014-12-25', '114');
INSERT INTO `t_hot_movie` VALUES ('10486471', '怒火保镖', 'http://movie.douban.com/subject/10486471/', '5', '/剧情/动作/犯罪', ' 英语', 'p2219283102.jpg', '2015-01-30', '92');
INSERT INTO `t_hot_movie` VALUES ('10508874', '布拉芙夫人', 'http://movie.douban.com/subject/10508874/', '5.7', '/爱情/惊悚', ' 韩语', 'p2196989429.jpg', '2014-10-02', '120');
INSERT INTO `t_hot_movie` VALUES ('10531415', '上帝帮助女孩', 'http://movie.douban.com/subject/10531415/', '6.8', '/剧情/爱情/歌舞', ' 英语', 'p2191739258.jpg', '2014-08-22', '111');
INSERT INTO `t_hot_movie` VALUES ('10543692', '鲁邦三世', 'http://movie.douban.com/subject/10543692/', '6.1', '/动作', ' 日语', 'p2185434060.jpg', '2014-08-30', '133');
INSERT INTO `t_hot_movie` VALUES ('10545939', '黄金时代', 'http://movie.douban.com/subject/10545939/', '7', '/剧情/爱情/传记', ' 汉语普通话 / 粤语 / 上海话 / 武汉话 / 四川话 / 俄语 / 日语', 'p2167320927.jpg', '2014-09-06', '179');
INSERT INTO `t_hot_movie` VALUES ('10546747', '法官老爹', 'http://movie.douban.com/subject/10546747/', '7.8', '/剧情', ' 英语', 'p2197746452.jpg', '2014-10-10', '141');
INSERT INTO `t_hot_movie` VALUES ('10546762', '魔法黑森林', 'http://movie.douban.com/subject/10546762/', '5.7', '/音乐/奇幻/冒险', ' 英语', 'p2213538065.jpg', '2014-12-25', '125');
INSERT INTO `t_hot_movie` VALUES ('10548265', '坚不可摧', 'http://movie.douban.com/subject/10548265/', '6.7', '/剧情/传记/战争/运动', ' 英语 / 日语 / 意大利语', 'p2222056402.jpg', '2014-12-25', '138');
INSERT INTO `t_hot_movie` VALUES ('10555085', '在我入睡前', 'http://movie.douban.com/subject/10555085/', '6.3', '/悬疑/惊悚', ' 英语', 'p1972569462.jpg', '2014-10-31', '92');
INSERT INTO `t_hot_movie` VALUES ('10577854', '阿呆与阿瓜2', 'http://movie.douban.com/subject/10577854/', '6.1', '/喜剧', ' 英语', 'p2188955424.jpg', '2014-11-14', '109');
INSERT INTO `t_hot_movie` VALUES ('10581884', '黑海夺金', 'http://movie.douban.com/subject/10581884/', '6.6', '/惊悚/冒险', ' 英语 / 俄语', 'p2224063661.jpg', '2014-12-05', '114');
INSERT INTO `t_hot_movie` VALUES ('10604893', '四大名捕大结局', 'http://movie.douban.com/subject/10604893/', '4.6', '/动作/爱情/悬疑/武侠', ' 汉语普通话 / 粤语', 'p2194662832.jpg', '2014-08-22', '107');
INSERT INTO `t_hot_movie` VALUES ('10754780', '无人引航', 'http://movie.douban.com/subject/10754780/', '8.2', '/剧情/音乐', ' 英语', 'p2194962310.jpg', '2014-10-17', '105');
INSERT INTO `t_hot_movie` VALUES ('10757685', '致命追踪', 'http://movie.douban.com/subject/10757685/', '5.4', '/剧情/动作/惊悚', ' 英语', 'p2213297133.jpg', '2015-03-20', '94');
INSERT INTO `t_hot_movie` VALUES ('10764850', '杀了我三次', 'http://movie.douban.com/subject/10764850/', '6.2', '/惊悚', ' 英语', 'p2197403805.jpg', '2014-11-28', '90');
INSERT INTO `t_hot_movie` VALUES ('10793610', '法老与众神', 'http://movie.douban.com/subject/10793610/', '6.5', '/剧情/动作/冒险', ' 英语 / 阿拉伯语 / 希伯来语', 'p2210708091.jpg', '2014-12-26', '151');
INSERT INTO `t_hot_movie` VALUES ('10796578', '自由之丘', 'http://movie.douban.com/subject/10796578/', '7.2', '/剧情', ' 英语 / 韩语 / 日语', 'p2193382662.jpg', '2014-09-04', '67');
INSERT INTO `t_hot_movie` VALUES ('10807892', '忘了去懂你', 'http://movie.douban.com/subject/10807892/', '6.4', '/剧情/家庭', ' 汉语普通话', 'p2196750997.jpg', '2014-08-29', '89');
INSERT INTO `t_hot_movie` VALUES ('10807909', '智取威虎山', 'http://movie.douban.com/subject/10807909/', '7.7', '/动作/战争/冒险', ' 汉语普通话 / 英语', 'p2215164906.jpg', '2014-12-23', '141');
INSERT INTO `t_hot_movie` VALUES ('10807916', '白发魔女传之明月天国', 'http://movie.douban.com/subject/10807916/', '3.8', '/动作/爱情/奇幻/武侠/古装', ' 汉语普通话 / 粤语', 'p2190764206.jpg', '2014-07-31', '103');
INSERT INTO `t_hot_movie` VALUES ('10877413', '老千2：神之手', 'http://movie.douban.com/subject/10877413/', '6.9', '/剧情/犯罪', ' 韩语', 'p2195672548.jpg', '2014-09-03', '147');
INSERT INTO `t_hot_movie` VALUES ('11026735', '超能陆战队', 'http://movie.douban.com/subject/11026735/', '8.7', '/喜剧/动作/科幻/动画/冒险', ' 英语', 'p2224568669.jpg', '2014-11-07', '102');
INSERT INTO `t_hot_movie` VALUES ('11443316', '龙之谷：破晓奇兵', 'http://movie.douban.com/subject/11443316/', '7.4', '/爱情/动画/奇幻/冒险', ' 汉语普通话 / 粤语', 'p2191308495.jpg', '2014-07-31', '88');
INSERT INTO `t_hot_movie` VALUES ('11540651', '许三观', 'http://movie.douban.com/subject/11540651/', '7.1', '/剧情/家庭', ' 韩语', 'p2216003356.jpg', '2015-01-14', '124');
INSERT INTO `t_hot_movie` VALUES ('11584019', '海洋之歌', 'http://movie.douban.com/subject/11584019/', '8.9', '/剧情/动画/奇幻', ' 英语 / 爱尔兰语 / 苏格兰盖尔语', 'p2233260210.jpg', '2014-12-10', '93');
INSERT INTO `t_hot_movie` VALUES ('11610281', '敢死队3', 'http://movie.douban.com/subject/11610281/', '6.6', '/动作/惊悚/冒险', ' 英语', 'p2196328516.jpg', '2014-08-15', '126');
INSERT INTO `t_hot_movie` VALUES ('11810348', '马达加斯加的企鹅', 'http://movie.douban.com/subject/11810348/', '7.4', '/喜剧/动画/冒险', ' 英语 / 汉语普通话 / 意大利语', 'p2208592166.jpg', '2014-11-26', '92');
INSERT INTO `t_hot_movie` VALUES ('12012475', '行过死荫之地', 'http://movie.douban.com/subject/12012475/', '6.3', '/剧情/悬疑/犯罪', ' 英语', 'p2185337913.jpg', '2014-09-18', '113');
INSERT INTO `t_hot_movie` VALUES ('19897541', '机动战士高达 THE ORIGIN I 青瞳的卡斯巴尔', 'http://movie.douban.com/subject/19897541/', '9.3', '/剧情/动画', ' 日语', 'p2212678557.jpg', '2015-02-28', '63');
INSERT INTO `t_hot_movie` VALUES ('20253940', '白幽灵传奇之绝命逃亡', 'http://movie.douban.com/subject/20253940/', '4', '/动作/古装', ' 英语', 'p2231804283.jpg', '2014-09-26', '100');
INSERT INTO `t_hot_movie` VALUES ('20275845', '新年行动', 'http://movie.douban.com/subject/20275845/', '6.7', '/喜剧/动作/爱情/犯罪', ' 印地语', 'p2225665357.jpg', '2014-10-24', '125');
INSERT INTO `t_hot_movie` VALUES ('20277433', '焦点', 'http://movie.douban.com/subject/20277433/', '6.4', '/剧情/喜剧/犯罪', ' 英语', 'p2228702598.jpg', '2015-02-27', '105');
INSERT INTO `t_hot_movie` VALUES ('20277632', '飓风营救3', 'http://movie.douban.com/subject/20277632/', '6.2', '/动作/惊悚/犯罪', ' 英语 / 俄语', 'p2224368429.jpg', '2015-01-21', '109');
INSERT INTO `t_hot_movie` VALUES ('20278806', '永远十六岁', 'http://movie.douban.com/subject/20278806/', '6.2', '/喜剧', ' 英语', 'p2196308777.jpg', '2014-09-26', '99');
INSERT INTO `t_hot_movie` VALUES ('20280040', '黑衣女人2：死亡天使', 'http://movie.douban.com/subject/20280040/', '4.7', '/剧情/惊悚/恐怖', ' 英语', 'p2209715454.jpg', '2014-12-30', '98');
INSERT INTO `t_hot_movie` VALUES ('20283482', '生命之书', 'http://movie.douban.com/subject/20283482/', '7.6', '/喜剧/爱情/动画/奇幻/冒险', ' 英语', 'p2185408796.jpg', '2014-10-17', '95');
INSERT INTO `t_hot_movie` VALUES ('20388974', '最后的骑士', 'http://movie.douban.com/subject/20388974/', '5.5', '/动作/冒险', ' 英语', 'p2230783816.jpg', '2015-04-03', '0');
INSERT INTO `t_hot_movie` VALUES ('20436359', '独自夜归的女孩', 'http://movie.douban.com/subject/20436359/', '6.4', '/惊悚/恐怖', ' 波斯语 Persian', 'p2211171273.jpg', '2014-11-21', '90');
INSERT INTO `t_hot_movie` VALUES ('20438962', '鸟人', 'http://movie.douban.com/subject/20438962/', '7.9', '/剧情/奇幻', ' 英语', 'p2203838902.jpg', '2014-11-14', '119');
INSERT INTO `t_hot_movie` VALUES ('20453001', '勃艮第公爵', 'http://movie.douban.com/subject/20453001/', '6', '/剧情', ' 英语', 'p2164086501.jpg', '2015-02-20', '104');
INSERT INTO `t_hot_movie` VALUES ('20497905', '泽西男孩', 'http://movie.douban.com/subject/20497905/', '7.4', '/剧情/音乐/歌舞/传记', ' 英语', 'p2197973368.jpg', '2014-06-20', '134');
INSERT INTO `t_hot_movie` VALUES ('20513061', '京城81号', 'http://movie.douban.com/subject/20513061/', '5', '/剧情/悬疑/惊悚', ' 汉语普通话', 'p2187047385.jpg', '2014-07-18', '90');
INSERT INTO `t_hot_movie` VALUES ('21263666', '美国狙击手', 'http://movie.douban.com/subject/21263666/', '7.3', '/动作/传记/战争', ' 英语 / 阿拉伯语', 'p2203481530.jpg', '2015-01-16', '132');
INSERT INTO `t_hot_movie` VALUES ('21318488', '消失的爱人', 'http://movie.douban.com/subject/21318488/', '8.7', '/剧情/悬疑/惊悚', ' 英语', 'p2221768894.jpg', '2014-10-03', '149');
INSERT INTO `t_hot_movie` VALUES ('21324289', '一夜情未了', 'http://movie.douban.com/subject/21324289/', '6.1', '/喜剧/爱情', ' 英语', 'p2195060816.jpg', '2014-09-26', '86');
INSERT INTO `t_hot_movie` VALUES ('21324293', '性爱录像带', 'http://movie.douban.com/subject/21324293/', '5.4', '/喜剧', ' 英语', 'p2189904552.jpg', '2014-07-18', '94');
INSERT INTO `t_hot_movie` VALUES ('21345845', '涉足荒野', 'http://movie.douban.com/subject/21345845/', '7.5', '/剧情/传记', ' 英语', 'p2217481599.jpg', '2014-12-05', '115');
INSERT INTO `t_hot_movie` VALUES ('21349345', '移动迷宫', 'http://movie.douban.com/subject/21349345/', '6.8', '/动作/科幻/悬疑/惊悚', ' 英语', 'p2201485029.jpg', '2014-09-19', '113');
INSERT INTO `t_hot_movie` VALUES ('21349734', '博物馆奇妙夜3', 'http://movie.douban.com/subject/21349734/', '7', '/喜剧/奇幻/冒险', ' 英语 / 匈奴语', 'p2219665256.jpg', '2014-12-19', '98');
INSERT INTO `t_hot_movie` VALUES ('21350559', '盒子怪', 'http://movie.douban.com/subject/21350559/', '7.6', '/动画/儿童', ' 英语', 'p2195254744.jpg', '2014-09-26', '96');
INSERT INTO `t_hot_movie` VALUES ('21359619', '单身男女2', 'http://movie.douban.com/subject/21359619/', '5.3', '/喜剧/爱情', ' 汉语普通话 / 粤语', 'p2209656483.jpg', '2014-11-13', '113');
INSERT INTO `t_hot_movie` VALUES ('21937450', '国际市场', 'http://movie.douban.com/subject/21937450/', '8.2', '/剧情/家庭', ' 韩语 / 英语 / 德语', 'p2210568759.jpg', '2014-12-17', '126');
INSERT INTO `t_hot_movie` VALUES ('21965450', '喧嚣贵族', 'http://movie.douban.com/subject/21965450/', '5.9', '/剧情/惊悚', ' 英语', 'p2183121847.jpg', '2014-09-19', '106');
INSERT INTO `t_hot_movie` VALUES ('21965464', '圣人文森特', 'http://movie.douban.com/subject/21965464/', '7.6', '/剧情/喜剧', ' 英语 / 西班牙语', 'p2204911839.jpg', '2014-10-24', '102');
INSERT INTO `t_hot_movie` VALUES ('21977761', '暗夜逐仇', 'http://movie.douban.com/subject/21977761/', '7', '/剧情/动作/悬疑/惊悚/犯罪', ' 英语', 'p2233767512.jpg', '2015-03-13', '114');
INSERT INTO `t_hot_movie` VALUES ('22508259', '恶老板2', 'http://movie.douban.com/subject/22508259/', '6', '/喜剧', ' 英语', 'p2206929127.jpg', '2014-11-26', '108');
INSERT INTO `t_hot_movie` VALUES ('22519250', '爱的就是你', 'http://movie.douban.com/subject/22519250/', '7.2', '/爱情/科幻/惊悚', ' 英语', 'p2191637131.jpg', '2014-08-08', '91');
INSERT INTO `t_hot_movie` VALUES ('22637441', '不死鸟', 'http://movie.douban.com/subject/22637441/', '7.2', '/剧情/历史', ' 德语 / 英语', 'p2224655337.jpg', '2014-09-25', '98');
INSERT INTO `t_hot_movie` VALUES ('22735426', '怪谈', 'http://movie.douban.com/subject/22735426/', '4.5', '/惊悚', ' 汉语普通话', 'p2223454795.jpg', '2015-01-23', '89');
INSERT INTO `t_hot_movie` VALUES ('23010202', '东京暴族', 'http://movie.douban.com/subject/23010202/', '5.5', '/喜剧/动作/歌舞', ' 日语', 'p2242355334.jpg', '2014-08-30', '116');
INSERT INTO `t_hot_movie` VALUES ('23035067', '追债大乱斗', 'http://movie.douban.com/subject/23035067/', '6.2', '/喜剧/动作/惊悚', ' 英语', 'p2202823389.jpg', '2014-10-07', '94');
INSERT INTO `t_hot_movie` VALUES ('23255228', '甜蜜地狱之家', 'http://movie.douban.com/subject/23255228/', '6.3', '/剧情/喜剧', ' 英语', 'p2225605243.jpg', '2015-02-03', '98');
INSERT INTO `t_hot_movie` VALUES ('23331914', '狂怒', 'http://movie.douban.com/subject/23331914/', '7.7', '/剧情/动作/战争', ' 英语 / 德语 / 西班牙语', 'p2209858994.jpg', '2014-10-17', '132');
INSERT INTO `t_hot_movie` VALUES ('24307637', '江南1970', 'http://movie.douban.com/subject/24307637/', '6.1', '/剧情/动作', ' 韩语', 'p2221878905.jpg', '2015-01-21', '135');
INSERT INTO `t_hot_movie` VALUES ('24397586', '超级无敌羊咩咩', 'http://movie.douban.com/subject/24397586/', '8.6', '/喜剧/动画/冒险', ' 英语', 'p2225986472.jpg', '2015-02-06', '85');
INSERT INTO `t_hot_movie` VALUES ('24404677', '超体', 'http://movie.douban.com/subject/24404677/', '7', '/动作/科幻', ' 英语 / 韩语 / 法语 / 汉语普通话', 'p2201909284.jpg', '2014-08-06', '89');
INSERT INTO `t_hot_movie` VALUES ('24405378', '王牌特工：特工学院', 'http://movie.douban.com/subject/24405378/', '8.6', '/喜剧/动作/犯罪/冒险', ' 英语 / 阿拉伯语 / 瑞典语', 'p2231932406.jpg', '2015-01-29', '125');
INSERT INTO `t_hot_movie` VALUES ('24470523', '魔力月光', 'http://movie.douban.com/subject/24470523/', '7', '/喜剧', ' 英语', 'p2188188228.jpg', '2014-07-25', '97');
INSERT INTO `t_hot_movie` VALUES ('24522915', '盂兰神功', 'http://movie.douban.com/subject/24522915/', '5.4', '/惊悚/恐怖', ' 粤语', 'p2189101618.jpg', '2014-07-10', '82');
INSERT INTO `t_hot_movie` VALUES ('24523811', '生活伴侣', 'http://movie.douban.com/subject/24523811/', '6.6', '/喜剧', ' 英语', 'p2204213433.jpg', '2014-11-06', '95');
INSERT INTO `t_hot_movie` VALUES ('24530939', '骇客交锋', 'http://movie.douban.com/subject/24530939/', '3.8', '/剧情/动作/悬疑/惊悚/犯罪', ' 英语 / 汉语普通话 / 粤语 / 西班牙语 / 印尼语', 'p2224888795.jpg', '2015-01-16', '133');
INSERT INTO `t_hot_movie` VALUES ('24532099', '窈窕舞妓', 'http://movie.douban.com/subject/24532099/', '6.6', '/喜剧', ' 日语', 'p2179887746.jpg', '2014-09-13', '135');
INSERT INTO `t_hot_movie` VALUES ('24695277', '一个人的武林', 'http://movie.douban.com/subject/24695277/', '6.2', '/动作/惊悚', ' 汉语普通话 / 粤语', 'p2206992257.jpg', '2014-10-31', '100');
INSERT INTO `t_hot_movie` VALUES ('24695390', '我们假期做了什么', 'http://movie.douban.com/subject/24695390/', '7.8', '/剧情/喜剧', ' 英语', 'p2187153902.jpg', '2014-09-26', '95');
INSERT INTO `t_hot_movie` VALUES ('24696717', '食女', 'http://movie.douban.com/subject/24696717/', '5.9', '/恐怖', ' 日语', 'p2188068774.jpg', '2014-08-23', '93');
INSERT INTO `t_hot_movie` VALUES ('24697552', '美丽谎言', 'http://movie.douban.com/subject/24697552/', '7.7', '/剧情', ' 英语', 'p2217227552.jpg', '2014-10-03', '110');
INSERT INTO `t_hot_movie` VALUES ('24702267', '警察游戏', 'http://movie.douban.com/subject/24702267/', '6.4', '/喜剧/动作', ' 英语', 'p2208475922.jpg', '2014-08-13', '104');
INSERT INTO `t_hot_movie` VALUES ('24706561', '爱很怪', 'http://movie.douban.com/subject/24706561/', '7.9', '/剧情/爱情/同性', ' 英语 / 俄语', 'p2188695287.jpg', '2014-08-22', '98');
INSERT INTO `t_hot_movie` VALUES ('24722875', '海雾', 'http://movie.douban.com/subject/24722875/', '6.9', '/剧情/爱情/惊悚', ' 韩语', 'p2190930188.jpg', '2014-08-13', '111');
INSERT INTO `t_hot_movie` VALUES ('24723061', '魁拔Ⅲ战神崛起', 'http://movie.douban.com/subject/24723061/', '8', '/动作/动画/奇幻/冒险', ' 汉语普通话', 'p2202613921.jpg', '2014-10-01', '90');
INSERT INTO `t_hot_movie` VALUES ('24742719', '至暴之年', 'http://movie.douban.com/subject/24742719/', '6.8', '/剧情/动作/惊悚/犯罪', ' 英语 / 西班牙语', 'p2213497829.jpg', '2014-12-31', '125');
INSERT INTO `t_hot_movie` VALUES ('24743119', 'X射线营地', 'http://movie.douban.com/subject/24743119/', '7', '/剧情', ' 英语', 'p2196486172.jpg', '2014-10-17', '117');
INSERT INTO `t_hot_movie` VALUES ('24743709', '北京纽约', 'http://movie.douban.com/subject/24743709/', '3.8', '/剧情/爱情', ' 汉语普通话 / 英语', 'p2230505723.jpg', '2015-03-06', '107');
INSERT INTO `t_hot_movie` VALUES ('24743712', '有种你爱我', 'http://movie.douban.com/subject/24743712/', '4.9', '/喜剧/爱情', ' 汉语普通话', 'p2225669293.jpg', '2015-02-06', '105');
INSERT INTO `t_hot_movie` VALUES ('24745500', '绣春刀', 'http://movie.douban.com/subject/24745500/', '7.4', '/动作/爱情/武侠/古装', ' 汉语普通话 / 蒙古语', 'p2194066391.jpg', '2014-08-07', '107');
INSERT INTO `t_hot_movie` VALUES ('24746974', '僵尸来袭', 'http://movie.douban.com/subject/24746974/', '6.4', '/动作/恐怖', ' 英语', 'p2236430938.jpg', '2015-02-13', '98');
INSERT INTO `t_hot_movie` VALUES ('24750968', '早熟', 'http://movie.douban.com/subject/24750968/', '5.7', '/喜剧', ' 英语', 'p2190000058.jpg', '2014-07-24', '93');
INSERT INTO `t_hot_movie` VALUES ('24751757', '微爱之渐入佳境', 'http://movie.douban.com/subject/24751757/', '4.9', '/喜剧/爱情', ' 汉语普通话', 'p2213796763.jpg', '2014-12-24', '98');
INSERT INTO `t_hot_movie` VALUES ('24756658', '神之一手', 'http://movie.douban.com/subject/24756658/', '6.5', '/动作/犯罪', ' 韩语', 'p2182978810.jpg', '2014-07-03', '118');
INSERT INTO `t_hot_movie` VALUES ('24815950', '万物理论', 'http://movie.douban.com/subject/24815950/', '7.9', '/剧情/爱情/传记', ' 英语 / 法语 / 拉丁语', 'p2210832820.jpg', '2015-01-01', '123');
INSERT INTO `t_hot_movie` VALUES ('24844032', '米其林情缘', 'http://movie.douban.com/subject/24844032/', '7', '/剧情', ' 英语 / 法语 / 北印度语', 'p2211822297.jpg', '2014-08-08', '122');
INSERT INTO `t_hot_movie` VALUES ('24845115', '浪客剑心：京都大火篇', 'http://movie.douban.com/subject/24845115/', '7.7', '/动作/古装', ' 日语', 'p2184443605.jpg', '2014-08-01', '138');
INSERT INTO `t_hot_movie` VALUES ('24845116', '浪客剑心：传说的完结篇', 'http://movie.douban.com/subject/24845116/', '7.7', '/剧情/动作', ' 日语', 'p2194586665.jpg', '2014-09-13', '134');
INSERT INTO `t_hot_movie` VALUES ('24847340', '小时代3：刺金时代', 'http://movie.douban.com/subject/24847340/', '4.3', '/剧情/爱情', ' 汉语普通话 / 英语', 'p2189080319.jpg', '2014-07-17', '126');
INSERT INTO `t_hot_movie` VALUES ('24852726', '夺命金字塔', 'http://movie.douban.com/subject/24852726/', '4.9', '/恐怖', ' 英语', 'p2240807169.jpg', '2014-12-05', '89');
INSERT INTO `t_hot_movie` VALUES ('24869824', '只要你说你爱我', 'http://movie.douban.com/subject/24869824/', '5', '/爱情', ' 日语', 'p2176020740.jpg', '2014-07-12', '103');
INSERT INTO `t_hot_movie` VALUES ('24872023', '贵族大盗', 'http://movie.douban.com/subject/24872023/', '5.2', '/喜剧/动作', ' 英语', 'p2233840624.jpg', '2015-01-23', '107');
INSERT INTO `t_hot_movie` VALUES ('24872861', '圆桌', 'http://movie.douban.com/subject/24872861/', '7', '/喜剧', ' 日语', 'p2174641458.jpg', '2014-06-21', '113');
INSERT INTO `t_hot_movie` VALUES ('24879819', '海盗', 'http://movie.douban.com/subject/24879819/', '6.4', '/动作/冒险', ' 韩语 / 汉语普通话', 'p2188692873.jpg', '2014-08-06', '130');
INSERT INTO `t_hot_movie` VALUES ('24879858', '分手大师', 'http://movie.douban.com/subject/24879858/', '5.2', '/剧情/喜剧/爱情', ' 汉语普通话 / 克里奥尔语 / 英语 / 日语 / 上海话', 'p2188112867.jpg', '2014-06-27', '116');
INSERT INTO `t_hot_movie` VALUES ('24882719', '最好的我', 'http://movie.douban.com/subject/24882719/', '6.6', '/剧情/爱情', ' 英语', 'p2189902872.jpg', '2014-10-17', '117');
INSERT INTO `t_hot_movie` VALUES ('24885205', '在我消失前', 'http://movie.douban.com/subject/24885205/', '7.3', '/剧情', ' 英语', 'p2208081193.jpg', '2014-08-28', '98');
INSERT INTO `t_hot_movie` VALUES ('24888079', '好命先生', 'http://movie.douban.com/subject/24888079/', '3.9', '/喜剧/爱情', ' 汉语普通话', 'p2193692716.jpg', '2014-08-15', '91');
INSERT INTO `t_hot_movie` VALUES ('25444447', '黄飞鸿之英雄有梦', 'http://movie.douban.com/subject/25444447/', '5.3', '/剧情/动作/爱情/武侠', ' 汉语普通话 / 粤语', 'p2209287190.jpg', '2014-11-21', '131');
INSERT INTO `t_hot_movie` VALUES ('25709273', '痞子英雄2：黎明升起', 'http://movie.douban.com/subject/25709273/', '5.4', '/剧情/动作/犯罪', ' 汉语普通话', 'p2199416829.jpg', '2014-10-02', '126');
INSERT INTO `t_hot_movie` VALUES ('25713408', '一生一世', 'http://movie.douban.com/subject/25713408/', '5.1', '/爱情', ' 汉语普通话 / 英语 / 粤语 / 上海话', 'p2196449817.jpg', '2014-09-04', '106');
INSERT INTO `t_hot_movie` VALUES ('25713420', '钟馗伏魔：雪妖魔灵', 'http://movie.douban.com/subject/25713420/', '4.2', '/动作/爱情/奇幻', ' 汉语普通话', 'p2224452276.jpg', '2015-02-19', '118');
INSERT INTO `t_hot_movie` VALUES ('25717233', '心花路放', 'http://movie.douban.com/subject/25717233/', '7', '/喜剧/爱情', ' 汉语普通话 / 粤语 / 云南方言', 'p2199268153.jpg', '2014-09-06', '118');
INSERT INTO `t_hot_movie` VALUES ('25721544', '不速之客', 'http://movie.douban.com/subject/25721544/', '6.2', '/动作/悬疑/惊悚', ' 英语', 'p2196559082.jpg', '2014-09-17', '99');
INSERT INTO `t_hot_movie` VALUES ('25722262', '男人女人和孩子', 'http://movie.douban.com/subject/25722262/', '6.7', '/剧情', ' 英语', 'p2198689652.jpg', '2014-10-17', '119');
INSERT INTO `t_hot_movie` VALUES ('25723095', '举报者', 'http://movie.douban.com/subject/25723095/', '7.3', '/剧情', ' 韩语', 'p2198331446.jpg', '2014-10-02', '113');
INSERT INTO `t_hot_movie` VALUES ('25725759', '赌棍', 'http://movie.douban.com/subject/25725759/', '6.2', '/剧情', ' 英语', 'p2207098954.jpg', '2014-12-25', '111');
INSERT INTO `t_hot_movie` VALUES ('25728003', '葡萄的眼泪', 'http://movie.douban.com/subject/25728003/', '5.8', '', ' 日语', 'p2191655941.jpg', '2014-10-11', '117');
INSERT INTO `t_hot_movie` VALUES ('25742242', '深夜前的五分钟', 'http://movie.douban.com/subject/25742242/', '5.8', '/爱情/悬疑', ' 汉语普通话', 'p2205357615.jpg', '2014-12-27', '127');
INSERT INTO `t_hot_movie` VALUES ('25743807', '王牌', 'http://movie.douban.com/subject/25743807/', '4.4', '/剧情/悬疑', ' 汉语普通话', 'p2213350249.jpg', '2014-12-31', '90');
INSERT INTO `t_hot_movie` VALUES ('25743833', '不能说的夏天', 'http://movie.douban.com/subject/25743833/', '6.9', '/剧情', ' 汉语普通话', 'p2206597790.jpg', '2014-10-03', '110');
INSERT INTO `t_hot_movie` VALUES ('25745651', '妈咪', 'http://movie.douban.com/subject/25745651/', '8.1', '/剧情', ' 法语', 'p2204888387.jpg', '2014-05-22', '140');
INSERT INTO `t_hot_movie` VALUES ('25746414', '暴走神探', 'http://movie.douban.com/subject/25746414/', '5.3', '/喜剧/动作/爱情/悬疑', ' 汉语普通话 / 英语 / 上海话', 'p2219749857.jpg', '2015-01-16', '123');
INSERT INTO `t_hot_movie` VALUES ('25747016', '惊天绑架团', 'http://movie.douban.com/subject/25747016/', '6', '/剧情/动作/惊悚/犯罪', ' 英语', 'p2222357504.jpg', '2015-03-26', '0');
INSERT INTO `t_hot_movie` VALUES ('25747028', '扑通扑通我的人生', 'http://movie.douban.com/subject/25747028/', '6.9', '/剧情/家庭', ' 韩语', 'p2230880388.jpg', '2014-09-03', '117');
INSERT INTO `t_hot_movie` VALUES ('25747030', '慢放镜头', 'http://movie.douban.com/subject/25747030/', '6.6', '/剧情', ' 韩语', 'p2196512978.jpg', '2014-10-02', '106');
INSERT INTO `t_hot_movie` VALUES ('25747610', '热血之路', 'http://movie.douban.com/subject/25747610/', '5.6', '/剧情', ' 日语', 'p2184924908.jpg', '2014-08-16', '119');
INSERT INTO `t_hot_movie` VALUES ('25749871', '占水师', 'http://movie.douban.com/subject/25749871/', '6.7', '/剧情/战争', ' 英语 / 土耳其语 / 希腊语 / 俄语', 'p2214814834.jpg', '2015-04-24', '111');
INSERT INTO `t_hot_movie` VALUES ('25750969', '夜行者', 'http://movie.douban.com/subject/25750969/', '8.2', '/剧情/惊悚/犯罪', ' 英语', 'p2203693875.jpg', '2014-10-31', '117');
INSERT INTO `t_hot_movie` VALUES ('25753166', '等一个人咖啡', 'http://movie.douban.com/subject/25753166/', '5.8', '/喜剧/爱情', ' 汉语普通话', 'p2204562870.jpg', '2014-08-15', '119');
INSERT INTO `t_hot_movie` VALUES ('25755608', '新女友', 'http://movie.douban.com/subject/25755608/', '7.5', '/剧情/悬疑/同性', ' 法语', 'p2199678535.jpg', '2014-11-05', '107');
INSERT INTO `t_hot_movie` VALUES ('25755645', '老男孩猛龙过江', 'http://movie.douban.com/subject/25755645/', '5.8', '/剧情/喜剧', ' 汉语普通话 / 英语 / 韩语 / 山东方言 / 意大利语', 'p2189861035.jpg', '2014-07-10', '114');
INSERT INTO `t_hot_movie` VALUES ('25764502', '热浴盆时光机2', 'http://movie.douban.com/subject/25764502/', '4.4', '/喜剧', ' 英语', 'p2223809646.jpg', '2015-02-20', '93');
INSERT INTO `t_hot_movie` VALUES ('25767564', '四非', 'http://movie.douban.com/subject/25767564/', '4.4', '/悬疑/惊悚', ' 粤语', 'p2230109155.jpg', '2015-03-19', '103');
INSERT INTO `t_hot_movie` VALUES ('25767565', '德水里五兄弟', 'http://movie.douban.com/subject/25767565/', '6.1', '/喜剧/惊悚', ' 韩语', 'p2210007520.jpg', '2014-12-04', '102');
INSERT INTO `t_hot_movie` VALUES ('25767853', '四个月亮', 'http://movie.douban.com/subject/25767853/', '7.7', '/剧情/同性', ' 西班牙语', 'p2193473376.jpg', '2014-11-21', '110');
INSERT INTO `t_hot_movie` VALUES ('25769362', '哆啦A梦：伴我同行', 'http://movie.douban.com/subject/25769362/', '8.6', '/剧情/动画/家庭', ' 日语', 'p2209761319.jpg', '2014-08-08', '95');
INSERT INTO `t_hot_movie` VALUES ('25773294', '侠僧探案传奇之白马镖局', 'http://movie.douban.com/subject/25773294/', '7', '/悬疑/古装', ' 汉语普通话', 'p2222865974.jpg', '2015-01-14', '90');
INSERT INTO `t_hot_movie` VALUES ('25773932', '爆裂鼓手', 'http://movie.douban.com/subject/25773932/', '8.6', '/剧情/音乐', ' 英语', 'p2220776342.jpg', '2014-10-10', '107');
INSERT INTO `t_hot_movie` VALUES ('25774050', '寄生兽', 'http://movie.douban.com/subject/25774050/', '7.5', '/科幻/恐怖', ' 日语', 'p2225188257.jpg', '2014-11-29', '109');
INSERT INTO `t_hot_movie` VALUES ('25775571', '人类清除计划2：无政府状态', 'http://movie.douban.com/subject/25775571/', '6.2', '/动作/惊悚/恐怖', ' 英语', 'p2205028302.jpg', '2014-07-18', '103');
INSERT INTO `t_hot_movie` VALUES ('25777330', '闺蜜', 'http://movie.douban.com/subject/25777330/', '5.5', '/喜剧/爱情', ' 汉语普通话', 'p2188986448.jpg', '2014-07-30', '118');
INSERT INTO `t_hot_movie` VALUES ('25779218', '匆匆那年', 'http://movie.douban.com/subject/25779218/', '5.3', '/爱情', ' 汉语普通话', 'p2212273919.jpg', '2014-12-05', '119');
INSERT INTO `t_hot_movie` VALUES ('25780555', '隔壁的男孩', 'http://movie.douban.com/subject/25780555/', '4.9', '/惊悚', ' 英语', 'p2207057658.jpg', '2015-01-23', '91');
INSERT INTO `t_hot_movie` VALUES ('25780578', '好朋友们', 'http://movie.douban.com/subject/25780578/', '7.5', '/剧情/犯罪', ' 韩语', 'p2187159568.jpg', '2014-07-10', '114');
INSERT INTO `t_hot_movie` VALUES ('25783914', '舞出我人生5', 'http://movie.douban.com/subject/25783914/', '6.1', '/剧情/爱情/音乐', ' 英语', 'p2208462295.jpg', '2014-08-08', '112');
INSERT INTO `t_hot_movie` VALUES ('25788954', '鞋匠人生', 'http://movie.douban.com/subject/25788954/', '6.3', '/剧情/喜剧/奇幻', ' 英语', 'p2229417955.jpg', '2015-03-13', '99');
INSERT INTO `t_hot_movie` VALUES ('25789352', '触不可及', 'http://movie.douban.com/subject/25789352/', '5.2', '/爱情/战争', ' 汉语普通话', 'p2199637691.jpg', '2014-09-19', '100');
INSERT INTO `t_hot_movie` VALUES ('25789453', '纯真时代', 'http://movie.douban.com/subject/25789453/', '5.4', '/剧情/爱情/历史', ' 韩语', 'p2231548079.jpg', '2015-03-05', '113');
INSERT INTO `t_hot_movie` VALUES ('25792690', '反贪风暴', 'http://movie.douban.com/subject/25792690/', '5.4', '/剧情/动作/犯罪', ' 汉语普通话 / 粤语', 'p2195270848.jpg', '2014-07-04', '93');
INSERT INTO `t_hot_movie` VALUES ('25795311', '不可思议的海岸物语', 'http://movie.douban.com/subject/25795311/', '6.6', '/剧情', ' 日语', 'p2191608182.jpg', '2014-10-11', '117');
INSERT INTO `t_hot_movie` VALUES ('25798131', '疾速追杀', 'http://movie.douban.com/subject/25798131/', '6.8', '/动作/惊悚', ' 英语', 'p2210801408.jpg', '2014-10-24', '101');
INSERT INTO `t_hot_movie` VALUES ('25798222', '亲爱的', 'http://movie.douban.com/subject/25798222/', '8.4', '/剧情/家庭', ' 汉语普通话 / 安徽方言 / 粤语 / 陕西方言', 'p2199507156.jpg', '2015-01-22', '130');
INSERT INTO `t_hot_movie` VALUES ('25798854', '真幌站前狂想曲', 'http://movie.douban.com/subject/25798854/', '7.7', '/剧情', ' 日语', 'p2194199028.jpg', '2014-10-18', '124');
INSERT INTO `t_hot_movie` VALUES ('25800269', '尚衣院', 'http://movie.douban.com/subject/25800269/', '6.7', '/剧情', ' 韩语', 'p2214438172.jpg', '2014-12-24', '127');
INSERT INTO `t_hot_movie` VALUES ('25805054', '十万个冷笑话', 'http://movie.douban.com/subject/25805054/', '6.4', '/喜剧/动画/奇幻', ' 汉语普通话', 'p2217523448.jpg', '2014-12-31', '100');
INSERT INTO `t_hot_movie` VALUES ('25805741', '后会无期', 'http://movie.douban.com/subject/25805741/', '7.2', '/剧情/喜剧/爱情', ' 汉语普通话 / 手语 / 粤语', 'p2192267510.jpg', '2014-07-24', '104');
INSERT INTO `t_hot_movie` VALUES ('25810920', '潜龙风云', 'http://movie.douban.com/subject/25810920/', '5.3', '/剧情/爱情/犯罪', ' 汉语普通话 / 粤语', 'p2208594089.jpg', '2014-11-06', '100');
INSERT INTO `t_hot_movie` VALUES ('25812731', '真英雄', 'http://movie.douban.com/subject/25812731/', '7', '/动作', ' 日语', 'p2191600305.jpg', '2014-09-06', '0');
INSERT INTO `t_hot_movie` VALUES ('25812885', '安娜贝尔', 'http://movie.douban.com/subject/25812885/', '5.3', '/恐怖', ' 英语', 'p2203515671.jpg', '2014-10-03', '99');
INSERT INTO `t_hot_movie` VALUES ('25814705', '小森林 夏秋篇', 'http://movie.douban.com/subject/25814705/', '8.9', '/剧情', ' 日语', 'p2221319641.jpg', '2014-08-30', '111');
INSERT INTO `t_hot_movie` VALUES ('25815008', '依然爱丽丝', 'http://movie.douban.com/subject/25815008/', '7.8', '/剧情', ' 英语', 'p2208286457.jpg', '2015-02-20', '99');
INSERT INTO `t_hot_movie` VALUES ('25818840', '小乌龟是如何长大的', 'http://movie.douban.com/subject/25818840/', '7.7', '/喜剧', ' 英语', 'p2219289739.jpg', '2014-12-30', '88');
INSERT INTO `t_hot_movie` VALUES ('25819726', '高手们', 'http://movie.douban.com/subject/25819726/', '6.2', '/动作/犯罪', ' 韩语', 'p2215157469.jpg', '2014-12-24', '116');
INSERT INTO `t_hot_movie` VALUES ('25820655', '小野寺姐弟', 'http://movie.douban.com/subject/25820655/', '7.5', '/喜剧/家庭', ' 日语', 'p2195542089.jpg', '2014-10-25', '114');
INSERT INTO `t_hot_movie` VALUES ('25821124', '地下墓穴', 'http://movie.douban.com/subject/25821124/', '6.4', '/惊悚/恐怖', ' 英语 / 法语', 'p2197368321.jpg', '2014-08-29', '93');
INSERT INTO `t_hot_movie` VALUES ('25823531', '幻世追踪', 'http://movie.douban.com/subject/25823531/', '4.4', '/动作/科幻/惊悚/冒险', ' 英语', 'p2230746830.jpg', '2015-01-16', '96');
INSERT INTO `t_hot_movie` VALUES ('25824741', '男人不可以穷', 'http://movie.douban.com/subject/25824741/', '6.1', '/剧情/喜剧/爱情', ' 汉语普通话 / 粤语', 'p2216942715.jpg', '2014-09-18', '104');
INSERT INTO `t_hot_movie` VALUES ('25824852', '不再说分手', 'http://movie.douban.com/subject/25824852/', '5.6', '/爱情', ' 汉语普通话 / 粤语', 'p2191689837.jpg', '2014-08-01', '105');
INSERT INTO `t_hot_movie` VALUES ('25826239', '伪造者', 'http://movie.douban.com/subject/25826239/', '6', '/剧情/惊悚/犯罪', ' 英语', 'p2230340860.jpg', '2015-04-24', '92');
INSERT INTO `t_hot_movie` VALUES ('25827270', '我的爱我的新娘', 'http://movie.douban.com/subject/25827270/', '6.8', '/喜剧/爱情', ' 韩语', 'p2199061178.jpg', '2014-10-08', '111');
INSERT INTO `t_hot_movie` VALUES ('25828521', '今天的恋爱', 'http://movie.douban.com/subject/25828521/', '5.9', '/喜剧/爱情', ' 韩语', 'p2217374047.jpg', '2015-01-14', '121');
INSERT INTO `t_hot_movie` VALUES ('25831308', '露水红颜', 'http://movie.douban.com/subject/25831308/', '4.8', '/爱情', ' 汉语普通话 / 英语', 'p2205519937.jpg', '2014-11-07', '98');
INSERT INTO `t_hot_movie` VALUES ('25831326', '临时同居', 'http://movie.douban.com/subject/25831326/', '5', '/喜剧/爱情', ' 汉语普通话 / 粤语', 'p2195224239.jpg', '2014-08-21', '100');
INSERT INTO `t_hot_movie` VALUES ('25831828', '回光奏鸣曲', 'http://movie.douban.com/subject/25831828/', '6.8', '', ' 汉语普通话', 'p2199361304.jpg', '2014-10-03', '94');
INSERT INTO `t_hot_movie` VALUES ('25834457', '偷狗的完美方法', 'http://movie.douban.com/subject/25834457/', '7.3', '/剧情/家庭', ' 韩语', 'p2214375972.jpg', '2014-12-31', '110');
INSERT INTO `t_hot_movie` VALUES ('25834473', '我的早更女友', 'http://movie.douban.com/subject/25834473/', '5.5', '/喜剧/爱情', ' 汉语普通话 / 英语', 'p2214812972.jpg', '2014-12-12', '98');
INSERT INTO `t_hot_movie` VALUES ('25835293', '失孤', 'http://movie.douban.com/subject/25835293/', '6.2', '/剧情', ' 汉语普通话', 'p2231791943.jpg', '2015-03-26', '108');
INSERT INTO `t_hot_movie` VALUES ('25835306', '狱前教育', 'http://movie.douban.com/subject/25835306/', '6.6', '/喜剧', ' 英语', 'p2235324752.jpg', '2015-03-27', '100');
INSERT INTO `t_hot_movie` VALUES ('25836143', '蛋糕', 'http://movie.douban.com/subject/25836143/', '6.6', '/剧情', ' 英语', 'p2215497076.jpg', '2015-02-20', '104');
INSERT INTO `t_hot_movie` VALUES ('25843352', '如此美好', 'http://movie.douban.com/subject/25843352/', '7.1', '/喜剧/爱情', ' 韩语', 'p2220697023.jpg', '2015-02-05', '123');
INSERT INTO `t_hot_movie` VALUES ('25845399', '幸运情人草', 'http://movie.douban.com/subject/25845399/', '5.7', '/爱情', ' 日语', 'p2197749466.jpg', '2014-11-01', '119');
INSERT INTO `t_hot_movie` VALUES ('25853073', '近距离恋爱', 'http://movie.douban.com/subject/25853073/', '5.7', '/爱情', ' 日语', 'p2207808539.jpg', '2014-10-11', '118');
INSERT INTO `t_hot_movie` VALUES ('25853729', '感受大海的时刻', 'http://movie.douban.com/subject/25853729/', '5.8', '/剧情/爱情/情色', ' 日语', 'p2183058806.jpg', '2014-09-13', '118');
INSERT INTO `t_hot_movie` VALUES ('25856577', '朝我心脏开枪', 'http://movie.douban.com/subject/25856577/', '7.4', '/剧情', ' 韩语', 'p2221281086.jpg', '2015-01-28', '102');
INSERT INTO `t_hot_movie` VALUES ('25858759', '有一个地方只有我们知道', 'http://movie.douban.com/subject/25858759/', '5', '/爱情', ' 汉语普通话 / 英语', 'p2223068290.jpg', '2015-02-10', '109');
INSERT INTO `t_hot_movie` VALUES ('25858785', '澳门风云2', 'http://movie.douban.com/subject/25858785/', '5.9', '/喜剧/动作', ' 粤语 / 汉语普通话 / 泰语 / 四川话 / 英语', 'p2224055583.jpg', '2015-02-19', '110');
INSERT INTO `t_hot_movie` VALUES ('25861680', '迷失课后', 'http://movie.douban.com/subject/25861680/', '6.4', '/剧情', ' 日语', 'p2186124247.jpg', '2014-08-02', '102');
INSERT INTO `t_hot_movie` VALUES ('25870074', '第七谎言', 'http://movie.douban.com/subject/25870074/', '4.2', '/悬疑/犯罪', ' 汉语普通话 / 粤语 / 英语', 'p2233773372.jpg', '2014-10-30', '90');
INSERT INTO `t_hot_movie` VALUES ('25870084', '重返20岁', 'http://movie.douban.com/subject/25870084/', '7.3', '/喜剧/爱情/奇幻', ' 汉语普通话', 'p2219440250.jpg', '2015-01-23', '131');
INSERT INTO `t_hot_movie` VALUES ('25870671', '黎明的沙耶', 'http://movie.douban.com/subject/25870671/', '6.9', '/爱情', ' 日语', 'p2201501453.jpg', '2014-11-08', '114');
INSERT INTO `t_hot_movie` VALUES ('25870716', '零', 'http://movie.douban.com/subject/25870716/', '5', '/恐怖', ' 日语', 'p2190728624.jpg', '2014-09-26', '104');
INSERT INTO `t_hot_movie` VALUES ('25880244', '一路惊喜', 'http://movie.douban.com/subject/25880244/', '5.1', '/喜剧/爱情/家庭', ' 汉语普通话', 'p2223445941.jpg', '2015-02-06', '120');
INSERT INTO `t_hot_movie` VALUES ('25882279', '有一天', 'http://movie.douban.com/subject/25882279/', '7.4', '/剧情/儿童', ' 汉语普通话', 'p2198749463.jpg', '2014-09-10', '92');
INSERT INTO `t_hot_movie` VALUES ('25884416', '麦兜我和我妈妈', 'http://movie.douban.com/subject/25884416/', '8.2', '/喜剧/动画/家庭', ' 汉语普通话 / 粤语', 'p2200039289.jpg', '2014-10-01', '81');
INSERT INTO `t_hot_movie` VALUES ('25884874', '思春期游戏', 'http://movie.douban.com/subject/25884874/', '6', '/剧情', ' 日语', 'p2185026815.jpg', '2014-08-23', '90');
INSERT INTO `t_hot_movie` VALUES ('25886495', '天师斗僵尸', 'http://movie.douban.com/subject/25886495/', '5.3', '/喜剧/恐怖', ' 粤语', 'p2200659828.jpg', '2014-10-16', '0');
INSERT INTO `t_hot_movie` VALUES ('25892603', '沼泽地', 'http://movie.douban.com/subject/25892603/', '7.4', '/动作/犯罪', ' 西班牙语', 'p2193145198.jpg', '2014-09-26', '105');
INSERT INTO `t_hot_movie` VALUES ('25905892', '生活艰难也许快乐', 'http://movie.douban.com/subject/25905892/', '7.6', '/剧情/喜剧', ' 日语', 'p2191915838.jpg', '2014-08-01', '113');
INSERT INTO `t_hot_movie` VALUES ('25908302', '爸爸的假期', 'http://movie.douban.com/subject/25908302/', '4.1', '/喜剧/家庭', ' 汉语普通话 / 韩语 / 英语', 'p2224242410.jpg', '2015-02-19', '108');
INSERT INTO `t_hot_movie` VALUES ('25917239', '浴血华沙', 'http://movie.douban.com/subject/25917239/', '7', '/剧情/战争', ' 波兰语', 'p2199592625.jpg', '2014-09-19', '130');
INSERT INTO `t_hot_movie` VALUES ('25934051', '小姐诱心', 'http://movie.douban.com/subject/25934051/', '6', '/剧情', ' 粤语', 'p2222094843.jpg', '2015-01-15', '100');
INSERT INTO `t_hot_movie` VALUES ('25941964', '爱在初春惊变时', 'http://movie.douban.com/subject/25941964/', '6.9', '/爱情/科幻/恐怖', ' 英语', 'p2229052426.jpg', '2014-09-05', '105');
INSERT INTO `t_hot_movie` VALUES ('25947154', '爱的那点性事', 'http://movie.douban.com/subject/25947154/', '7.3', '/喜剧/爱情', ' 英语', 'p2194250745.jpg', '2014-09-25', '95');
INSERT INTO `t_hot_movie` VALUES ('25965348', '男孩遇见女孩', 'http://movie.douban.com/subject/25965348/', '7.5', '/剧情/爱情', ' 英语', 'p2238790137.jpg', '2015-02-06', '100');
INSERT INTO `t_hot_movie` VALUES ('26011893', '全能囧爸', 'http://movie.douban.com/subject/26011893/', '6.8', '/喜剧', ' 汉语普通话', 'p2230484792.jpg', '2015-03-05', '95');
INSERT INTO `t_hot_movie` VALUES ('26012018', '想飞', 'http://movie.douban.com/subject/26012018/', '6.6', '/战争', ' 汉语普通话', 'p2201468648.jpg', '2014-10-17', '147');
INSERT INTO `t_hot_movie` VALUES ('26012598', '失魂记忆', 'http://movie.douban.com/subject/26012598/', '5.6', '/惊悚/恐怖', ' 英语', 'p2207451038.jpg', '2014-10-21', '90');
INSERT INTO `t_hot_movie` VALUES ('26087473', '名侦探柯南：江户川柯南失踪事件～史上最惨的两天～', 'http://movie.douban.com/subject/26087473/', '6.9', '/剧情/动画', ' 日语', 'p2219202300.jpg', '2014-12-26', '92');
INSERT INTO `t_hot_movie` VALUES ('26088329', '世纪审判', 'http://movie.douban.com/subject/26088329/', '7.7', '/剧情', ' 英语', 'p2222477444.jpg', '2015-01-20', '90');
INSERT INTO `t_hot_movie` VALUES ('26140241', '咱们结婚吧', 'http://movie.douban.com/subject/26140241/', '6.2', '/爱情', ' 汉语普通话 / 意大利语', 'p2232079769.jpg', '2015-04-02', '127');
INSERT INTO `t_hot_movie` VALUES ('26200413', '神', 'http://movie.douban.com/subject/26200413/', '7.2', '/剧情/传记', ' 波兰', 'p2230142960.jpg', '2014-10-10', '116');
INSERT INTO `t_hot_movie` VALUES ('26220731', '熊出没之雪岭熊风', 'http://movie.douban.com/subject/26220731/', '7.3', '/喜剧/动画/家庭/冒险', ' 汉语普通话', 'p2222373886.jpg', '2015-01-30', '96');
INSERT INTO `t_hot_movie` VALUES ('26258872', '小叮当：永无兽传奇', 'http://movie.douban.com/subject/26258872/', '7.8', '/动画/家庭/冒险', ' 英语', 'p2228549339.jpg', '2014-12-19', '76');
INSERT INTO `t_hot_movie` VALUES ('26263437', '神探驾到', 'http://movie.douban.com/subject/26263437/', '4.2', '/喜剧/爱情/悬疑/奇幻', ' 汉语普通话 / 粤语', 'p2221880001.jpg', '2015-02-19', '92');
INSERT INTO `t_hot_movie` VALUES ('26263504', '我很好，谢谢，我爱你', 'http://movie.douban.com/subject/26263504/', '7.3', '/喜剧/爱情', ' 泰语', 'p2223017712.jpg', '2014-12-10', '117');
INSERT INTO `t_hot_movie` VALUES ('26280561', '大喜临门', 'http://movie.douban.com/subject/26280561/', '5.7', '/喜剧', ' 汉语普通话 / 闽南语', 'p2230150006.jpg', '2015-02-18', '104');
INSERT INTO `t_hot_movie` VALUES ('26281899', '解除好友', 'http://movie.douban.com/subject/26281899/', '6', '/惊悚/恐怖', ' 英语', 'p2222034495.jpg', '2015-04-17', '83');
INSERT INTO `t_hot_movie` VALUES ('26299479', '阿提克斯研究所', 'http://movie.douban.com/subject/26299479/', '5.7', '/剧情/惊悚/恐怖', ' 英语', 'p2242146799.jpg', '2015-01-20', '92');
INSERT INTO `t_hot_movie` VALUES ('26301742', '侠僧探案传奇之聚义钱庄', 'http://movie.douban.com/subject/26301742/', '7.3', '/动作/悬疑', ' 汉语普通话', 'p2222868408.jpg', '2015-01-12', '88');
INSERT INTO `t_hot_movie` VALUES ('26301744', '侠僧探案传奇之王陵之谜', 'http://movie.douban.com/subject/26301744/', '7.2', '/动作/悬疑', ' 汉语普通话', 'p2222867663.jpg', '2015-01-13', '90');
INSERT INTO `t_hot_movie` VALUES ('26302610', '侠僧探案传奇之大兴赌坊', 'http://movie.douban.com/subject/26302610/', '7.1', '/动作/悬疑', ' 汉语普通话', 'p2222870018.jpg', '2015-01-15', '90');
INSERT INTO `t_hot_movie` VALUES ('26304159', '侠僧探案传奇之洛阳花会', 'http://movie.douban.com/subject/26304159/', '7.4', '/动作/悬疑', ' 汉语普通话', 'p2222867764.jpg', '2015-01-16', '90');
INSERT INTO `t_hot_movie` VALUES ('26304160', '侠僧探案传奇之醉玲珑', 'http://movie.douban.com/subject/26304160/', '7.3', '/动作/悬疑', ' 汉语普通话', 'p2222868292.jpg', '2015-01-17', '90');
INSERT INTO `t_hot_movie` VALUES ('26304161', '侠僧探案传奇之开封府', 'http://movie.douban.com/subject/26304161/', '7.4', '/动作/悬疑', ' 汉语普通话', 'p2222867853.jpg', '2015-01-19', '90');
INSERT INTO `t_hot_movie` VALUES ('26304162', '侠僧探案传奇之催命符', 'http://movie.douban.com/subject/26304162/', '7.5', '/动作/悬疑', ' 汉语普通话', 'p2222869332.jpg', '2015-01-20', '90');
INSERT INTO `t_hot_movie` VALUES ('26304163', '侠僧探案传奇之大夜叉', 'http://movie.douban.com/subject/26304163/', '7.9', '/动作/悬疑', ' 汉语普通话', 'p2222867925.jpg', '2015-01-22', '90');
INSERT INTO `t_hot_movie` VALUES ('26304164', '侠僧探案传奇之将军府', 'http://movie.douban.com/subject/26304164/', '7.1', '/动作/悬疑', ' 汉语普通话', 'p2222869734.jpg', '2015-01-21', '90');
INSERT INTO `t_hot_movie` VALUES ('26306997', '蝙蝠侠大战罗宾', 'http://movie.douban.com/subject/26306997/', '6.6', '/动画', '英语', 'p2223467275.jpg', '2015-04-14', '80');
INSERT INTO `t_hot_movie` VALUES ('26351660', '海军陆战队员4', 'http://movie.douban.com/subject/26351660/', '5', '/动作/惊悚', ' 英语', 'p2234379538.jpg', '2015-04-10', '0');
