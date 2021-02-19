/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : cw

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 18/02/2021 18:46:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adress` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '小张', '河南商丘', '商丘', '110');
INSERT INTO `customer` VALUES (2, '小孙', '河南郑州', '郑州', '120');
INSERT INTO `customer` VALUES (4, '1', '2', '1', '1');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bumen` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, '王医生', '男', '外科', '5年');
INSERT INTO `doctor` VALUES (2, '李医生', '女', '内科', '8年');
INSERT INTO `doctor` VALUES (9, '小明', '男', '外科', '5年');
INSERT INTO `doctor` VALUES (10, '1', '1', '1', '1');

-- ----------------------------
-- Table structure for mrecords
-- ----------------------------
DROP TABLE IF EXISTS `mrecords`;
CREATE TABLE `mrecords`  (
  `pname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `master` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mrecords
-- ----------------------------
INSERT INTO `mrecords` VALUES ('Tom', '小张', '小老鼠', '2020-6-24', '这个小老鼠容易发烧');
INSERT INTO `mrecords` VALUES ('Jerry', '小王', '大猫', '2020-6-25', '这个大猫一直想吃小老鼠');
INSERT INTO `mrecords` VALUES ('1', '1', '12', '2020-06-25', '11111');

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bath` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `master` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES (1, 'Tom', '小老鼠', '2020-6-21', '小张');
INSERT INTO `pet` VALUES (2, 'Jerry', '大猫', '2020-6-22', '小王');
INSERT INTO `pet` VALUES (3, 'Rate', '未知', '2020-6-23', '小张');
INSERT INTO `pet` VALUES (4, 'Fee', '大蛇', '2020-6-25', '小王');
INSERT INTO `pet` VALUES (6, '1', '12', '1', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'tomcat', '123456', '1111');
INSERT INTO `user` VALUES (2, 'tomcat4', '1234567', '2');
INSERT INTO `user` VALUES (5, 'tomcat2', '123455', '11@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
