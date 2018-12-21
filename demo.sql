/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云服务器
Source Server Version : 50642
Source Host           : 139.199.82.83:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-20 15:41:20
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
  `thumbnail` varchar(2000) DEFAULT '' COMMENT '缩略图',
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='资讯表';

-- ----------------------------
-- Records of admin_information
-- ----------------------------
INSERT INTO `admin_information` VALUES ('1', '测试标题', '测试缩略标题', '2', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<ol>\n<li><em>第一段</em><span style=\"text-decoration: underline;\">内容</span><span style=\"text-decoration: line-through;\">测试</span><strong>测<sub>12<sup>11</sup></sub></strong></li>\n<li>第二段水平线<hr /></li>\n<li>第三段链接测试<a href=\"https://www.baidu.com/\" target=\"_blank\" rel=\"noopener\">百度</a></li>\n<li>图片<img src=\"https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png\" alt=\"公司图片\" width=\"39\" height=\"54\" /></li>\n<li>11</li>\n</ol>', null, '1', null, null, '2018-12-12 17:38:23', null, '2018-12-19 17:04:07', '', '');
INSERT INTO `admin_information` VALUES ('2', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:38:24', null, '2018-12-18 14:49:19', '', '');
INSERT INTO `admin_information` VALUES ('3', '测试标题', '测试缩略标题', '2', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:38:25', null, '2018-12-18 14:49:19', '', '');
INSERT INTO `admin_information` VALUES ('4', '测试标题', '测试缩略标题', '3', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:38:25', null, '2018-12-18 14:49:19', '', '');
INSERT INTO `admin_information` VALUES ('5', '测试标题', '测试缩略标题', '2', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:38:25', null, '2018-12-18 14:49:19', '', '');
INSERT INTO `admin_information` VALUES ('6', '测试标题', '测试缩略标题', '3', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:38:26', null, '2018-12-18 14:49:19', '', '');
INSERT INTO `admin_information` VALUES ('7', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:38:26', null, '2018-12-18 14:49:20', '', '');
INSERT INTO `admin_information` VALUES ('8', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:38:26', null, '2018-12-18 14:49:20', '', '');
INSERT INTO `admin_information` VALUES ('9', '测试标题', '测试缩略标题', '2', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<ul>\n<li>1212</li>\n<li>1212</li>\n<li>1212</li>\n</ul>\n<hr />\n<ol>\n<li>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n</ol>', null, '1', null, null, '2018-12-12 17:38:27', null, '2018-12-18 14:49:20', '', '');
INSERT INTO `admin_information` VALUES ('10', '测试标题', '测试缩略标题', '2', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:38:28', null, '2018-12-18 14:49:20', '', '');
INSERT INTO `admin_information` VALUES ('11', '测试标题', '测试缩略标题', '3', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:49:14', null, '2018-12-18 14:49:20', '', '');
INSERT INTO `admin_information` VALUES ('12', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '0', null, null, '2018-12-12 17:49:15', null, '2018-12-18 14:49:20', '', '');
INSERT INTO `admin_information` VALUES ('13', '测试标题', '测试缩略标题', '2', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:49:15', null, '2018-12-18 14:49:21', '', '');
INSERT INTO `admin_information` VALUES ('14', '测试标题', '测试缩略标题', '3', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:49:15', null, '2018-12-18 14:49:21', '', '');
INSERT INTO `admin_information` VALUES ('15', '测试标题', '测试缩略标题', '2', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:49:15', null, '2018-12-18 14:49:21', '', '');
INSERT INTO `admin_information` VALUES ('16', '测试标题', '测试缩略标题', '3', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:49:16', null, '2018-12-18 14:49:21', '', '');
INSERT INTO `admin_information` VALUES ('17', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:49:16', null, '2018-12-18 14:49:21', '', '');
INSERT INTO `admin_information` VALUES ('18', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-12 17:49:16', null, '2018-12-18 14:49:21', '', '');
INSERT INTO `admin_information` VALUES ('19', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-13 09:20:12', null, '2018-12-18 14:49:21', '', '');
INSERT INTO `admin_information` VALUES ('20', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-13 09:20:12', null, '2018-12-18 14:49:22', '', '');
INSERT INTO `admin_information` VALUES ('21', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-13 09:20:13', null, '2018-12-18 14:49:22', '', '');
INSERT INTO `admin_information` VALUES ('22', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '0', null, null, '2018-12-13 09:20:13', null, '2018-12-18 14:49:22', '', '');
INSERT INTO `admin_information` VALUES ('23', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-13 09:20:13', null, '2018-12-18 14:49:22', '', '');
INSERT INTO `admin_information` VALUES ('24', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-13 09:20:14', null, '2018-12-18 14:49:22', '', '');
INSERT INTO `admin_information` VALUES ('25', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-13 09:20:14', null, '2018-12-18 14:49:22', '', '');
INSERT INTO `admin_information` VALUES ('26', '测试标题', '测试缩略标题', '1', '测试关键字', '测试摘要', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', null, '1', null, null, '2018-12-13 09:20:16', null, '2018-12-18 14:49:23', '', '');
INSERT INTO `admin_information` VALUES ('27', '标题', '简短标题', '1', '关键字', '缩略', 'alex', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试测试测', null, '1', null, null, '2018-12-13 11:56:14', null, '2018-12-18 14:49:23', '', '');
INSERT INTO `admin_information` VALUES ('28', '标题2', '简短标题2', '3', '关键字', '缩略', 'alex', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '测试内容测试测试测', null, '1', null, null, '2018-12-13 11:56:59', null, '2018-12-18 14:49:23', '', '');
INSERT INTO `admin_information` VALUES ('29', '1', '1', '2', '1', '1', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '1', null, '1', null, null, '2018-12-13 13:37:36', null, '2018-12-18 14:49:23', '', '');
INSERT INTO `admin_information` VALUES ('30', '1', '1', '2', '1', '1', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '1', null, '1', null, null, '2018-12-13 13:37:45', null, '2018-12-18 14:49:23', '', '');
INSERT INTO `admin_information` VALUES ('31', '2', '2', '1', '2', '2', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '2', null, '1', null, null, '2018-12-13 13:43:20', null, '2018-12-18 14:49:23', '', '');
INSERT INTO `admin_information` VALUES ('32', '4', '222', '1', '4', '4', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '4', null, '1', null, null, '2018-12-13 13:45:44', null, '2018-12-18 14:49:23', '', '');
INSERT INTO `admin_information` VALUES ('33', '3', '3', '1', '2', '2', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>2</p>', null, '1', null, null, '2018-12-13 13:46:23', null, '2018-12-18 14:49:24', '', '');
INSERT INTO `admin_information` VALUES ('34', '7', '7', '1', '7', '7', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '7', null, '1', null, null, '2018-12-13 13:47:27', null, '2018-12-18 14:49:24', '', '');
INSERT INTO `admin_information` VALUES ('35', '5', '5', '1', '5', '5', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '5', null, '1', null, null, '2018-12-13 13:49:09', null, '2018-12-18 14:49:24', '', '');
INSERT INTO `admin_information` VALUES ('36', '8', '8', '1', '8', '8', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '8', null, '1', null, null, '2018-12-13 13:57:58', null, '2018-12-18 14:49:24', '', '');
INSERT INTO `admin_information` VALUES ('37', '1', '22', '1', '1', '1', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>22222</p>', null, '1', null, null, '2018-12-13 14:19:14', null, '2018-12-18 14:49:24', '', '');
INSERT INTO `admin_information` VALUES ('38', '12', '12', '1', '12', '12', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>千万122121212喂喂喂</p>', null, '0', null, null, '2018-12-13 16:02:26', null, '2018-12-18 14:49:24', '', '');
INSERT INTO `admin_information` VALUES ('39', '12', '12', '1', '12', '1212', 'admin', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>千万122121212千万&nbsp;</p>', null, '1', null, null, '2018-12-13 16:04:38', null, '2018-12-18 14:49:24', '', '');
INSERT INTO `admin_information` VALUES ('40', '12', '12', '1', '12', '12', '12', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>最新</p>', null, '1', null, null, '2018-12-13 16:26:07', null, '2018-12-18 14:49:25', '', '');
INSERT INTO `admin_information` VALUES ('41', '12', '12', '1', '12', '12', '12', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>1212</p>', null, '0', null, null, '2018-12-13 16:27:51', null, '2018-12-18 14:49:25', '', '');
INSERT INTO `admin_information` VALUES ('42', '12', '12', '1', '12', '12', '12', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>12</p>', null, '1', null, null, '2018-12-13 16:28:07', null, '2018-12-18 14:49:25', '', '');
INSERT INTO `admin_information` VALUES ('43', 'Alex特殊', '12', '1', '12', '12', '12', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>1212 爱啥阿斯顿阿斯顿爱啥大苏打爱啥打算</p>', null, '1', null, null, '2018-12-13 16:29:19', null, '2018-12-18 14:49:25', '', '');
INSERT INTO `admin_information` VALUES ('44', '标题2', '简短标题2', '3', '关键字', '缩略', 'alex', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>测试内容测试测试测</p>', null, '1', null, null, '2018-12-13 11:56:59', null, '2018-12-18 14:49:25', '', '');
INSERT INTO `admin_information` VALUES ('45', '标题2', '简短标题2', '3', '关键字', '缩略', 'alex', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>测试内容测试测试测12 12 12 12</p>', null, '1', null, null, '2018-12-13 11:56:59', null, '2018-12-18 14:49:25', '', '');
INSERT INTO `admin_information` VALUES ('46', '标题2333122121标题2333122121标题2333122121标题2333122121标题2333122121标题2333122121', '简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2', '3', '关键字', '简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2', 'alex', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/information/noavatar_small-1545115986491.gif', '<p>测试内容测试测试测12 12 12 121212 12</p>', null, '1', null, null, '2018-12-13 11:56:59', null, '2018-12-18 14:53:17', '', '');
INSERT INTO `admin_information` VALUES ('47', '12', '12', '1', '1221', '21', '12', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<ol>\n<li>阿斯顿飒飒打17:57:1012/13/2018爱啥啊&nbsp;</li>\n</ol>', null, '1', null, null, '2018-12-13 17:57:47', null, '2018-12-18 14:49:26', '', '');
INSERT INTO `admin_information` VALUES ('48', '21', '12', '1', '21', '12', '123', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/information/noavatar_small-1545117232205.gif', '<ul class=\"ol\">\n<li>\n<p><span id=\"src_0_0\" class=\"\">教学</span><span id=\"src_0_1\" class=\"\">案例</span><span id=\"src_0_2\"><strong>资源</strong></span>是<span id=\"src_0_3\">包含</span>有<span id=\"src_0_4\" class=\"\"><strong>大量</strong></span><span id=\"src_0_5\"><strong>文本</strong></span>、<span id=\"src_0_6\" class=\"\">图形</span><span id=\"src_0_7\">和</span><span id=\"src_0_8\">音视频</span><span id=\"src_0_9\">等</span>文件<span id=\"src_0_10\" class=\"\">的</span><span id=\"src_0_11\"><strong>资源</strong></span>集。</p>\n<p><span id=\"tran_0_0\" class=\"\">Resources</span>&nbsp;<span id=\"tran_0_1\" class=\"\">of</span>&nbsp;<span id=\"tran_0_2\" class=\"\">teaching</span>&nbsp;<span id=\"tran_0_3\" class=\"\">cases</span>&nbsp;<span id=\"tran_0_4\">consisted</span>&nbsp;<span id=\"tran_0_5\" class=\"\">of lots of</span>&nbsp;<span id=\"tran_0_6\" class=\"\">pictures</span>,&nbsp;<span id=\"tran_0_7\">text</span>,&nbsp;<span id=\"tran_0_8\">videos</span>&nbsp;<span id=\"tran_0_9\">and</span>&nbsp;<span id=\"tran_0_10\">so on</span>.&nbsp;</p>\n<p class=\"example-via\"><a href=\"http://www.fabiao.net/show.php?contentid=278512\" target=\"_blank\" rel=\"nofollow noopener\">www.fabiao.net</a></p>\n</li>\n<li>\n<p><span id=\"src_1_0\" class=\"\">有</span><span id=\"src_1_1\">很多</span><span id=\"src_1_2\" class=\"\">网上</span>的<span id=\"src_1_3\" class=\"\">学习</span><span id=\"src_1_4\" class=\"\">拉丁语</span>的<span id=\"src_1_5\" class=\"\"><strong>资源</strong></span>，<span id=\"src_1_6\">和</span><span id=\"src_1_7\" class=\"\"><strong>大量</strong></span><span id=\"src_1_8\"><strong>文本</strong></span>（<span id=\"src_1_9\">去</span><span id=\"src_1_10\">你</span><span id=\"src_1_11\">最喜欢</span>的<span id=\"src_1_12\">二手</span><span id=\"src_1_13\" class=\"\">书店</span>找一下）。</p>\n<p><span id=\"tran_1_0\" class=\"\">There</span>&nbsp;<span id=\"tran_1_1\">are</span>&nbsp;<span id=\"tran_1_2\" class=\"\">online</span>&nbsp;<span id=\"tran_1_3\" class=\"\">Latin</span>&nbsp;<span id=\"tran_1_4\" class=\"\">learning</span>&nbsp;<span id=\"tran_1_5\" class=\"\">resources</span>, as&nbsp;<span id=\"tran_1_6\">well as</span>&nbsp;<span id=\"tran_1_7\" class=\"\">plenty of</span>&nbsp;<span id=\"tran_1_8\">texts</span>&nbsp;(<span id=\"tran_1_9\">check out</span>&nbsp;<span id=\"tran_1_10\">your</span>&nbsp;<span id=\"tran_1_11\">favorite</span>&nbsp;<span id=\"tran_1_12\">used</span><span id=\"tran_1_13\" class=\"\">books bookstore</span>).&nbsp;</p>\n<p class=\"example-via\"><a href=\"http://article.yeeyan.org/view/136924/165536\" target=\"_blank\" rel=\"nofollow noopener\">article.yeeyan.org</a></p>\n</li>\n<li>\n<p><span id=\"src_2_0\">通过</span><span id=\"src_2_1\">阅读</span><span id=\"src_2_2\"><strong>大量</strong></span><span id=\"src_2_3\" class=\"\">参考文献</span>，<span id=\"src_2_4\">本文</span><span id=\"src_2_5\" class=\"\">发现</span><span id=\"src_2_6\">目前</span>的<span id=\"src_2_7\" class=\"\">挖掘</span><span id=\"src_2_8\" class=\"\">技术</span><span id=\"src_2_9\" class=\"\">针对</span><span id=\"src_2_10\">半</span><span id=\"src_2_11\">结构化</span>、<span id=\"src_2_12\" class=\"\">非结构化</span>的<span id=\"src_2_13\"><strong>文本</strong></span><span id=\"src_2_14\"><strong>资源</strong></span><span id=\"src_2_15\">有</span><span id=\"src_2_16\">两种</span><span id=\"src_2_17\">解决方案</span>。</p>\n<p><span id=\"tran_2_0\">By</span>&nbsp;<span id=\"tran_2_1\">looking through</span>&nbsp;<span id=\"tran_2_2\">many</span>&nbsp;<span id=\"tran_2_3\" class=\"\">literatures</span>,&nbsp;<span id=\"tran_2_4\">the author</span>&nbsp;<span id=\"tran_2_5\" class=\"\">concludes that</span>&nbsp;<span id=\"tran_2_6\">current</span>&nbsp;<span id=\"tran_2_7\" class=\"\">mining</span>&nbsp;<span id=\"tran_2_8\" class=\"\">technologies</span>&nbsp;<span id=\"tran_2_9\">have</span><span id=\"tran_2_10\">two</span>&nbsp;<span id=\"tran_2_11\">solutions</span>&nbsp;<span id=\"tran_2_12\" class=\"\">for</span>&nbsp;<span id=\"tran_2_13\">semi-</span><span id=\"tran_2_14\">structured</span>&nbsp;and&nbsp;<span id=\"tran_2_15\" class=\"\">unstructured</span>&nbsp;<span id=\"tran_2_16\">text</span>&nbsp;<span id=\"tran_2_17\">data</span>.&nbsp;</p>\n</li>\n</ul>', null, '1', null, null, '2018-12-14 16:17:04', null, '2018-12-18 15:13:54', '', '');
INSERT INTO `admin_information` VALUES ('49', '测试标题1', '测试缩略标1题', '2', '测试关键字', '测试摘要', 'admin', '2', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<ul>\n<li>1212</li>\n<li>1212</li>\n</ul>\n<hr />\n<ol>\n<li>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n<li>容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</li>\n</ol>', null, '1', null, null, '2018-12-12 17:38:27', null, '2018-12-19 10:17:23', '', '');
INSERT INTO `admin_information` VALUES ('50', '1', '1', '1', '111', '1111', '1', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>111</p>', null, '1', null, null, '2018-12-18 10:25:33', null, '2018-12-18 14:49:26', '', '');
INSERT INTO `admin_information` VALUES ('51', '1', '1', '1', '', '', '1', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>1111</p>', null, '1', null, null, '2018-12-18 14:42:10', null, '2018-12-18 14:49:26', '', '');
INSERT INTO `admin_information` VALUES ('52', '1', '1', '1', '1', '1', '1', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<p>111</p>', null, '1', null, null, '2018-12-18 14:48:33', null, '2018-12-18 14:48:33', '', '');
INSERT INTO `admin_information` VALUES ('53', '标题2333122121标题2333122121标题2333122121标题2333122121标题2333122121标题2333122121', '简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2', '3', '关键字', '简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2简短标题2', 'alex1', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/information/noavatar_small-1545115986491.gif', '<p>测试内容测试测试测12 12 12 121212 12</p>', null, '1', null, null, '2018-12-13 11:56:59', null, '2018-12-18 15:14:18', '', '');
INSERT INTO `admin_information` VALUES ('54', '1', '1', '1', '1', '1', '1', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/information/f778738c-e4f8-4870-b634-56703b4acafe-1545118604730.gif', '<p>我们学校每星期四的阅读课，老师规定读《平凡的世界》。我拿着书到学校，坐在座位上，看着桌面上的书，真是一点兴趣都没有。</p>\n<p>　　我从小就不喜欢读书。上小学的时候，读书作业都是糊弄几笔就交上去了，到了初中也照样。我胡乱翻着书思来想去，最终还是决定偷偷写作业。不料，刚写了几笔，就被老师发现并训了一顿。我又不情愿地拿起书来读。起初是烦的，慢慢的竟被书里的内容吸引了，直到下课铃响了，我才从故事中走出来。但书里的故事让我牵肠挂肚。</p>\n<p>　　接下来的几天，我的学习任务很重，读书的时间变得所剩无几，但我的心却在《平凡的世界》里游荡，一直在想书里的孙少安，背着田润叶去山西娶媳妇，田润叶会怎么做，会自杀？还是会和不愿意接触的李向前结婚？这些问题揪着我的心不放。</p>\n<p>　　过了两天，我实在忍不住想知道故事中的人物后来怎样了，便压缩睡眠时间读一小会儿。但这不是长久之计，所以只能等星期四的阅读课，我拿着《平凡的世界》飞奔到教室，急不可待地打开书，尽情地读着，一个星期以来煎熬我的问题被一一解开，真是太过瘾了。下课铃响了，我感觉心里的枷锁被解开了，舒服极了。</p>\n<p>　　以前我一读书就很烦，读不下去。自从读完《平凡的世界》后，每翻开一本书，我都是喜悦的，期盼着书中那个未知世界带给我的独特体验。可以说，《平凡的世界》让我学会了读书，爱上了读书。</p>\n<p>　　读书可以充实我们的思想，可以丰富我们的情感，可以教给我们本领，可以纠正我们的过失在书籍中，你可以真切地感受到生活原本是如此地美好！</p>\n<p>心中装着春天作文 给永远比拿愉快作文 神奇的剪纸作文</p>\n<p>　　因为偶然邂逅，我爱上读书作文</p>\n<p>　　文/关渤翰</p>\n<p>　　在生活中，读书可以说是一件很平常的事，但是对于很多学生来说却是烦恼。我也一样，不爱读书。</p>\n<p>　　我虽然不爱读书，却喜欢看漫画或小视频之类的。而且我有一个习惯，在上卫生间时看这些东西。毕竟上厕所是漫长而无聊的，很需要玩游戏或看小视频来消磨这段时间。</p>\n<p>　　然而开学之后，妈妈便把我的手机没收了，只能看点别的，一般我都是看漫画，但那天我因为肚子疼，就没来得及拿漫画，直接冲进卫生间。正在马桶上坐得无聊，我看到洗衣机上有一本书：《神秘岛》，便拿起来看。</p>\n<p>　　我平时不怎么爱看小说，但此刻实在没什么选择余地。仔细看了一两页后，却被书中的故事深深的吸引了几个逃亡的战俘，一个水手，一个科学家，一个仆人，一个记者，一个小孩和一条狗，他们为了逃出岛，先乘坐热气球，但在中途狂风大作，热气球破了。他们为了逃命，把所有东西都扔掉减轻重量，最后科学家和狗还是被卷入海里不知死活，其他人落到了一个不知名的岛上。我正看到精彩情节，便忘了一切，一页接一页地看下去。在卫生间里呆了半个小时，看过了精彩情节，才想起来自己还在上厕所，回过神来，脑子里依然是那紧张的气氛，精彩的故事。</p>\n<p>　　这次之后，我便知道了读书之法，看见一本书后不要看都不看就认为无聊，只要耐心地看上几页，你真的会被吸引。就像这本在卫生间偶然邂逅的书，让我爱上了读书。</p>\n<p>心中装着春天作文 六年级作文：感恩妈妈 六年级作文：路</p>\n<p>　　玩赛车作文</p>\n<p>　　文/相瑜</p>\n<p>　　瞧！这是妈妈送给我的生日礼物！-----一辆金色的小赛车。我可喜欢它了，每天都要跟它玩一会儿。一看到它，我就会开心地笑起来。</p>\n<p>　　这辆玩具小赛车酷极了！金色的身躯在阳光照射下闪闪发亮、绚丽夺目。开动起来就像一颗流星似的一掠而过。只要我把它带出去玩，没有一个人不称赞的，这让我非常自豪。</p>\n<p>　　我的金色小赛车身长约15厘米,宽约5厘米,小巧珑珑，携带方便。它有四个轮子，一个备胎。如果有一个轮子坏了，可以拿出备用胎来替换。车身底部的内侧有一个卡槽，只要把备用胎卡上去就换好了，安装起来既快又方便。</p>\n<p>　　玩的时候，只需要装入三节五号电池，上足发条，它就会剑一般地向前冲去。那速度总会引来小伙伴们的欢呼和尖叫。</p>\n<p>　　每当我学习得累了、烦了的时候，就会在地板上玩一会儿小赛车。它那快如闪电的身姿好像在说：加足马力！勇往直前！</p>\n<p>　　也许是受它的影响吧，玩好赛车后，我总会浑身充满了力量，在接下来的学习中更加勤奋努力，不再畏惧苦和累了。</p>\n<p>《变》作文 心中装着春天作文 瞳孔深处作文&nbsp;<br />编辑推荐：</p>\n<ul>\n<li><a title=\"小说《活着》读后感\" href=\"http://www.jingdianwenzhang.cn/lizhiwenzhang/wz-1160179.html\" target=\"_blank\" rel=\"noopener\"><strong>小说《活着》读后感</strong></a>&nbsp;<br />小说《活着》读后感 文/雪中寒月梅 用了几天的时间，终于把余华的《活着》这本书看完了。看完了之后，却并不轻松，总感觉有一块石头压在心上，让我喘不过气来，又让我的心一阵...</li>\n<li><a title=\"《长征故事》读后感\" href=\"http://www.jingdianwenzhang.cn/lizhiwenzhang/wz-1160177.html\" target=\"_blank\" rel=\"noopener\"><strong>《长征故事》读后感</strong></a>&nbsp;<br />《长征故事》读后感 文/李佳轩 今年暑假我阅读了祝彦编写的《长征故事》，书中记述了红一方面军、红二方面军、红四方面军和红二十五军长征的重要战役和许多感人故事，让我深刻...</li>\n<li><a title=\"坚持不懈的强者&mdash;&mdash;读《鲁滨逊漂流记》有感\" href=\"http://www.jingdianwenzhang.cn/lizhiwenzhang/wz-1160174.html\" target=\"_blank\" rel=\"noopener\"><strong>坚持不懈的强者&mdash;&mdash;读《鲁滨逊漂流记》有感</strong></a>&nbsp;<br />坚持不懈的强者读《鲁滨逊漂流记》有感 文/李奕霖 外面近来一直连续下雨，我闷在屋子里闲得慌，哎，网上不是说雨天读书最好吗？，我便拿出上个星期五我买的《鲁滨逊漂流记》开...</li>\n<li><a title=\"金庸小说《笑傲江湖》读后感\" href=\"http://www.jingdianwenzhang.cn/lizhiwenzhang/wz-1160173.html\" target=\"_blank\" rel=\"noopener\"><strong>金庸小说《笑傲江湖》读后感</strong></a>&nbsp;<br />金庸小说《笑傲江湖》读后感 文/孟浩然zgz 最近又读了一遍金大侠的名著《笑傲江湖》，感慨不少。 《笑傲江湖》被多次拍成电影电视剧，剧中的令狐冲总是被塑造的很潇洒倜傥，最突.</li>\n</ul>', null, '1', null, null, '2018-12-18 15:16:29', null, '2018-12-18 15:36:49', '', '');
INSERT INTO `admin_information` VALUES ('55', '测试', '测试', '1', '测试', '测试', '测试', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/information/IMG_0225-1545185231395.png', '<p>测试</p>', null, '1', null, null, '2018-12-18 15:37:47', null, '2018-12-19 10:07:13', '', '');
INSERT INTO `admin_information` VALUES ('56', '1', '1', '1', '', '', '', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/information/IMG_0225-1545201356398.png', '<p>111</p>', null, '1', null, null, '2018-12-19 10:43:38', null, '2018-12-19 16:01:32', '', '');
INSERT INTO `admin_information` VALUES ('57', '112', '12', '1', '12', '12', '12', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<ol>\n<li><em>第一段</em><span style=\"text-decoration: underline;\">内容</span><span style=\"text-decoration: line-through;\">测试</span><strong>测<sub>12<sup>11</sup></sub></strong></li>\n<li>第二段水平线<hr /></li>\n<li>第三段链接测试<a href=\"https://www.baidu.com/\" target=\"_blank\" rel=\"noopener\">百度</a></li>\n<li>图片<img src=\"https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png\" alt=\"公司图片\" width=\"39\" height=\"54\" /></li>\n<li>12</li>\n</ol>', null, '1', null, null, '2018-12-19 17:01:41', null, '2018-12-19 17:01:41', '', '');
INSERT INTO `admin_information` VALUES ('58', '12', '12', '1', '1', '1', '1', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<ol>\n<li><em>第一段</em><span style=\"text-decoration: underline;\">内容</span><span style=\"text-decoration: line-through;\">测试</span><strong>测<sub>12<sup>11</sup></sub></strong></li>\n<li>&nbsp;</li>\n<li>12</li>\n</ol>', null, '1', null, null, '2018-12-19 17:03:17', null, '2018-12-19 17:04:03', '', '');
INSERT INTO `admin_information` VALUES ('59', '1220', '1220', '1', '1220', '1220', '1220', '1', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png', '<ol>\n<li><em>第一段</em><span style=\"text-decoration: underline;\">内容</span><span style=\"text-decoration: line-through;\">测试</span><strong>测<sub>12<sup>11</sup></sub></strong></li>\n<li>第二段水平线<hr /></li>\n<li>第三段链接测试<a href=\"https://www.baidu.com/\" target=\"_blank\" rel=\"noopener\">百度</a></li>\n<li>图片<img src=\"https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/icon.png\" alt=\"公司图片\" width=\"39\" height=\"54\" /></li>\n<li>111220</li>\n</ol>', null, '1', null, null, '2018-12-20 08:57:59', null, '2018-12-20 08:57:59', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='留言表';

-- ----------------------------
-- Records of admin_leavemes
-- ----------------------------
INSERT INTO `admin_leavemes` VALUES ('1', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:34', null, '2018-12-14 11:15:57', '', '');
INSERT INTO `admin_leavemes` VALUES ('2', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:34', null, '2018-12-14 14:35:31', '', '');
INSERT INTO `admin_leavemes` VALUES ('3', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:34', null, '2018-12-14 11:15:57', '', '');
INSERT INTO `admin_leavemes` VALUES ('4', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:34', null, '2018-12-14 11:15:57', '', '');
INSERT INTO `admin_leavemes` VALUES ('5', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex1', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:35', null, '2018-12-14 16:16:26', '', '');
INSERT INTO `admin_leavemes` VALUES ('6', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:35', null, '2018-12-14 11:15:57', '', '');
INSERT INTO `admin_leavemes` VALUES ('7', '测试测试测试测试测测试测试测试测试测试测', '测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:35', null, '2018-12-14 14:11:26', '', '');
INSERT INTO `admin_leavemes` VALUES ('8', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:36', null, '2018-12-14 11:15:58', '', '');
INSERT INTO `admin_leavemes` VALUES ('9', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 10:27:37', null, '2018-12-14 11:15:58', '', '');
INSERT INTO `admin_leavemes` VALUES ('10', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 11:34:54', null, '2018-12-14 13:54:23', '', '');
INSERT INTO `admin_leavemes` VALUES ('11', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', 'ceshi ', null, '1', null, null, '2018-12-14 13:53:59', null, '2018-12-14 13:54:24', '', '');
INSERT INTO `admin_leavemes` VALUES ('12', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex', '17616013473', '1074199421@qq.com', '测测', null, '1', null, null, '2018-12-14 13:53:59', null, '2018-12-14 14:37:59', '', '');
INSERT INTO `admin_leavemes` VALUES ('13', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex1', '17616013473', '1074199421@qq.com', '111', null, '1', null, null, '2018-12-14 13:54:00', null, '2018-12-14 16:15:59', '', '');
INSERT INTO `admin_leavemes` VALUES ('14', '测试测试测试测试测试测试测试测试测试测试测试测试测', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'alex1', '17616013473', '1074199421@qq.com', 'ceshi ', null, '0', null, null, '2018-12-14 13:54:00', null, '2018-12-14 16:16:22', '', '');
INSERT INTO `admin_leavemes` VALUES ('15', '测试测试测试测试测试测试测试测试测试测试测试测试测', '开放时间：08:30~17:00 Tips:中山陵景区平日每周一闭馆，法定节假日周一照常开放。', '区1象路', '(025)84431174', '1074199421@qq.com', '南京市玄武区石象路7号', null, '1', null, null, '2018-12-14 13:54:01', null, '2018-12-14 16:15:51', '', '');
INSERT INTO `admin_leavemes` VALUES ('16', '1', '1', '1', '17626013473', '1074199421@qq.com', '1', null, '1', null, null, '2018-12-14 10:27:37', null, '2018-12-14 16:26:27', '', '');
INSERT INTO `admin_leavemes` VALUES ('17', '12', '12', '121', '17626011111', '1074199421@qq.com', '1212', null, '1', null, null, '2018-12-14 10:27:37', null, '2018-12-18 17:35:16', '', '');

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
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_picture_manage
-- ----------------------------
DROP TABLE IF EXISTS `sys_picture_manage`;
CREATE TABLE `sys_picture_manage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `picture_name` varchar(50) DEFAULT NULL COMMENT '图片名称',
  `picture_size` varchar(20) DEFAULT NULL COMMENT '图片大小',
  `picture_url` varchar(500) DEFAULT NULL COMMENT '图片url',
  `picture_key` varchar(100) DEFAULT NULL COMMENT '图片key',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '数据状态 1可用，0不可用',
  `version` int(10) DEFAULT NULL COMMENT '数据版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统图片管理';

-- ----------------------------
-- Records of sys_picture_manage
-- ----------------------------
INSERT INTO `sys_picture_manage` VALUES ('1', 'IMG_0225-1545272578148.png', '37KB', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/information/IMG_0225-1545272578148.png', '/demo/information/IMG_0225-1545272578148.png', null, '0', null, null, null, null, null, null, null);

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
-- Records of sys_role
-- ----------------------------

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
-- Records of sys_role_menu
-- ----------------------------

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
INSERT INTO `sys_user` VALUES ('1', '', 'alex', 'alex', '202cb962ac59075b964b07152d234b70', '', null, null, '', '', '', '', 'https://joker-1256309280.cos.ap-shanghai.myqcloud.com/demo/static/IMG_0225.png', null, null, null, '1', null, null, null, null, null, '', '');

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

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
