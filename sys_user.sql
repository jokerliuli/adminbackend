/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云服务器
Source Server Version : 50642
Source Host           : 139.199.82.83:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-17 14:30:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_type` varchar(20) NOT NULL DEFAULT '' COMMENT '用户类型（USER普通用户，ADMIN管理员） ',
  `login_name` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `true_name` varchar(100) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `salt` varchar(100) DEFAULT '' COMMENT '盐值',
  `sex` int(10) DEFAULT NULL COMMENT '性别（10男，20女）',
  `brithday` datetime DEFAULT NULL COMMENT '生日',
  `id_card` varchar(18) DEFAULT '' COMMENT '身份证号码',
  `email` varchar(200) DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机号',
  `phone` varchar(20) DEFAULT '' COMMENT '固定电话',
  `head_img` varchar(500) DEFAULT '' COMMENT '头像',
  `register_date` datetime DEFAULT NULL COMMENT '注册日期',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '1' COMMENT '数据状态 1可用，0不可用',
  `version` int(10) DEFAULT NULL COMMENT '数据版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remarks` varchar(500) DEFAULT '' COMMENT '备注',
  `uuid` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pk_id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '', 'alex', 'alex', '202cb962ac59075b964b07152d234b70', '', null, null, '', '', '', '', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', null, null, null, '1', null, null, null, null, null, '', '');
