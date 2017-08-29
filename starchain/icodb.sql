/*
Navicat MySQL Data Transfer

Source Server         : ico
Source Server Version : 50634
Source Host           : rm-uf65k2rk1x7ls2r5bo.mysql.rds.aliyuncs.com:3306
Source Database       : icodb

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2017-08-29 22:51:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ico_buss_content_manage
-- ----------------------------
DROP TABLE IF EXISTS `ico_buss_content_manage`;
CREATE TABLE `ico_buss_content_manage` (
  `id` char(51) NOT NULL,
  `module_id` varchar(100) DEFAULT NULL COMMENT '模块ID',
  `module_name` varchar(200) DEFAULT NULL COMMENT '模块名称',
  `module_desc` varchar(255) DEFAULT NULL COMMENT '模块描述',
  `title` varchar(255) DEFAULT NULL COMMENT '内容标题',
  `content` blob COMMENT '内容正文',
  `img_path` varchar(255) DEFAULT NULL COMMENT '内容图片路径',
  `video_path` varchar(255) DEFAULT NULL COMMENT '内容视频路径',
  `href` varchar(255) DEFAULT NULL COMMENT '内容链接',
  `create_date` char(8) DEFAULT NULL,
  `create_time` char(9) DEFAULT NULL,
  `update_date` char(8) DEFAULT NULL,
  `update_time` char(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内容管理表';

-- ----------------------------
-- Table structure for ico_dict_field
-- ----------------------------
DROP TABLE IF EXISTS `ico_dict_field`;
CREATE TABLE `ico_dict_field` (
  `table_name` varchar(100) NOT NULL COMMENT '表名',
  `field_name` varchar(50) NOT NULL COMMENT '字段名',
  `value_id` varchar(100) DEFAULT NULL COMMENT '字段值ID',
  PRIMARY KEY (`table_name`,`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表字段信息表';

-- ----------------------------
-- Table structure for ico_dict_field_value
-- ----------------------------
DROP TABLE IF EXISTS `ico_dict_field_value`;
CREATE TABLE `ico_dict_field_value` (
  `value_id` varchar(100) NOT NULL COMMENT '字段值ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `value` varchar(200) NOT NULL COMMENT '字段值',
  `detail` varchar(255) DEFAULT NULL COMMENT '值含义详细描述',
  PRIMARY KEY (`value_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表字段值信息表';

-- ----------------------------
-- Table structure for ico_flow_trade
-- ----------------------------
DROP TABLE IF EXISTS `ico_flow_trade`;
CREATE TABLE `ico_flow_trade` (
  `flow_id` char(51) NOT NULL COMMENT '流水id',
  `type` char(3) DEFAULT NULL COMMENT '交易类型',
  `from_currency` char(5) DEFAULT NULL COMMENT '交易来源币种',
  `to_currency` char(5) DEFAULT NULL COMMENT '交易对手币种',
  `from_user_id` varchar(25) DEFAULT NULL COMMENT '交易用户id',
  `from_account` varchar(255) DEFAULT NULL COMMENT '交易用户账号',
  `from_amount` decimal(12,8) DEFAULT NULL COMMENT '入账交易金额',
  `to_user_id` varchar(25) DEFAULT NULL COMMENT '交易对手id',
  `to_account` varchar(255) DEFAULT NULL COMMENT '交易对手账号',
  `to_amount` decimal(12,8) DEFAULT NULL COMMENT '出账交易金额',
  `tx_date` char(8) DEFAULT NULL COMMENT '交易日期',
  `tx_time` char(9) DEFAULT NULL COMMENT '交易时间',
  `tx_reference` varchar(100) DEFAULT NULL COMMENT '关联交易信息(区块链hashcode、活动id)',
  `ret_code` varchar(6) DEFAULT NULL COMMENT '结果码',
  `ret_message` varchar(255) DEFAULT NULL COMMENT '结果信息',
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易流水表';

-- ----------------------------
-- Table structure for ico_log_journal
-- ----------------------------
DROP TABLE IF EXISTS `ico_log_journal`;
CREATE TABLE `ico_log_journal` (
  `id` char(51) NOT NULL COMMENT '操作id',
  `op_date` char(8) DEFAULT NULL COMMENT '操作日期',
  `op_time` char(9) DEFAULT NULL COMMENT '操作时间',
  `op_user_id` varchar(25) DEFAULT NULL COMMENT '操作人员的用户id',
  `module_id` varchar(100) DEFAULT NULL COMMENT '操作模块',
  `op_content` varchar(512) DEFAULT NULL COMMENT '操作详情',
  `ret_code` varchar(6) DEFAULT NULL COMMENT '结果码',
  `ret_message` varchar(255) DEFAULT NULL COMMENT '结果信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志记录表';

-- ----------------------------
-- Table structure for ico_mall_auctionstate
-- ----------------------------
DROP TABLE IF EXISTS `ico_mall_auctionstate`;
CREATE TABLE `ico_mall_auctionstate` (
  `auction_user_id` varchar(32) NOT NULL,
  `auction_commodity_id` varchar(32) NOT NULL,
  `auction_price` decimal(20,8) NOT NULL,
  `auction_due_date` char(8) NOT NULL,
  `auction_due_time` char(9) NOT NULL,
  PRIMARY KEY (`auction_commodity_id`,`auction_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ico_mall_commodity
-- ----------------------------
DROP TABLE IF EXISTS `ico_mall_commodity`;
CREATE TABLE `ico_mall_commodity` (
  `commodity_id` varchar(25) NOT NULL COMMENT '商品ID',
  `commodity_name` varchar(11) NOT NULL COMMENT '商品名称',
  `seller_user_id` varchar(25) NOT NULL COMMENT '商品提供商',
  `commodity_price` decimal(20,8) NOT NULL COMMENT '商品价格',
  `commodity_block` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品所属的版块',
  `commodity_type` varchar(20) NOT NULL COMMENT '商品状态：P可交易 R不可交易',
  `commodity_info` varchar(255) DEFAULT NULL COMMENT '商品信息',
  `commodity_create_time` char(9) NOT NULL,
  `commodity_create_date` char(8) NOT NULL,
  `commodity_update_time` char(9) DEFAULT NULL,
  `commodity_update_date` char(8) DEFAULT NULL,
  `commodity_due_time` char(9) DEFAULT NULL,
  `commodity_due_date` char(8) DEFAULT NULL,
  PRIMARY KEY (`commodity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ico_mall_order
-- ----------------------------
DROP TABLE IF EXISTS `ico_mall_order`;
CREATE TABLE `ico_mall_order` (
  `order_id` varchar(25) NOT NULL DEFAULT '订单ID',
  `costumer_id` varchar(25) NOT NULL,
  `order_commodity_id` varchar(25) NOT NULL,
  `order_commodity_cnt` int(4) NOT NULL COMMENT '商品个数',
  `order_price` decimal(20,8) DEFAULT NULL COMMENT '订单价格，可供商家修改',
  `order_status` varchar(20) NOT NULL COMMENT '订单状态',
  `order_address` varchar(25) DEFAULT NULL,
  `order_phone` char(11) DEFAULT NULL,
  `order_create_time` char(9) NOT NULL,
  `order_create_date` char(8) NOT NULL,
  `order_update_time` char(9) DEFAULT NULL,
  `order_update_date` char(8) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ico_project_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ico_project_favorite`;
CREATE TABLE `ico_project_favorite` (
  `user_id` varchar(25) NOT NULL COMMENT '用户ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `create_date` char(8) DEFAULT NULL,
  `create_time` char(9) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏夹';

-- ----------------------------
-- Table structure for ico_project_info
-- ----------------------------
DROP TABLE IF EXISTS `ico_project_info`;
CREATE TABLE `ico_project_info` (
  `id` varchar(32) NOT NULL COMMENT '项目id',
  `create_date` char(8) DEFAULT NULL COMMENT '项目创建日期',
  `create_time` char(9) DEFAULT NULL COMMENT '项目创建时间',
  `update_date` char(8) DEFAULT NULL COMMENT '项目更新日期',
  `update_time` char(9) DEFAULT NULL COMMENT '项目更新时间',
  `fund_start_date` char(8) DEFAULT NULL COMMENT '众筹开始日期',
  `fund_start_time` char(9) DEFAULT NULL COMMENT '众筹开始时间',
  `total_time` int(11) DEFAULT NULL COMMENT '众筹总时间',
  `fund_amount` decimal(12,7) DEFAULT NULL COMMENT '众筹额度（ETH）',
  `rate` decimal(12,7) DEFAULT NULL COMMENT '代币单价(ETH)',
  `currency_zh` varchar(255) DEFAULT NULL COMMENT '代币中文名称',
  `currency_en` varchar(255) DEFAULT NULL COMMENT '代币英文名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ_CURRENCY_EN` (`currency_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目库信息表';

-- ----------------------------
-- Table structure for ico_project_vote
-- ----------------------------
DROP TABLE IF EXISTS `ico_project_vote`;
CREATE TABLE `ico_project_vote` (
  `id` char(51) NOT NULL,
  `user_id` varchar(25) DEFAULT NULL COMMENT '用户id',
  `project_id` varchar(32) DEFAULT NULL COMMENT '项目id',
  `eth_number` decimal(12,7) DEFAULT NULL COMMENT 'eth个数',
  `token_nubmer` decimal(12,7) DEFAULT NULL COMMENT '代币个数',
  `create_date` char(8) DEFAULT NULL,
  `create_time` char(9) DEFAULT NULL,
  `update_date` char(8) DEFAULT NULL,
  `update_time` char(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目参投记录表';

-- ----------------------------
-- Table structure for ico_sequence
-- ----------------------------
DROP TABLE IF EXISTS `ico_sequence`;
CREATE TABLE `ico_sequence` (
  `seq_id` varchar(25) NOT NULL COMMENT '序列id',
  `value` int(11) DEFAULT NULL COMMENT '值',
  `detail` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`seq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='序列生成表(用于序列生成时的记录)';

-- ----------------------------
-- Table structure for ico_system_privilege
-- ----------------------------
DROP TABLE IF EXISTS `ico_system_privilege`;
CREATE TABLE `ico_system_privilege` (
  `id` char(32) NOT NULL COMMENT '权限id',
  `view_name` varchar(150) NOT NULL COMMENT '权限显示名称',
  `parent_id` char(32) DEFAULT NULL COMMENT '父权限ID',
  `level` varchar(2) DEFAULT NULL COMMENT '权限级别',
  `detail` varchar(255) DEFAULT NULL COMMENT '权限详细描述',
  `create_date` char(8) DEFAULT NULL,
  `create_time` char(9) DEFAULT NULL,
  `update_date` char(8) DEFAULT NULL,
  `update_time` char(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Table structure for ico_system_role
-- ----------------------------
DROP TABLE IF EXISTS `ico_system_role`;
CREATE TABLE `ico_system_role` (
  `role_id` char(32) NOT NULL COMMENT '角色id',
  `role_name` varchar(100) NOT NULL COMMENT '角色名称',
  `detail` varchar(255) DEFAULT NULL COMMENT '角色详细描述',
  `create_date` char(8) DEFAULT NULL,
  `create_time` char(9) DEFAULT NULL,
  `update_date` char(8) DEFAULT NULL,
  `update_time` char(9) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Table structure for ico_system_role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `ico_system_role_privilege`;
CREATE TABLE `ico_system_role_privilege` (
  `role_id` char(32) NOT NULL,
  `privilege_id` char(32) NOT NULL,
  PRIMARY KEY (`role_id`,`privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限关系表';

-- ----------------------------
-- Table structure for ico_system_setting
-- ----------------------------
DROP TABLE IF EXISTS `ico_system_setting`;
CREATE TABLE `ico_system_setting` (
  `module_id` varchar(100) NOT NULL COMMENT '模块ID',
  `param_id` varchar(100) NOT NULL COMMENT '参数id',
  `param_desc` varchar(255) DEFAULT NULL COMMENT '参数描述',
  `param_value` varchar(255) DEFAULT NULL COMMENT '参数值',
  `param_value_desc` varchar(255) DEFAULT NULL COMMENT '值描述',
  `create_date` char(8) DEFAULT NULL,
  `create_time` char(9) DEFAULT NULL,
  `update_date` char(8) DEFAULT NULL,
  `update_time` char(9) DEFAULT NULL,
  PRIMARY KEY (`module_id`,`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ico_system_user
-- ----------------------------
DROP TABLE IF EXISTS `ico_system_user`;
CREATE TABLE `ico_system_user` (
  `user_id` varchar(25) NOT NULL COMMENT '随机生成的ID',
  `account_mail` varchar(100) NOT NULL COMMENT '邮箱账号',
  `mail_validate_code` varchar(64) DEFAULT NULL COMMENT '邮箱验证码',
  `is_mail_validate` char(1) NOT NULL DEFAULT '0' COMMENT '邮箱认证状态',
  `account_phone` char(11) NOT NULL COMMENT '手机账号',
  `user_alias` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `pwd` varchar(255) NOT NULL COMMENT '加密密码',
  `organ_code` varchar(20) DEFAULT NULL COMMENT '所属机构代码',
  `address_code` varchar(20) DEFAULT NULL COMMENT '所属地址编号',
  `is_logined` char(1) NOT NULL DEFAULT '0' COMMENT '登录状态',
  `is_locked` char(10) NOT NULL DEFAULT '0' COMMENT '是否锁定(1锁定 0未锁定)',
  `IDCard_no` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `IDCard_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `IDCard_frontSide` varchar(255) DEFAULT NULL COMMENT '身份证正面图片路径',
  `IDCard_backSide` varchar(255) DEFAULT NULL COMMENT '身份证背面图片路径',
  `ID_validate_status` char(1) DEFAULT NULL COMMENT '实名认证状态',
  `create_date` char(8) DEFAULT NULL,
  `create_time` char(9) DEFAULT NULL,
  `update_date` char(8) DEFAULT NULL,
  `update_time` char(9) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UQ_ACCOUNT_PHONE` (`account_phone`),
  UNIQUE KEY `UQ_ACCOUNT_MAIL` (`account_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Table structure for ico_system_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ico_system_user_role`;
CREATE TABLE `ico_system_user_role` (
  `user_id` varchar(25) NOT NULL,
  `role_id` char(32) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

-- ----------------------------
-- Table structure for ico_trade_log
-- ----------------------------
DROP TABLE IF EXISTS `ico_trade_log`;
CREATE TABLE `ico_trade_log` (
  `id` varchar(25) NOT NULL COMMENT '交易ID',
  `trade_code` varchar(25) NOT NULL COMMENT '交易流水号',
  `project_id` varchar(25) NOT NULL COMMENT '项目id',
  `currency` varchar(25) NOT NULL COMMENT '币种',
  `direction` int(11) DEFAULT '0' COMMENT '操作方向:1买2卖',
  `trade_average_price` decimal(12,8) DEFAULT NULL COMMENT '成交均价',
  `trade_count` decimal(12,8) DEFAULT NULL COMMENT '成交数量',
  `trade_fee` decimal(12,8) DEFAULT NULL COMMENT '手续费',
  `user_id` varchar(25) NOT NULL COMMENT '用户ID',
  `trade_date` char(8) DEFAULT NULL COMMENT '成交日期 yyyyMMdd',
  `trade_time` char(9) DEFAULT NULL COMMENT '成交日期 hhmmssSSS',
  `update_date` char(8) DEFAULT NULL COMMENT '更新日期 yyyyMMdd',
  `update_time` char(9) DEFAULT NULL COMMENT '更新日期 hhmmssSSS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易记录日志表。 一个交易会产生两个用户对这个交易的操作记录，基本一份是更新，另一份是写入新记录';

-- ----------------------------
-- Table structure for ico_trade_pending
-- ----------------------------
DROP TABLE IF EXISTS `ico_trade_pending`;
CREATE TABLE `ico_trade_pending` (
  `id` varchar(25) NOT NULL COMMENT '委托编号id',
  `pending_no` varchar(20) NOT NULL COMMENT '挂单流水号（系统当前毫秒数+5位随机数字）',
  `project_id` varchar(25) NOT NULL COMMENT '项目id',
  `currency` varchar(25) NOT NULL COMMENT '币种',
  `direction` int(11) DEFAULT '0' COMMENT '操作方向:1买2卖',
  `pending_count` decimal(12,8) DEFAULT NULL COMMENT '挂单数量',
  `pending_price` decimal(12,8) DEFAULT NULL COMMENT '挂单价格',
  `deal_count` decimal(12,8) DEFAULT NULL COMMENT '成交数量',
  `undeal_count` decimal(12,8) DEFAULT NULL COMMENT '未成交数量',
  `all_trade_fee` decimal(12,8) DEFAULT NULL COMMENT '买单:本次挂单对应的手续费总数量 = 用户买入数量-实际到账数量',
  `f_trade_fee` decimal(12,8) DEFAULT NULL COMMENT '手续费，买单：存代币数量;初始值=all_trade_fee = clientCount*rate;  每次交易，数量减去tradeCount*rate/(1-rate),最后交易结束变为0。卖单存的是RMB，初始值为0，每次交易加上rate*tradeCount*tradePrice',
  `sum_trade_cost` decimal(12,8) DEFAULT NULL COMMENT '买单：该挂单累计花费RMB金额；<=(undeal_count+deal_count+all_trade_fee)*pending_price',
  `user_id` varchar(25) NOT NULL COMMENT '用户ID',
  `flag` int(11) DEFAULT '0' COMMENT '0默认，1交易中，2撤单中（其他）',
  `pending_date` char(8) DEFAULT NULL COMMENT '挂单日期 yyyyMMdd',
  `pending_time` char(9) DEFAULT NULL COMMENT '挂单时间 hhmmssSSS',
  `update_date` char(8) DEFAULT NULL COMMENT '更新日期 yyyyMMdd',
  `update_time` char(9) DEFAULT NULL COMMENT '更新日期 hhmmssSSS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托挂单表（非全部成交）';

-- ----------------------------
-- Table structure for ico_trade_pending_cache
-- ----------------------------
DROP TABLE IF EXISTS `ico_trade_pending_cache`;
CREATE TABLE `ico_trade_pending_cache` (
  `id` varchar(25) NOT NULL COMMENT '委托编号id',
  `pending_no` varchar(20) NOT NULL COMMENT '挂单流水号（系统当前毫秒数+5位随机数字）',
  `project_id` varchar(25) NOT NULL COMMENT '项目id',
  `currency` varchar(25) NOT NULL COMMENT '币种',
  `direction` int(11) DEFAULT '0' COMMENT '操作方向:1买2卖',
  `pending_count` decimal(12,8) DEFAULT NULL COMMENT '挂单数量',
  `pending_price` decimal(12,8) DEFAULT NULL COMMENT '挂单数量',
  `deal_count` decimal(12,8) DEFAULT NULL COMMENT '成交数量',
  `undeal_count` decimal(12,8) DEFAULT NULL COMMENT '未成交数量',
  `all_trade_fee` decimal(12,8) DEFAULT NULL COMMENT '买单:本次挂单对应的手续费总数量 = 用户买入数量-实际到账数量',
  `f_trade_fee` decimal(12,8) DEFAULT NULL COMMENT '手续费，买单：存代币数量;初始值=all_trade_fee = clientCount*rate;  每次交易，数量减去tradeCount*rate/(1-rate),最后交易结束变为0。卖单存的是RMB，初始值为0，每次交易加上rate*tradeCount*tradePrice',
  `sum_trade_cost` decimal(12,8) DEFAULT NULL COMMENT '买单：该挂单累计花费RMB金额；<=(undeal_count+deal_count+all_trade_fee)*pending_price',
  `user_id` varchar(25) NOT NULL COMMENT '用户ID',
  `flag` int(11) DEFAULT '0' COMMENT '0默认，1交易中，2撤单中（其他）',
  `pending_date` char(8) DEFAULT NULL COMMENT '挂单日期 yyyyMMdd',
  `pending_time` char(9) DEFAULT NULL COMMENT '挂单时间 hhmmssSSS',
  `update_date` char(8) DEFAULT NULL COMMENT '更新日期 yyyyMMdd',
  `update_time` char(9) DEFAULT NULL COMMENT '更新时间 hhmmssSSS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托挂单表（非全部成交）缓存表';

-- ----------------------------
-- Table structure for ico_trade_pending_log
-- ----------------------------
DROP TABLE IF EXISTS `ico_trade_pending_log`;
CREATE TABLE `ico_trade_pending_log` (
  `id` varchar(25) NOT NULL COMMENT 'id',
  `pending_id` varchar(25) NOT NULL COMMENT '挂单id',
  `pending_no` varchar(20) NOT NULL COMMENT '挂单流水号（系统当前毫秒数+5位随机数字）',
  `project_id` varchar(25) NOT NULL COMMENT '项目id',
  `currency` varchar(25) NOT NULL COMMENT '币种',
  `direction` int(11) DEFAULT '0' COMMENT '操作方向:1买2卖',
  `pending_count` decimal(12,8) DEFAULT NULL COMMENT '挂单数量',
  `pending_price` decimal(12,8) DEFAULT NULL COMMENT '挂单价格',
  `deal_count` decimal(12,8) DEFAULT NULL COMMENT '已成交数量',
  `undeal_count` decimal(12,8) DEFAULT NULL COMMENT '未成交数量',
  `all_trade_fee` decimal(12,8) DEFAULT NULL COMMENT '买单:本次挂单对应的手续费总数量 = 用户买入数量-实际到账数量',
  `f_trade_fee` decimal(12,8) DEFAULT NULL COMMENT '手续费，买单：存代币数量;初始值=all_trade_fee = clientCount*rate;  每次交易，数量减去tradeCount*rate/(1-rate),最后交易结束变为0。卖单存的是RMB，初始值为0，每次交易加上rate*tradeCount*tradePrice',
  `sum_trade_cost` decimal(12,8) DEFAULT NULL COMMENT '买单：该挂单累计花费RMB金额；<=(undeal_count+deal_count+all_trade_fee)*pending_price',
  `user_id` varchar(25) NOT NULL COMMENT '用户ID',
  `flag` int(11) DEFAULT '0' COMMENT '0表示正常挂单日志，1标识交易异常时转过来的挂单',
  `pending_date` char(8) DEFAULT NULL COMMENT '挂单日期 yyyyMMdd',
  `pending_time` char(9) DEFAULT NULL COMMENT '挂单日期 hhmmssSSS',
  `update_date` char(8) DEFAULT NULL COMMENT '更新日期 yyyyMMdd',
  `update_time` char(9) DEFAULT NULL COMMENT '更新时间 hhmmssSSS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托挂单表日志表';

-- ----------------------------
-- Table structure for ico_user_asset
-- ----------------------------
DROP TABLE IF EXISTS `ico_user_asset`;
CREATE TABLE `ico_user_asset` (
  `user_id` varchar(25) NOT NULL COMMENT '用户ID',
  `currency` char(5) NOT NULL COMMENT '币种',
  `account_remain` decimal(12,8) DEFAULT NULL COMMENT '可用余额',
  `account_total` decimal(12,8) DEFAULT NULL COMMENT '总金额',
  `account_freezeb` decimal(12,8) DEFAULT NULL COMMENT '冻结金额',
  `hold_average_price` decimal(12,8) DEFAULT NULL COMMENT '持有币种的买入平均价格',
  `version` int(11) DEFAULT NULL COMMENT '锁版本号',
  PRIMARY KEY (`user_id`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户资产信息表';

-- ----------------------------
-- Table structure for ico_user_bank
-- ----------------------------
DROP TABLE IF EXISTS `ico_user_bank`;
CREATE TABLE `ico_user_bank` (
  `user_id` varchar(25) NOT NULL COMMENT '用户ID',
  `user_name` varchar(25) NOT NULL COMMENT '用户名称',
  `card_no` varchar(64) NOT NULL COMMENT '银行卡号',
  `open_bank` varchar(255) DEFAULT NULL COMMENT '开户行',
  `open_province` varchar(255) NOT NULL COMMENT '开户省份',
  `open_branch` varchar(255) NOT NULL COMMENT '开户支行名称',
  `open_city` varchar(255) NOT NULL COMMENT '开户城市',
  PRIMARY KEY (`user_id`,`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户银行卡信息表';

-- ----------------------------
-- Table structure for ico_user_bchain
-- ----------------------------
DROP TABLE IF EXISTS `ico_user_bchain`;
CREATE TABLE `ico_user_bchain` (
  `user_id` varchar(25) NOT NULL COMMENT '用户ID',
  `currency` char(5) NOT NULL COMMENT '币种',
  `bchain_addr` varchar(255) NOT NULL COMMENT '区块链地址',
  `addr_alias` varchar(255) DEFAULT NULL COMMENT '地址别称',
  `type` char(1) NOT NULL COMMENT '地址类型(1-用户钱包地址   2-系统钱包地址)',
  PRIMARY KEY (`user_id`,`bchain_addr`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户区块链地址信息表';
