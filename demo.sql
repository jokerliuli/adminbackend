/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云服务器
Source Server Version : 50642
Source Host           : 139.199.82.83:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-17 13:41:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_information
-- ----------------------------
DROP TABLE IF EXISTS `admin_information`;
CREATE TABLE `admin_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '文章标题',
  `short_title` varchar(50) DEFAULT '' COMMENT '简略标题',
  `information_type` int(5) DEFAULT '1' COMMENT '分类栏目：新闻动态(1)，产品方案(2)，成功案例(3) ',
  `keyword` varchar(100) DEFAULT '' COMMENT '关键词',
  `summary` varchar(500) DEFAULT '' COMMENT '文章摘要',
  `author` varchar(100) DEFAULT '' COMMENT '文章作者',
  `publish_status` int(5) DEFAULT '1' COMMENT '删除(0)草稿(1)发布(2)',
  `thumbnail` varchar(500) DEFAULT '' COMMENT '缩略图',
  `content` longtext COMMENT '文章内容',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '1' COMMENT '数据状态 1可用，0不可用',
  `version` int(10) DEFAULT NULL COMMENT '数据版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remarks` varchar(500) DEFAULT '' COMMENT '备注',
  `uuid` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pk_id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='资讯表';

-- ----------------------------
-- Table structure for admin_leavemes
-- ----------------------------
DROP TABLE IF EXISTS `admin_leavemes`;
CREATE TABLE `admin_leavemes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '留言标题',
  `content` varchar(500) DEFAULT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机号',
  `email` varchar(200) DEFAULT '' COMMENT '电子邮箱',
  `address` varchar(200) DEFAULT '' COMMENT '地址',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '1' COMMENT '数据状态 1可用，0不可用',
  `version` int(10) DEFAULT NULL COMMENT '数据版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remarks` varchar(500) DEFAULT '' COMMENT '备注',
  `uuid` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pk_id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='留言表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父ID',
  `menu_code` varchar(100) DEFAULT NULL COMMENT '菜单code',
  `menu_type` varchar(20) DEFAULT NULL COMMENT '类型（MENU菜单,ACTION链接,BUTTON按钮）',
  `menu_name` varchar(200) DEFAULT NULL COMMENT '名称',
  `menu_level` int(5) DEFAULT NULL COMMENT '级别',
  `menu_permission` varchar(1000) DEFAULT NULL COMMENT '权限字符串',
  `menu_icon` varchar(200) DEFAULT NULL COMMENT '图标',
  `menu_action` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `url` varchar(100) DEFAULT NULL COMMENT '跳转url',
  `url_name` varchar(100) DEFAULT NULL COMMENT 'url名称',
  `name` varchar(100) DEFAULT NULL COMMENT '路由名',
  `component` varchar(100) DEFAULT NULL COMMENT '组件名',
  `isSkip` varchar(20) DEFAULT '0' COMMENT '是否跳转 1可跳 0不可',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '1' COMMENT '数据状态 1可用，0不可用',
  `version` int(10) DEFAULT NULL COMMENT '数据版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '1' COMMENT '数据状态 1可用，0不可用',
  `version` int(10) DEFAULT NULL COMMENT '数据版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色表';

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单id',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '1' COMMENT '数据状态 1可用，0不可用',
  `version` int(10) DEFAULT NULL COMMENT '数据版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `org_id` bigint(20) DEFAULT NULL COMMENT '组织id',
  `uuid` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL COMMENT '标志',
  PRIMARY KEY (`id`),
  KEY `pk_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色菜单表';

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
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `org_id` bigint(20) DEFAULT NULL COMMENT '部门id',
  `is_primary` int(1) DEFAULT NULL COMMENT '是否为主部门 1为是,0为否',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '1' COMMENT '数据状态 1可用，0不可用',
  `version` int(10) DEFAULT NULL COMMENT '数据版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `uid` varchar(255) DEFAULT NULL COMMENT '关联部门岗位表字段',
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pk_id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户角色表';
