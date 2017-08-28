/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/8 22:35:44                            */
/*==============================================================*/


drop table if exists ico_buss_activity;

drop table if exists ico_buss_content_manage;

drop table if exists ico_buss_user_activity;

drop table if exists ico_dict;

drop table if exists ico_flow_trade;

drop table if exists ico_flow_trade_bill;

drop table if exists ico_log_journal;

drop table if exists ico_project_favorite;

drop table if exists ico_project_info;

drop table if exists ico_project_vote;

drop table if exists ico_system_privilege;

drop table if exists ico_system_role;

drop table if exists ico_system_role_privilege;

drop table if exists ico_system_user;

drop table if exists ico_system_user_role;

drop table if exists ico_trade_bid_bill;

drop table if exists ico_trade_sale_bill;

drop table if exists ico_user_bchain;

drop table if exists ico_user_asset;


/*==============================================================*/
/* Table: ico_dict                                              */
/*==============================================================*/
create table ico_dict
(
   table_name           varchar(100) not null comment '表名',
   field_name           varchar(50) not null comment '字段名',
   value                varchar(200) not null comment '字段值',
   name                 varchar(200) comment '值的显示名称',
   "desc"               varchar(256) comment '值含义描述',
   primary key (table_name, field_name, value)
);

alter table ico_dict comment '数据字典表';



/*==============================================================*/
/* Table: ico_flow_trade_bill                                   */
/*==============================================================*/
create table ico_flow_trade_bill
(
   flow_id              char(51) not null comment '订单ID',
   project_id           varchar(32) comment '项目ID',
   rate                 numeric(12,7) comment '成交单价',
   amount               numeric(12,7) comment '成交数量',
   type                 char(1) comment '交易类型(1-代币买入  2-代币卖出)',
   create_date          char(8),
   create_time          char(9),
   primary key (flow_id)
);

alter table ico_flow_trade_bill comment '挂单交易流水表';




/*==============================================================*/
/* Table: ico_project_info                                      */
/*==============================================================*/
create table ico_project_info
(
   id                   varchar(32) not null comment '项目id',
   create_date          char(8) comment '项目创建日期',
   create_time          char(9) comment '项目创建时间',
   update_date          char(8) comment '项目更新日期',
   update_time          char(9) comment '项目更新时间',
   fund_start_date      char(8) comment '众筹开始日期',
   fund_start_time      char(9) comment '众筹开始时间',
   total_time           integer comment '众筹总时间',
   fund_amount          numeric(12,7) comment '众筹额度（ETH）',
   rate                 numeric(12,7) comment '代币单价(ETH)',
   currency_zh          varchar(255) comment '代币中文名称',
   currency_en          varchar(255) comment '代币英文名称',
   primary key (id)
);

alter table ico_project_info comment '项目库信息表';



/*==============================================================*/
/* Table: ico_system_privilege                                  */
/*==============================================================*/
create table ico_system_privilege
(
   id                   char(32) not null comment '权限id',
   view_name            varchar(150) not null comment '权限显示名称',
   parent_id            hcar(32) comment '父权限ID',
   level                varchar(2) comment '权限级别',
   "desc"               varchara(256) comment '权限详细描述',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_system_privilege comment '权限表';



/*==============================================================*/
/* Table: ico_system_user                                       */
/*==============================================================*/
create table ico_system_user
(
   user_id              varchar(25) not null comment '随机生成的ID',
   account_mail         varchar(100) not null comment '邮箱账号',
   account_phone        char(11) not null comment '手机账号',
   user_alias           varchar(100) not null comment '用户昵称',
   pwd                  varchar(256) not null comment '加密密码',
   logined              char(1) comment '登录状态',
   IDCard_no            varchar(20) comment '身份证号',
   IDCard_name          varchar(100) comment '真实姓名',
   IDCard_frontSide     varchar(256) comment '身份证正面图片路径',
   IDCard_backSide      varchar(256) comment '身份证背面图片路径',
   mailValid_status     char(1) comment '邮箱认证状态',
   phoneValid_status    char(1) comment '手机号认证状态',
   IDCardValid_status   char(1) comment '实名认证状态',
   bank_card            varchar(50) comment '绑定银行卡',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (user_id)
);

alter table ico_system_user comment '用户信息表';

/*==============================================================*/
/* Table: ico_trade_bid_bill                                    */
/*==============================================================*/
create table ico_trade_bid_bill
(
   id                   char(51) not null comment '订单ID',
   project_id           varchar(32) comment '项目ID',
   rate                 numeric(12,7) comment '单价',
   amount               numeric(12,7) comment '订单总数',
   balance              numeric(12,7) comment '剩余数量',
   status               char(2) comment '交易单状态',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_trade_bid_bill comment '交易买单信息表';

/*==============================================================*/
/* Table: ico_trade_sale_bill                                   */
/*==============================================================*/
create table ico_trade_sale_bill
(
   id                   char(51) not null comment '订单ID',
   project_id           varchar(32) comment '项目ID',
   rate                 numeric(12,7) comment '单价',
   amount               numeric(12,7) comment '订单总数',
   balance              numeric(12,7) comment '剩余数量',
   status               char(2) comment '交易单状态',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_trade_sale_bill comment '交易卖单信息表';

/*==============================================================*/
/* Table: ico_user_asset                                       */
/*==============================================================*/
create table ico_user_asset
(
   user_id              varchar(25) not null comment '用户ID',
   currency             char(5) not null comment '币种',
   balance              numeric(12,7) comment '余额',
   version              int comment '锁版本号',
   primary key (user_id, currency)
);

alter table ico_user_asset comment '用户资产信息表';

/*==============================================================*/
/* Table: ico_user_bchain                                      */
/*==============================================================*/
create table ico_user_bchain
(
   user_id              varchar(25) not null comment '用户ID',
   currency             char(5) not null comment '币种',
   bchain_addr          varbinary(256) not null comment '区块链地址',
   addr_alias           varchar(256) comment '地址别称',
   type                 char(1) not null comment '地址类型(1-用户钱包地址   2-系统钱包地址)',
   primary key (user_id, bchain_addr, currency)
);

alter table ico_user_bchain comment '用户区块链地址信息表';

