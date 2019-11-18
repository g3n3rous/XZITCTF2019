CREATE DATABASE IF NOT EXISTS girlfriendhub;

USE girlfriendhub;

CREATE TABLE IF NOT EXISTS`persons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `address` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `job` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(10240) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `persons` VALUES (1, '妮城', '女', 31, '徐州', 170, '传媒/艺术', '早六晚五规律工作 休息健身看电影听音乐陪狗狗 假期潜水度假旅行 平时工作忙 未免浪费双方时间 已开系统自动筛选符合要求的信息才会看');
INSERT INTO `persons` VALUES (2, 'vivian', '女', 30, '徐州', 170, '品牌经理', '热爱生活，注重生活中的仪式感，经济独立。');
INSERT INTO `persons` VALUES (3, '小兰', '女', 29, '徐州', 160, '渠道/分销专员', '想找一个聊得来，有担当上进，相处舒服有点小幽默的人慢慢陪伴到老。');
INSERT INTO `persons` VALUES (4, '双双', '女', 28, '徐州', 163, '销售', '早点遇见对得人，想走一生。 自己脾气不好，但还是比较善良');
INSERT INTO `persons` VALUES (5, '小公举', '女', 28, '徐州', 160, '销售专员', '我是一个特别缺乏安全感的一个女孩 巨蟹座 爱家 就像一颗定时炸弹 即使这样 偶尔还是想找个 脾气好点的 最感动的事 他能懂得你所有口是心非');
INSERT INTO `persons` VALUES (6, '摩羯座', '女', 27, '徐州', 165, '设计师', '摩羯座，微胖、肉肉的、内心相对来说偏于传统… 生活节奏除了上班，就是健身。不工作时间就去独自旅行，感受生活。 很少接触异性，因为单亲家庭，从小比较独立，向往和谐的家庭生活，你若给我真心，我便以你为安！生死相依！你若愿意，我许你一人以偏爱，尽此生之慷慨。 性格比较沉稳，喜欢简单的人，希望你同我一样，向往家庭生活，一屋两人，三餐四季。足矣。 不介意异地，如果相处合适，我会到你的城市陪你生活。你在，就是家。 爱情观：始于颜值，陷于才华，终于人品！ 对80后情有独钟，希望你的成熟与阅历，让我一生崇拜。伴你左右。 （身高175以下勿扰，不喜欢戴眼镜男生，介意比我收入低的男生，没有人脸认证的我不会回复，不接受视频的也别打扰我了）');
INSERT INTO `persons` VALUES (7, '暖葵', '女', 28, '徐州', 161, '医疗/护理', '欣赏坦诚，坦然，坦荡，有责任感，有事业心，成熟稳重的男士，不喜欢虚伪，徒有其表。好听的谎话，最后都会让人感觉无比恶心，难听的实话，我会和你一起坦然面对。看心，不看外表。');
INSERT INTO `persons` VALUES (8, 'Bling', '女', 27, '徐州', 167, '销售', '群发信息不回复。 首先我是外表控，对身高有准则。 宁缺毋滥，追求素养。 只要那个人是对的，迟一点遇见也没关系。 相信感情胜于一切。 有着自己的己见，热衷于自己的工作， 如果没有太阳，就自己带给自己正能量。');
INSERT INTO `persons` VALUES (9, 'Cayla', '女', 26, '徐州', 169, '计算机/互联网', '这世上肯定有某个角落，存在着能完全领会我想表达的意思的人');
INSERT INTO `persons` VALUES (10, '沉默的鱼', '女', 27, '徐州', 170, '医疗', '希望能遇到那个满眼都是我的他、、、、、、、、。');
INSERT INTO `persons` VALUES (11, 'Susan', '女', 27, '徐州', 165, '银行', '有趣的灵魂很少，希望遇到有趣的灵魂，志趣相同');
INSERT INTO `persons` VALUES (12, '刚好遇见', '女', 28, '徐州', 162, '生产/制造', '喜欢我的，可以留言 希望在对的时间里，刚好遇到你 非诚勿扰');

CREATE TABLE IF NOT EXISTS `pictures`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personid` int(11) NULL DEFAULT NULL,
  `save` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `picture_person_id_fk`(`personid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `pictures` VALUES (1, 1, '5655774544996933.png');
INSERT INTO `pictures` VALUES (2, 2, '5896238614922144.jpg');
INSERT INTO `pictures` VALUES (3, 3, '5368365551049058.jpg');
INSERT INTO `pictures` VALUES (4, 4, '6098240313234922.jpg');
INSERT INTO `pictures` VALUES (5, 5, '1511621552473.jpg');
INSERT INTO `pictures` VALUES (6, 6, '1508903434480.png');
INSERT INTO `pictures` VALUES (7, 7, '4304100839465307.png');
INSERT INTO `pictures` VALUES (8, 8, '5823380373843635.jpg');
INSERT INTO `pictures` VALUES (9, 9, '671035643249456.jpg');
INSERT INTO `pictures` VALUES (10, 10, '29543076822206489.jpg');
INSERT INTO `pictures` VALUES (11, 11, '5620070169290601.jpg');
INSERT INTO `pictures` VALUES (12, 12, '4645099905632792.jpg');


CREATE TABLE IF NOT EXISTS `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `users` VALUES (1, 'test', '098f6bcd4621d373cade4e832627b4f6');