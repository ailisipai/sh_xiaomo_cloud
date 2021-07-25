/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.93.168
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 192.168.93.168:3306
 Source Schema         : wpp001

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 25/07/2021 17:57:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for SYS_RESOURCE_INFO
-- ----------------------------
DROP TABLE IF EXISTS `SYS_RESOURCE_INFO`;
CREATE TABLE `SYS_RESOURCE_INFO`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '资源id',
  `RESOURCE_PATH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源路径',
  `RESOURCE_AUTH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源权限表达式',
  `CURRENT_DATE` datetime NULL DEFAULT NULL COMMENT '创建事件',
  `ORDER_INDEX` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `PID` bigint(20) NULL DEFAULT NULL COMMENT '上级菜单id',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `RESOURCE_ID_INDEX`(`ID`) USING BTREE COMMENT '资源id'
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_RESOURCE_INFO
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_ROLE_INFO
-- ----------------------------
DROP TABLE IF EXISTS `SYS_ROLE_INFO`;
CREATE TABLE `SYS_ROLE_INFO`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `ROLE_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `ROLE_DESC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `CREATE_DATE` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ORDER_INDEX` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ROLE_ID_INDEX`(`ID`) USING BTREE COMMENT '角色id'
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_ROLE_INFO
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_ROLE_RESOURCE_RELATION
-- ----------------------------
DROP TABLE IF EXISTS `SYS_ROLE_RESOURCE_RELATION`;
CREATE TABLE `SYS_ROLE_RESOURCE_RELATION`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色用户关联表id',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色id',
  `RESOURCE_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `CREATE_DATE` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `REALTION_ID_INDEX`(`ID`) USING BTREE COMMENT '关联关系id索引',
  UNIQUE INDEX `ROLE_RESOURCE_ID_INDEX`(`ROLE_ID`, `RESOURCE_ID`) USING BTREE,
  UNIQUE INDEX `RESOURCE_ROLE_ID_INDEX`(`RESOURCE_ID`, `ROLE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色资源关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_ROLE_RESOURCE_RELATION
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_ROLE_USER_RELATION
-- ----------------------------
DROP TABLE IF EXISTS `SYS_ROLE_USER_RELATION`;
CREATE TABLE `SYS_ROLE_USER_RELATION`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色用户关联表id',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色id',
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `CREATE_DATE` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `REALTION_ID_INDEX`(`ID`) USING BTREE COMMENT '关联关系id索引',
  UNIQUE INDEX `ROLE_USER_ID_INDEX`(`ROLE_ID`, `USER_ID`) USING BTREE,
  UNIQUE INDEX `USER_ROLE_ID_INDEX`(`USER_ID`, `ROLE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_ROLE_USER_RELATION
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_USER_INFO
-- ----------------------------
DROP TABLE IF EXISTS `SYS_USER_INFO`;
CREATE TABLE `SYS_USER_INFO`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USER_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `REAL_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `ADDRESS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `STATUS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户状态：封禁、未封禁',
  `IS_DEL` tinyint(1) NULL DEFAULT NULL COMMENT '当前用户是否删除：1：true 0:false',
  `USER_EMAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `USER_IPHONE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `USER_AGE` int(3) NULL DEFAULT NULL COMMENT '用户年龄',
  `USER_BIRTHDAY` date NULL DEFAULT NULL COMMENT '用户生日',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `SCHOOL_ID` bigint(20) NOT NULL COMMENT '学校id',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `SCHOOL_ID_INDEX`(`SCHOOL_ID`) USING BTREE COMMENT '学校关联索引'
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_USER_INFO
-- ----------------------------
INSERT INTO `SYS_USER_INFO` VALUES (1, 'xiaomo', '123456', '汪沛', '上海市', '1', 0, '13585951973', '13585951973', 18, '2021-02-02', '2021-02-02 22:00:02', '2021-02-02 22:00:05', 1);
INSERT INTO `SYS_USER_INFO` VALUES (2, 'xiaomo', '123456', '大婉', '上海市', '1', 0, '13585951973', '13585951973', 18, '2021-02-02', '2021-02-02 22:00:02', '2021-02-02 22:00:05', 2);
INSERT INTO `SYS_USER_INFO` VALUES (3, 'xiaomo', '123456', '小婉', '上海市', '1', 0, '13585951973', '13585951973', 18, '2021-02-02', '2021-02-02 22:00:02', '2021-02-02 22:00:05', 3);
INSERT INTO `SYS_USER_INFO` VALUES (4, 'xiaomo', '123456', '画画', '上海市', '1', 0, '13585951973', '13585951973', 18, '2021-02-02', '2021-02-02 22:00:02', '2021-02-02 22:00:05', 1);
INSERT INTO `SYS_USER_INFO` VALUES (5, 'xiaomo', '123456', '灵兽', '上海市', '1', 0, '13585951973', '13585951973', 18, '2021-02-02', '2021-02-02 22:00:02', '2021-02-02 22:00:05', 2);
INSERT INTO `SYS_USER_INFO` VALUES (6, 'xiaomo', '123456', '小魔', '上海市', '1', 0, '13585951973', '13585951973', 18, '2021-02-02', '2021-02-02 22:00:02', '2021-02-02 22:00:05', 3);

SET FOREIGN_KEY_CHECKS = 1;
