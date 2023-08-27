/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80017 (8.0.17)
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80017 (8.0.17)
 File Encoding         : 65001

 Date: 05/06/2023 18:57:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pageCount` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, '阎杰宏', '阎杰宏', '夏記制药有限责任公司', 426, 777.20);
INSERT INTO `books` VALUES (2, '宋云熙', '宋云熙', '王記系统有限责任公司', 933, 247.03);
INSERT INTO `books` VALUES (3, '金璐', '金璐', '璐有限责任公司', 229, 792.52);
INSERT INTO `books` VALUES (4, '唐震南', '唐震南', '胡有限责任公司', 188, 338.58);
INSERT INTO `books` VALUES (5, '龙睿', '龙睿', '云熙有限责任公司', 801, 431.23);
INSERT INTO `books` VALUES (6, '于睿', '于睿', '子异电子有限责任公司', 836, 159.76);
INSERT INTO `books` VALUES (7, '郑子韬', '郑子韬', '冯有限责任公司', 105, 232.15);
INSERT INTO `books` VALUES (8, '龙子韬', '龙子韬', '致远有限责任公司', 146, 234.37);
INSERT INTO `books` VALUES (9, '程子韬', '程子韬', '曾記电子有限责任公司', 506, 240.90);
INSERT INTO `books` VALUES (10, '尹震南', '尹震南', '卢工业有限责任公司', 945, 766.71);
INSERT INTO `books` VALUES (11, '石安琪', '石安琪', '云熙技术有限责任公司', 354, 949.63);
INSERT INTO `books` VALUES (12, '廖璐', '廖璐', '宇宁有限责任公司', 397, 233.15);
INSERT INTO `books` VALUES (13, '姚詩涵', '姚詩涵', '任記发展贸易有限责任公司', 356, 452.77);
INSERT INTO `books` VALUES (14, '于杰宏', '于杰宏', '贺有限责任公司', 947, 757.61);
INSERT INTO `books` VALUES (15, '李秀英', '李秀英', '宇宁工业有限责任公司', 862, 558.83);
INSERT INTO `books` VALUES (16, '于岚', '于岚', '睿发展贸易有限责任公司', 836, 779.17);
INSERT INTO `books` VALUES (17, '董璐', '董璐', '赵有限责任公司', 503, 100.10);
INSERT INTO `books` VALUES (18, '石震南', '石震南', '董工业有限责任公司', 907, 850.57);
INSERT INTO `books` VALUES (19, '陶晓明', '陶晓明', '詩涵有限责任公司', 193, 331.97);
INSERT INTO `books` VALUES (20, '向致远', '向致远', '范記有限责任公司', 365, 617.19);
INSERT INTO `books` VALUES (21, '金震南', '金震南', '崔电子有限责任公司', 798, 779.25);
INSERT INTO `books` VALUES (22, '汪杰宏', '汪杰宏', '魏記物业代理有限责任公司', 694, 738.26);
INSERT INTO `books` VALUES (23, '朱岚', '朱岚', '许顾问有限责任公司', 920, 850.79);
INSERT INTO `books` VALUES (24, '高杰宏', '高杰宏', '沈記工程有限责任公司', 366, 939.57);
INSERT INTO `books` VALUES (25, '陆詩涵', '陆詩涵', '嘉伦有限责任公司', 786, 248.55);
INSERT INTO `books` VALUES (26, '孙嘉伦', '孙嘉伦', '吕記有限责任公司', 128, 719.86);
INSERT INTO `books` VALUES (27, '冯睿', '冯睿', '罗工业有限责任公司', 133, 539.32);
INSERT INTO `books` VALUES (28, '莫杰宏', '莫杰宏', '秀英有限责任公司', 113, 903.62);
INSERT INTO `books` VALUES (29, '秦宇宁', '秦宇宁', '何电脑有限责任公司', 165, 630.76);
INSERT INTO `books` VALUES (30, '傅安琪', '傅安琪', '嘉伦制药有限责任公司', 479, 878.12);
INSERT INTO `books` VALUES (31, '秦震南', '秦震南', '赵記物业代理有限责任公司', 631, 224.00);
INSERT INTO `books` VALUES (32, '袁嘉伦', '袁嘉伦', '高电讯有限责任公司', 409, 848.51);
INSERT INTO `books` VALUES (33, '邵致远', '邵致远', '钟記食品有限责任公司', 267, 855.04);
INSERT INTO `books` VALUES (34, '陶子韬', '陶子韬', '丁記电讯有限责任公司', 844, 590.18);
INSERT INTO `books` VALUES (35, '袁宇宁', '袁宇宁', '苏电讯有限责任公司', 382, 189.12);
INSERT INTO `books` VALUES (36, '石安琪', '石安琪', '子韬有限责任公司', 682, 443.24);
INSERT INTO `books` VALUES (37, '顾杰宏', '顾杰宏', '周有限责任公司', 292, 782.46);
INSERT INTO `books` VALUES (38, '王杰宏', '王杰宏', '龙記电子有限责任公司', 191, 508.72);
INSERT INTO `books` VALUES (39, '陶秀英', '陶秀英', '子韬发展贸易有限责任公司', 117, 798.27);
INSERT INTO `books` VALUES (40, '郭子韬', '郭子韬', '杰宏通讯有限责任公司', 581, 144.91);
INSERT INTO `books` VALUES (41, '孟云熙', '孟云熙', '嘉伦工程有限责任公司', 688, 147.86);
INSERT INTO `books` VALUES (42, '傅詩涵', '傅詩涵', '邱記有限责任公司', 137, 543.55);
INSERT INTO `books` VALUES (43, '侯璐', '侯璐', '高电脑有限责任公司', 218, 554.24);
INSERT INTO `books` VALUES (44, '徐安琪', '徐安琪', '晓明电讯有限责任公司', 732, 948.64);
INSERT INTO `books` VALUES (45, '苏云熙', '苏云熙', '晓明玩具有限责任公司', 971, 744.79);
INSERT INTO `books` VALUES (46, '黎岚', '黎岚', '李記有限责任公司', 856, 648.39);
INSERT INTO `books` VALUES (47, '潘震南', '潘震南', '黄贸易有限责任公司', 312, 845.14);
INSERT INTO `books` VALUES (48, '李子韬', '李子韬', '安琪有限责任公司', 690, 379.50);
INSERT INTO `books` VALUES (49, '陈云熙', '陈云熙', '邹記发展贸易有限责任公司', 516, 618.29);
INSERT INTO `books` VALUES (50, '蔡子韬', '蔡子韬', '子韬系统有限责任公司', 663, 881.75);
INSERT INTO `books` VALUES (51, '陶杰宏', '陶杰宏', '岚制药有限责任公司', 429, 978.00);
INSERT INTO `books` VALUES (52, '龚致远', '龚致远', '安琪有限责任公司', 292, 722.92);
INSERT INTO `books` VALUES (53, '段宇宁', '段宇宁', '许有限责任公司', 413, 400.26);
INSERT INTO `books` VALUES (54, '王詩涵', '王詩涵', '吕有限责任公司', 296, 884.86);
INSERT INTO `books` VALUES (55, '袁震南', '袁震南', '璐制药有限责任公司', 693, 239.29);
INSERT INTO `books` VALUES (56, '郝宇宁', '郝宇宁', '武記电子有限责任公司', 748, 474.55);
INSERT INTO `books` VALUES (57, '雷杰宏', '雷杰宏', '廖記有限责任公司', 123, 337.96);
INSERT INTO `books` VALUES (58, '王安琪', '王安琪', '孟有限责任公司', 880, 660.25);
INSERT INTO `books` VALUES (59, '孙璐', '孙璐', '云熙贸易有限责任公司', 520, 605.26);
INSERT INTO `books` VALUES (60, '顾子韬', '顾子韬', '致远工程有限责任公司', 905, 373.80);
INSERT INTO `books` VALUES (61, '董致远', '董致远', '杰宏有限责任公司', 631, 547.29);
INSERT INTO `books` VALUES (62, '孔云熙', '孔云熙', '岚电脑有限责任公司', 652, 596.37);
INSERT INTO `books` VALUES (63, '段致远', '段致远', '子韬顾问有限责任公司', 483, 515.96);
INSERT INTO `books` VALUES (64, '谢震南', '谢震南', '云熙技术有限责任公司', 354, 601.90);
INSERT INTO `books` VALUES (65, '莫晓明', '莫晓明', '睿有限责任公司', 475, 498.97);
INSERT INTO `books` VALUES (66, '夏云熙', '夏云熙', '震南有限责任公司', 675, 751.32);
INSERT INTO `books` VALUES (67, '张睿', '张睿', '赵記有限责任公司', 691, 640.50);
INSERT INTO `books` VALUES (68, '王云熙', '王云熙', '何記有限责任公司', 579, 202.04);
INSERT INTO `books` VALUES (69, '冯嘉伦', '冯嘉伦', '震南有限责任公司', 881, 528.68);
INSERT INTO `books` VALUES (70, '叶杰宏', '叶杰宏', '晓明玩具有限责任公司', 400, 598.18);
INSERT INTO `books` VALUES (71, '秦杰宏', '秦杰宏', '江記发展贸易有限责任公司', 475, 293.76);
INSERT INTO `books` VALUES (72, '冯子韬', '冯子韬', '子异有限责任公司', 702, 409.95);
INSERT INTO `books` VALUES (73, '顾嘉伦', '顾嘉伦', '高有限责任公司', 496, 158.08);
INSERT INTO `books` VALUES (74, '杨杰宏', '杨杰宏', '璐电脑有限责任公司', 340, 451.38);
INSERT INTO `books` VALUES (75, '卢詩涵', '卢詩涵', '姚記物业代理有限责任公司', 862, 102.14);
INSERT INTO `books` VALUES (76, '雷安琪', '雷安琪', '岚有限责任公司', 280, 193.55);
INSERT INTO `books` VALUES (77, '杜杰宏', '杜杰宏', '彭記发展贸易有限责任公司', 352, 969.44);
INSERT INTO `books` VALUES (78, '孟杰宏', '孟杰宏', '晓明有限责任公司', 420, 642.04);
INSERT INTO `books` VALUES (79, '常宇宁', '常宇宁', '崔記食品有限责任公司', 407, 289.92);
INSERT INTO `books` VALUES (80, '何秀英', '何秀英', '叶有限责任公司', 403, 164.38);
INSERT INTO `books` VALUES (81, '罗秀英', '罗秀英', '子异有限责任公司', 578, 495.43);
INSERT INTO `books` VALUES (82, '江子异', '江子异', '郭記有限责任公司', 674, 198.64);
INSERT INTO `books` VALUES (83, '贺秀英', '贺秀英', '武記有限责任公司', 678, 664.32);
INSERT INTO `books` VALUES (84, '胡詩涵', '胡詩涵', '宇宁玩具有限责任公司', 994, 327.79);
INSERT INTO `books` VALUES (85, '石致远', '石致远', '璐制药有限责任公司', 730, 157.36);
INSERT INTO `books` VALUES (86, '马杰宏', '马杰宏', '杰宏物业代理有限责任公司', 769, 607.38);
INSERT INTO `books` VALUES (87, '赵安琪', '赵安琪', '睿有限责任公司', 756, 470.59);
INSERT INTO `books` VALUES (88, '林震南', '林震南', '于記有限责任公司', 576, 375.15);
INSERT INTO `books` VALUES (89, '沈宇宁', '沈宇宁', '田制药有限责任公司', 532, 450.93);
INSERT INTO `books` VALUES (90, '陆晓明', '陆晓明', '岚有限责任公司', 892, 210.84);
INSERT INTO `books` VALUES (91, '李子韬', '李子韬', '詩涵电脑有限责任公司', 639, 499.14);
INSERT INTO `books` VALUES (92, '吴子异', '吴子异', '子异发展贸易有限责任公司', 125, 858.42);
INSERT INTO `books` VALUES (93, '苏岚', '苏岚', '赵通讯有限责任公司', 860, 813.75);
INSERT INTO `books` VALUES (94, '谭震南', '谭震南', '徐記食品有限责任公司', 358, 590.16);
INSERT INTO `books` VALUES (95, '于震南', '于震南', '睿电讯有限责任公司', 428, 338.41);
INSERT INTO `books` VALUES (96, '贺晓明', '贺晓明', '郝有限责任公司', 127, 428.09);
INSERT INTO `books` VALUES (97, '侯子异', '侯子异', '子韬工业有限责任公司', 662, 245.89);
INSERT INTO `books` VALUES (98, '徐秀英', '徐秀英', '岚顾问有限责任公司', 302, 536.18);
INSERT INTO `books` VALUES (99, '方詩涵', '方詩涵', '曾記有限责任公司', 925, 414.58);
INSERT INTO `books` VALUES (100, '吕岚', '吕岚', '晓明有限责任公司', 587, 559.04);
INSERT INTO `books` VALUES (101, '石子异', '石子异', '杰宏有限责任公司', 249, 466.76);
INSERT INTO `books` VALUES (102, '汪秀英', '汪秀英', '子韬电脑有限责任公司', 831, 807.59);
INSERT INTO `books` VALUES (103, '吴震南', '吴震南', '震南电子有限责任公司', 247, 119.69);
INSERT INTO `books` VALUES (104, '汤岚', '汤岚', '马有限责任公司', 571, 483.43);
INSERT INTO `books` VALUES (105, '余震南', '余震南', '田有限责任公司', 133, 312.79);
INSERT INTO `books` VALUES (106, '廖秀英', '廖秀英', '睿通讯有限责任公司', 778, 745.26);
INSERT INTO `books` VALUES (107, '向子异', '向子异', '汤有限责任公司', 227, 408.16);
INSERT INTO `books` VALUES (108, '孟睿', '孟睿', '袁物业代理有限责任公司', 416, 472.30);
INSERT INTO `books` VALUES (109, '毛秀英', '毛秀英', '嘉伦技术有限责任公司', 646, 893.34);
INSERT INTO `books` VALUES (110, '于嘉伦', '于嘉伦', '韩技术有限责任公司', 396, 456.62);
INSERT INTO `books` VALUES (111, '贺安琪', '贺安琪', '云熙有限责任公司', 445, 837.57);
INSERT INTO `books` VALUES (112, '丁詩涵', '丁詩涵', '谢記有限责任公司', 895, 657.61);
INSERT INTO `books` VALUES (113, '曹嘉伦', '曹嘉伦', '曹記有限责任公司', 749, 587.09);
INSERT INTO `books` VALUES (114, '姜晓明', '姜晓明', '吴有限责任公司', 897, 676.93);
INSERT INTO `books` VALUES (115, '廖宇宁', '廖宇宁', '震南顾问有限责任公司', 799, 837.44);
INSERT INTO `books` VALUES (116, '邵秀英', '邵秀英', '子异系统有限责任公司', 499, 753.67);
INSERT INTO `books` VALUES (117, '唐岚', '唐岚', '潘記玩具有限责任公司', 189, 795.86);
INSERT INTO `books` VALUES (118, '宋詩涵', '宋詩涵', '田物业代理有限责任公司', 881, 789.13);
INSERT INTO `books` VALUES (119, '袁宇宁', '袁宇宁', '苏記有限责任公司', 757, 504.03);
INSERT INTO `books` VALUES (120, '卢云熙', '卢云熙', '睿有限责任公司', 540, 787.20);
INSERT INTO `books` VALUES (121, '邹杰宏', '邹杰宏', '苏电讯有限责任公司', 882, 108.19);
INSERT INTO `books` VALUES (122, '程岚', '程岚', '璐技术有限责任公司', 804, 248.89);
INSERT INTO `books` VALUES (123, '汤云熙', '汤云熙', '卢記贸易有限责任公司', 603, 821.25);
INSERT INTO `books` VALUES (124, '戴璐', '戴璐', '姚記有限责任公司', 242, 970.06);
INSERT INTO `books` VALUES (125, '陈子异', '陈子异', '向記物业代理有限责任公司', 948, 709.03);
INSERT INTO `books` VALUES (126, '徐晓明', '徐晓明', '徐有限责任公司', 448, 698.30);
INSERT INTO `books` VALUES (127, '傅璐', '傅璐', '云熙发展贸易有限责任公司', 393, 468.43);
INSERT INTO `books` VALUES (128, '严晓明', '严晓明', '陶記物业代理有限责任公司', 628, 609.15);
INSERT INTO `books` VALUES (129, '姜嘉伦', '姜嘉伦', '子韬有限责任公司', 490, 495.72);
INSERT INTO `books` VALUES (130, '余詩涵', '余詩涵', '秀英玩具有限责任公司', 108, 788.40);
INSERT INTO `books` VALUES (131, '廖安琪', '廖安琪', '致远工业有限责任公司', 996, 319.52);
INSERT INTO `books` VALUES (132, '何睿', '何睿', '吕記技术有限责任公司', 861, 689.33);
INSERT INTO `books` VALUES (133, '秦宇宁', '秦宇宁', '璐有限责任公司', 160, 419.80);
INSERT INTO `books` VALUES (134, '钱宇宁', '钱宇宁', '杰宏有限责任公司', 619, 384.06);
INSERT INTO `books` VALUES (135, '苏秀英', '苏秀英', '许記电子有限责任公司', 425, 529.75);
INSERT INTO `books` VALUES (136, '许嘉伦', '许嘉伦', '子异有限责任公司', 269, 601.16);
INSERT INTO `books` VALUES (137, '吴秀英', '吴秀英', '秀英有限责任公司', 523, 285.23);
INSERT INTO `books` VALUES (138, '曾宇宁', '曾宇宁', '何电子有限责任公司', 246, 479.50);
INSERT INTO `books` VALUES (139, '傅詩涵', '傅詩涵', '致远顾问有限责任公司', 637, 583.45);
INSERT INTO `books` VALUES (140, '孙致远', '孙致远', '陆記物业代理有限责任公司', 552, 794.75);
INSERT INTO `books` VALUES (141, '张致远', '张致远', '邵記有限责任公司', 197, 954.85);
INSERT INTO `books` VALUES (142, '邵秀英', '邵秀英', '高有限责任公司', 997, 689.74);
INSERT INTO `books` VALUES (143, '龙致远', '龙致远', '子异有限责任公司', 521, 107.42);
INSERT INTO `books` VALUES (144, '任璐', '任璐', '袁記有限责任公司', 282, 332.49);
INSERT INTO `books` VALUES (145, '秦致远', '秦致远', '邹記有限责任公司', 104, 226.25);
INSERT INTO `books` VALUES (146, '田詩涵', '田詩涵', '邓記物业代理有限责任公司', 372, 451.99);
INSERT INTO `books` VALUES (147, '常子异', '常子异', '子韬有限责任公司', 803, 607.99);
INSERT INTO `books` VALUES (148, '徐睿', '徐睿', '杰宏工业有限责任公司', 883, 171.79);
INSERT INTO `books` VALUES (149, '何岚', '何岚', '晓明有限责任公司', 277, 538.20);
INSERT INTO `books` VALUES (150, '姜嘉伦', '姜嘉伦', '睿有限责任公司', 840, 679.33);
INSERT INTO `books` VALUES (151, '赵詩涵', '赵詩涵', '石有限责任公司', 826, 759.02);
INSERT INTO `books` VALUES (152, '叶秀英', '叶秀英', '秀英有限责任公司', 642, 105.22);
INSERT INTO `books` VALUES (153, '阎震南', '阎震南', '璐技术有限责任公司', 733, 488.36);
INSERT INTO `books` VALUES (154, '蒋秀英', '蒋秀英', '致远有限责任公司', 912, 642.36);
INSERT INTO `books` VALUES (155, '韦杰宏', '韦杰宏', '崔記有限责任公司', 525, 829.71);
INSERT INTO `books` VALUES (156, '苏安琪', '苏安琪', '致远电子有限责任公司', 316, 419.75);
INSERT INTO `books` VALUES (157, '韩嘉伦', '韩嘉伦', '任工程有限责任公司', 845, 810.55);
INSERT INTO `books` VALUES (158, '薛安琪', '薛安琪', '安琪工业有限责任公司', 349, 460.67);
INSERT INTO `books` VALUES (159, '冯子异', '冯子异', '詩涵有限责任公司', 263, 764.38);
INSERT INTO `books` VALUES (160, '杜秀英', '杜秀英', '田記有限责任公司', 378, 247.29);
INSERT INTO `books` VALUES (161, '黎岚', '黎岚', '石記技术有限责任公司', 214, 364.71);
INSERT INTO `books` VALUES (162, '邵睿', '邵睿', '赵記有限责任公司', 682, 732.99);
INSERT INTO `books` VALUES (163, '马宇宁', '马宇宁', '胡記有限责任公司', 367, 209.64);
INSERT INTO `books` VALUES (164, '何睿', '何睿', '震南有限责任公司', 791, 741.32);
INSERT INTO `books` VALUES (165, '莫詩涵', '莫詩涵', '潘記有限责任公司', 746, 271.07);
INSERT INTO `books` VALUES (166, '程云熙', '程云熙', '薛电子有限责任公司', 911, 592.65);
INSERT INTO `books` VALUES (167, '杜晓明', '杜晓明', '徐贸易有限责任公司', 884, 748.80);
INSERT INTO `books` VALUES (168, '何云熙', '何云熙', '姜通讯有限责任公司', 403, 922.46);
INSERT INTO `books` VALUES (169, '魏秀英', '魏秀英', '杨記有限责任公司', 945, 850.18);
INSERT INTO `books` VALUES (170, '钟致远', '钟致远', '秀英电子有限责任公司', 496, 434.26);
INSERT INTO `books` VALUES (171, '贺子韬', '贺子韬', '秦記玩具有限责任公司', 407, 706.87);
INSERT INTO `books` VALUES (172, '于子异', '于子异', '朱記技术有限责任公司', 191, 240.30);
INSERT INTO `books` VALUES (173, '宋秀英', '宋秀英', '詩涵有限责任公司', 639, 831.64);
INSERT INTO `books` VALUES (174, '钟安琪', '钟安琪', '震南食品有限责任公司', 815, 448.80);
INSERT INTO `books` VALUES (175, '尹睿', '尹睿', '石記有限责任公司', 449, 943.52);
INSERT INTO `books` VALUES (176, '余晓明', '余晓明', '程物业代理有限责任公司', 255, 645.69);
INSERT INTO `books` VALUES (177, '魏詩涵', '魏詩涵', '子异电脑有限责任公司', 364, 379.03);
INSERT INTO `books` VALUES (178, '许詩涵', '许詩涵', '林記有限责任公司', 224, 131.74);
INSERT INTO `books` VALUES (179, '严杰宏', '严杰宏', '郭記技术有限责任公司', 772, 859.41);
INSERT INTO `books` VALUES (180, '莫子韬', '莫子韬', '詩涵技术有限责任公司', 734, 790.65);
INSERT INTO `books` VALUES (181, '丁子异', '丁子异', '云熙有限责任公司', 508, 579.24);
INSERT INTO `books` VALUES (182, '孔嘉伦', '孔嘉伦', '姚技术有限责任公司', 474, 507.17);
INSERT INTO `books` VALUES (183, '梁嘉伦', '梁嘉伦', '子韬顾问有限责任公司', 299, 491.78);
INSERT INTO `books` VALUES (184, '袁安琪', '袁安琪', '毛記物业代理有限责任公司', 828, 227.33);
INSERT INTO `books` VALUES (185, '孟璐', '孟璐', '宇宁有限责任公司', 655, 250.56);
INSERT INTO `books` VALUES (186, '傅云熙', '傅云熙', '任工程有限责任公司', 128, 246.15);
INSERT INTO `books` VALUES (187, '武詩涵', '武詩涵', '安琪有限责任公司', 400, 564.13);
INSERT INTO `books` VALUES (188, '夏嘉伦', '夏嘉伦', '岚技术有限责任公司', 763, 927.57);
INSERT INTO `books` VALUES (189, '郝子异', '郝子异', '陶記玩具有限责任公司', 674, 797.35);
INSERT INTO `books` VALUES (190, '董致远', '董致远', '邹电子有限责任公司', 441, 692.97);
INSERT INTO `books` VALUES (191, '石安琪', '石安琪', '致远通讯有限责任公司', 245, 393.98);
INSERT INTO `books` VALUES (192, '武詩涵', '武詩涵', '致远玩具有限责任公司', 605, 835.42);
INSERT INTO `books` VALUES (193, '侯秀英', '侯秀英', '苏記有限责任公司', 773, 285.95);
INSERT INTO `books` VALUES (194, '刘晓明', '刘晓明', '子韬电讯有限责任公司', 243, 927.57);
INSERT INTO `books` VALUES (195, '沈嘉伦', '沈嘉伦', '安琪有限责任公司', 571, 510.19);
INSERT INTO `books` VALUES (196, '吕秀英', '吕秀英', '詩涵电脑有限责任公司', 919, 750.88);
INSERT INTO `books` VALUES (197, '郑致远', '郑致远', '云熙贸易有限责任公司', 319, 478.79);
INSERT INTO `books` VALUES (198, '江睿', '江睿', '魏記技术有限责任公司', 296, 263.62);
INSERT INTO `books` VALUES (199, '龚子韬', '龚子韬', '云熙工业有限责任公司', 319, 740.28);
INSERT INTO `books` VALUES (200, '苏震南', '苏震南', '顾有限责任公司', 480, 236.61);
INSERT INTO `books` VALUES (201, '江杰宏', '江杰宏', '子异有限责任公司', 769, 701.09);
INSERT INTO `books` VALUES (202, '杨子异', '杨子异', '魏記有限责任公司', 827, 264.86);
INSERT INTO `books` VALUES (203, '田杰宏', '田杰宏', '丁系统有限责任公司', 165, 169.69);
INSERT INTO `books` VALUES (204, '阎云熙', '阎云熙', '安琪工业有限责任公司', 545, 656.07);
INSERT INTO `books` VALUES (205, '钟云熙', '钟云熙', '宇宁贸易有限责任公司', 772, 970.17);
INSERT INTO `books` VALUES (206, '孙杰宏', '孙杰宏', '任发展贸易有限责任公司', 402, 103.61);
INSERT INTO `books` VALUES (207, '姜子韬', '姜子韬', '晓明制药有限责任公司', 285, 689.28);
INSERT INTO `books` VALUES (208, '孟云熙', '孟云熙', '朱玩具有限责任公司', 954, 695.99);
INSERT INTO `books` VALUES (209, '韩睿', '韩睿', '程物业代理有限责任公司', 597, 362.76);
INSERT INTO `books` VALUES (210, '龙子韬', '龙子韬', '子韬有限责任公司', 465, 737.64);
INSERT INTO `books` VALUES (211, '孙子韬', '孙子韬', '杰宏有限责任公司', 957, 726.46);
INSERT INTO `books` VALUES (212, '宋璐', '宋璐', '彭电讯有限责任公司', 655, 248.88);
INSERT INTO `books` VALUES (213, '汤岚', '汤岚', '璐有限责任公司', 742, 252.42);
INSERT INTO `books` VALUES (214, '王宇宁', '王宇宁', '顾記顾问有限责任公司', 491, 879.89);
INSERT INTO `books` VALUES (215, '韦詩涵', '韦詩涵', '段記贸易有限责任公司', 753, 529.55);
INSERT INTO `books` VALUES (216, '毛晓明', '毛晓明', '秀英电讯有限责任公司', 352, 858.05);
INSERT INTO `books` VALUES (217, '戴嘉伦', '戴嘉伦', '吴記电讯有限责任公司', 625, 505.44);
INSERT INTO `books` VALUES (218, '周詩涵', '周詩涵', '岚有限责任公司', 1000, 368.96);
INSERT INTO `books` VALUES (219, '阎詩涵', '阎詩涵', '程記电讯有限责任公司', 269, 802.92);
INSERT INTO `books` VALUES (220, '卢杰宏', '卢杰宏', '严記有限责任公司', 138, 488.87);
INSERT INTO `books` VALUES (221, '贺杰宏', '贺杰宏', '宇宁物业代理有限责任公司', 856, 186.96);
INSERT INTO `books` VALUES (222, '史安琪', '史安琪', '安琪有限责任公司', 106, 860.38);
INSERT INTO `books` VALUES (223, '叶璐', '叶璐', '云熙有限责任公司', 458, 530.05);
INSERT INTO `books` VALUES (224, '戴嘉伦', '戴嘉伦', '璐顾问有限责任公司', 153, 740.50);
INSERT INTO `books` VALUES (225, '傅子韬', '傅子韬', '刘制药有限责任公司', 545, 217.86);
INSERT INTO `books` VALUES (226, '龙璐', '龙璐', '云熙系统有限责任公司', 302, 906.65);
INSERT INTO `books` VALUES (227, '曾嘉伦', '曾嘉伦', '丁有限责任公司', 510, 552.71);
INSERT INTO `books` VALUES (228, '董子韬', '董子韬', '魏記有限责任公司', 379, 821.35);
INSERT INTO `books` VALUES (229, '宋嘉伦', '宋嘉伦', '段記发展贸易有限责任公司', 489, 612.49);
INSERT INTO `books` VALUES (230, '魏睿', '魏睿', '震南有限责任公司', 226, 771.91);
INSERT INTO `books` VALUES (231, '彭子韬', '彭子韬', '岚工业有限责任公司', 781, 902.08);
INSERT INTO `books` VALUES (232, '夏子异', '夏子异', '汤記有限责任公司', 183, 612.49);
INSERT INTO `books` VALUES (233, '魏岚', '魏岚', '安琪有限责任公司', 295, 413.71);
INSERT INTO `books` VALUES (234, '汤云熙', '汤云熙', '震南物业代理有限责任公司', 753, 464.42);
INSERT INTO `books` VALUES (235, '石安琪', '石安琪', '云熙有限责任公司', 813, 668.00);
INSERT INTO `books` VALUES (236, '蔡璐', '蔡璐', '范有限责任公司', 737, 617.52);
INSERT INTO `books` VALUES (237, '彭嘉伦', '彭嘉伦', '邓記系统有限责任公司', 733, 811.66);
INSERT INTO `books` VALUES (238, '余杰宏', '余杰宏', '子韬技术有限责任公司', 251, 795.93);
INSERT INTO `books` VALUES (239, '徐岚', '徐岚', '段有限责任公司', 729, 389.18);
INSERT INTO `books` VALUES (240, '严安琪', '严安琪', '璐通讯有限责任公司', 103, 111.59);
INSERT INTO `books` VALUES (241, '贺嘉伦', '贺嘉伦', '刘記制药有限责任公司', 781, 219.57);
INSERT INTO `books` VALUES (242, '邓子韬', '邓子韬', '叶記技术有限责任公司', 277, 356.39);
INSERT INTO `books` VALUES (243, '高晓明', '高晓明', '郭技术有限责任公司', 830, 587.08);
INSERT INTO `books` VALUES (244, '马子异', '马子异', '侯記发展贸易有限责任公司', 592, 325.56);
INSERT INTO `books` VALUES (245, '邓晓明', '邓晓明', '睿发展贸易有限责任公司', 672, 162.77);
INSERT INTO `books` VALUES (246, '宋璐', '宋璐', '汤記有限责任公司', 112, 741.41);
INSERT INTO `books` VALUES (247, '钟云熙', '钟云熙', '杨电子有限责任公司', 738, 357.73);
INSERT INTO `books` VALUES (248, '崔震南', '崔震南', '震南有限责任公司', 866, 350.99);
INSERT INTO `books` VALUES (249, '马詩涵', '马詩涵', '致远有限责任公司', 871, 450.27);
INSERT INTO `books` VALUES (250, '秦璐', '秦璐', '子韬贸易有限责任公司', 776, 423.11);
INSERT INTO `books` VALUES (251, '黄致远', '黄致远', '杰宏有限责任公司', 849, 798.66);
INSERT INTO `books` VALUES (252, '郝睿', '郝睿', '岚有限责任公司', 876, 432.02);
INSERT INTO `books` VALUES (253, '袁宇宁', '袁宇宁', '卢有限责任公司', 563, 569.88);
INSERT INTO `books` VALUES (254, '金杰宏', '金杰宏', '杰宏有限责任公司', 260, 865.99);
INSERT INTO `books` VALUES (255, '周睿', '周睿', '沈記电讯有限责任公司', 806, 468.42);
INSERT INTO `books` VALUES (256, '钱詩涵', '钱詩涵', '詩涵有限责任公司', 745, 981.63);
INSERT INTO `books` VALUES (257, '薛子韬', '薛子韬', '余記有限责任公司', 433, 306.54);
INSERT INTO `books` VALUES (258, '崔子韬', '崔子韬', '宇宁有限责任公司', 149, 704.79);
INSERT INTO `books` VALUES (259, '董嘉伦', '董嘉伦', '子异发展贸易有限责任公司', 884, 548.15);
INSERT INTO `books` VALUES (260, '余晓明', '余晓明', '子异有限责任公司', 156, 893.47);
INSERT INTO `books` VALUES (261, '任子异', '任子异', '陈記有限责任公司', 666, 359.74);
INSERT INTO `books` VALUES (262, '武震南', '武震南', '史記通讯有限责任公司', 671, 529.68);
INSERT INTO `books` VALUES (263, '郑晓明', '郑晓明', '徐記系统有限责任公司', 490, 691.30);
INSERT INTO `books` VALUES (264, '武震南', '武震南', '秀英有限责任公司', 133, 987.43);
INSERT INTO `books` VALUES (265, '姜岚', '姜岚', '彭有限责任公司', 581, 787.31);
INSERT INTO `books` VALUES (266, '唐嘉伦', '唐嘉伦', '向有限责任公司', 734, 950.07);
INSERT INTO `books` VALUES (267, '秦致远', '秦致远', '谭記有限责任公司', 422, 254.16);
INSERT INTO `books` VALUES (268, '秦子韬', '秦子韬', '方記有限责任公司', 428, 831.14);
INSERT INTO `books` VALUES (269, '朱詩涵', '朱詩涵', '钟記电子有限责任公司', 935, 467.50);
INSERT INTO `books` VALUES (270, '龚璐', '龚璐', '龙有限责任公司', 109, 304.22);
INSERT INTO `books` VALUES (271, '段震南', '段震南', '岚有限责任公司', 239, 118.69);
INSERT INTO `books` VALUES (272, '叶杰宏', '叶杰宏', '安琪有限责任公司', 348, 555.26);
INSERT INTO `books` VALUES (273, '苏璐', '苏璐', '武記有限责任公司', 630, 962.06);
INSERT INTO `books` VALUES (274, '钟嘉伦', '钟嘉伦', '高記有限责任公司', 489, 652.34);
INSERT INTO `books` VALUES (275, '唐晓明', '唐晓明', '岚顾问有限责任公司', 930, 466.74);
INSERT INTO `books` VALUES (276, '孟云熙', '孟云熙', '常記制药有限责任公司', 626, 565.69);
INSERT INTO `books` VALUES (277, '程岚', '程岚', '梁記通讯有限责任公司', 719, 267.40);
INSERT INTO `books` VALUES (278, '邓秀英', '邓秀英', '云熙发展贸易有限责任公司', 856, 986.59);
INSERT INTO `books` VALUES (279, '宋宇宁', '宋宇宁', '黎顾问有限责任公司', 193, 754.11);
INSERT INTO `books` VALUES (280, '许璐', '许璐', '魏記电脑有限责任公司', 561, 536.73);
INSERT INTO `books` VALUES (281, '钟睿', '钟睿', '致远顾问有限责任公司', 773, 946.24);
INSERT INTO `books` VALUES (282, '丁致远', '丁致远', '璐发展贸易有限责任公司', 432, 895.59);
INSERT INTO `books` VALUES (283, '黄秀英', '黄秀英', '姜电讯有限责任公司', 277, 757.96);
INSERT INTO `books` VALUES (284, '马震南', '马震南', '詩涵有限责任公司', 909, 932.79);
INSERT INTO `books` VALUES (285, '冯秀英', '冯秀英', '安琪有限责任公司', 203, 755.11);
INSERT INTO `books` VALUES (286, '梁璐', '梁璐', '晓明系统有限责任公司', 642, 974.56);
INSERT INTO `books` VALUES (287, '蒋宇宁', '蒋宇宁', '曾有限责任公司', 416, 681.14);
INSERT INTO `books` VALUES (288, '程詩涵', '程詩涵', '袁記有限责任公司', 873, 427.57);
INSERT INTO `books` VALUES (289, '贺子韬', '贺子韬', '韩工业有限责任公司', 720, 940.70);
INSERT INTO `books` VALUES (290, '邓嘉伦', '邓嘉伦', '璐贸易有限责任公司', 291, 440.34);
INSERT INTO `books` VALUES (291, '武嘉伦', '武嘉伦', '张記通讯有限责任公司', 642, 446.35);
INSERT INTO `books` VALUES (292, '吕子异', '吕子异', '冯有限责任公司', 414, 856.90);
INSERT INTO `books` VALUES (293, '范璐', '范璐', '顾記电子有限责任公司', 218, 335.07);
INSERT INTO `books` VALUES (294, '黄詩涵', '黄詩涵', '璐有限责任公司', 545, 839.15);
INSERT INTO `books` VALUES (295, '田秀英', '田秀英', '夏有限责任公司', 254, 263.64);
INSERT INTO `books` VALUES (296, '蔡嘉伦', '蔡嘉伦', '子异有限责任公司', 491, 163.87);
INSERT INTO `books` VALUES (297, '方秀英', '方秀英', '睿物业代理有限责任公司', 178, 860.30);
INSERT INTO `books` VALUES (298, '崔嘉伦', '崔嘉伦', '黎記有限责任公司', 583, 238.46);
INSERT INTO `books` VALUES (299, '龚杰宏', '龚杰宏', '常記技术有限责任公司', 162, 126.53);
INSERT INTO `books` VALUES (300, '王杰宏', '王杰宏', '徐記物业代理有限责任公司', 563, 965.68);

SET FOREIGN_KEY_CHECKS = 1;
