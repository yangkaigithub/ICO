/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/16 23:07:29                           */
/*==============================================================*/


drop table if exists ico_buss_content_manage;

drop table if exists ico_dict;

drop table if exists ico_flow_trade;

drop table if exists ico_log_journal;

drop table if exists ico_project_favorite;

drop table if exists ico_project_info;

drop table if exists ico_project_vote;

drop table if exists ico_system_module;

drop table if exists ico_system_privilege;

drop table if exists ico_system_role;

drop table if exists ico_system_role_privilege;

drop table if exists ico_system_setting;

drop table if exists ico_system_user;

drop table if exists ico_system_user_role;

drop table if exists ico_user_asset;

drop table if exists ico_user_bchain;

/*==============================================================*/
/* Table: ico_buss_content_manage                               */
/*==============================================================*/
create table ico_buss_content_manage
(
   id                   char(51) not null,
   module_id            varchar(100) comment '模块ID',
   title                varchar(255) comment '内容标题',
   content              blob comment '内容正文',
   img_path             varchar(255) comment '内容图片路径',
   video_path           varchar(255) comment '内容视频路径',
   href                 varchar(255) comment '内容链接',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_buss_content_manage comment '内容管理表';

/*==============================================================*/
/* Table: ico_dict                                              */
/*==============================================================*/
create table ico_dict
(
   table_name           varchar(100) not null comment '表名',
   field_name           varchar(50) not null comment '字段名',
   value                varchar(200) not null comment '字段值',
   name                 varchar(200) comment '值的显示名称',
   detail               varchar(255) comment '值含义详细描述',
   remark               varchar(512) comment '备注',
   primary key (table_name, field_name, value)
);

alter table ico_dict comment '数据字典表';

/*==============================================================*/
/* Table: ico_flow_trade                                        */
/*==============================================================*/
create table ico_flow_trade
(
   flow_id              char(51) not null comment '流水id',
   type                 char(3) comment '交易类型',
   from_currency        char(5) comment '交易来源币种',
   to_currency          char(5) comment '交易对手币种',
   from_user_id         varchar(25) comment '交易用户id',
   from_account         varchar(255) comment '交易用户账号',
   from_amount          numeric(12,7) comment '入账交易金额',
   to_user_id           varchar(25) comment '交易对手id',
   to_account           varchar(255) comment '交易对手账号',
   to_amount            numeric(12,7) comment '出账交易金额',
   tx_date              char(8) comment '交易日期',
   tx_time              char(9) comment '交易时间',
   tx_reference         varchar(100) comment '关联交易信息(区块链hashcode、活动id)',
   ret_code             varchar(6) comment '结果码',
   ret_message          varchar(255) comment '结果信息',
   primary key (flow_id)
);

alter table ico_flow_trade comment '交易流水表';

/*==============================================================*/
/* Table: ico_log_journal                                       */
/*==============================================================*/
create table ico_log_journal
(
   id                   char(51) not null comment '操作id',
   op_date              char(8) comment '操作日期',
   op_time              char(9) comment '操作时间',
   op_user_id           varchar(25) comment '操作人员的用户id',
   module_id            varchar(100) comment '操作模块',
   op_content           varchar(512) comment '操作详情',
   ret_code             varchar(6) comment '结果码',
   ret_message          varchar(255) comment '结果信息',
   primary key (id)
);

alter table ico_log_journal comment '操作日志记录表';

/*==============================================================*/
/* Table: ico_project_favorite                                  */
/*==============================================================*/
create table ico_project_favorite
(
   user_id              varchar(25) not null comment '用户ID',
   project_id           varchar(32) not null comment '项目ID',
   create_date          char(8),
   create_time          char(9),
   primary key (user_id, project_id)
);

alter table ico_project_favorite comment '收藏夹';

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
   primary key (id),
   unique key UQ_CURRENCY_EN (currency_en)
);

alter table ico_project_info comment '项目库信息表';

/*==============================================================*/
/* Table: ico_project_vote                                      */
/*==============================================================*/
create table ico_project_vote
(
   id                   char(51) not null,
   user_id              varchar(25) comment '用户id',
   project_id           varchar(32) comment '项目id',
   eth_number           numeric(12,7) comment 'eth个数',
   token_nubmer         numeric(12,7) comment '代币个数',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_project_vote comment '项目参投记录表';

/*==============================================================*/
/* Table: ico_system_module                                     */
/*==============================================================*/
create table ico_system_module
(
   module_id            varchar(100) not null comment '模块ID',
   module_name          varchar(200) comment '模块名称',
   module_desc          varchar(255) comment '模块描述',
   module_id_parent     varchar(100) comment '父模块id',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (module_id)
);

alter table ico_system_module comment '模块管理表';

/*==============================================================*/
/* Table: ico_system_privilege                                  */
/*==============================================================*/
create table ico_system_privilege
(
   id                   char(32) not null comment '权限id',
   view_name            varchar(150) not null comment '权限显示名称',
   parent_id            char(32) comment '父权限ID',
   level                varchar(2) comment '权限级别',
   detail               varchar(255) comment '权限详细描述',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_system_privilege comment '权限表';

/*==============================================================*/
/* Table: ico_system_role                                       */
/*==============================================================*/
create table ico_system_role
(
   role_id              char(32) not null comment '角色id',
   role_name            varchar(100) not null comment '角色名称',
   detail               varchar(255) comment '角色详细描述',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (role_id)
);

alter table ico_system_role comment '角色表';

/*==============================================================*/
/* Table: ico_system_role_privilege                             */
/*==============================================================*/
create table ico_system_role_privilege
(
   role_id              char(32) not null,
   privilege_id         char(32) not null,
   primary key (role_id, privilege_id)
);

alter table ico_system_role_privilege comment '角色权限关系表';

/*==============================================================*/
/* Table: ico_system_setting                                    */
/*==============================================================*/
create table ico_system_setting
(
   module_id            varchar(100) not null comment '模块ID',
   param_id             varchar(100) not null comment '参数id',
   param_desc           varchar(255) comment '参数描述',
   param_value          varchar(255) comment '参数值',
   param_value_desc     varchar(255) comment '值描述',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (module_id, param_id)
);

alter table ico_system_setting comment '系统配置表';

/*==============================================================*/
/* Table: ico_system_user                                       */
/*==============================================================*/
create table ico_system_user
(
   user_id              varchar(25) not null comment '随机生成的ID',
   account_mail         varchar(100) not null comment '邮箱账号',
   mail_validate_code   varchar(32),
   is_mail_validate     char(1) comment '邮箱认证状态',
   account_phone        char(11) not null comment '手机账号',
   is_phone_validate    char(1) comment '手机号认证状态',
   user_alias           varchar(100) not null comment '用户昵称',
   pwd                  varchar(255) not null comment '加密密码',
   organ_code           varchar(20) comment '所属机构代码',
   address_code         varchar(20) comment '所属地址编号',
   is_logined           char(1) comment '登录状态',
   is_locked            char(10) comment '是否锁定(1锁定 0未锁定)',
   IDCard_no            varchar(20) comment '身份证号',
   IDCard_name          varchar(100) comment '真实姓名',
   IDCard_frontSide     varchar(255) comment '身份证正面图片路径',
   IDCard_backSide      varchar(255) comment '身份证背面图片路径',
   is_ID_validate       char(1) comment '实名认证状态',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (user_id),
   unique key UQ_ACCOUNT_PHONE (account_phone),
   unique key UQ_ACCOUNT_MAIL (account_mail)
);

alter table ico_system_user comment '用户信息表';

/*==============================================================*/
/* Table: ico_system_user_role                                  */
/*==============================================================*/
create table ico_system_user_role
(
   user_id              varchar(25) not null,
   role_id              char(32) not null,
   primary key (user_id, role_id)
);

alter table ico_system_user_role comment '用户角色关系表';

/*==============================================================*/
/* Table: ico_user_asset                                        */
/*==============================================================*/
create table ico_user_asset
(
   user_id              varchar(25) not null comment '用户ID',
   currency             char(5) not null comment '币种',
   account_remain       numeric(12,7) comment '可用余额',
   account_total        numeric(12,7) comment '总金额',
   account_freezeb      numeric(12,7) comment '冻结金额',
   version              int comment '锁版本号',
   primary key (user_id, currency)
);

alter table ico_user_asset comment '用户资产信息表';

/*==============================================================*/
/* Table: ico_user_bchain                                       */
/*==============================================================*/
create table ico_user_bchain
(
   user_id              varchar(25) not null comment '用户ID',
   currency             char(5) not null comment '币种',
   bchain_addr          varchar(255) not null comment '区块链地址',
   addr_alias           varchar(255) comment '地址别称',
   type                 char(1) not null comment '地址类型(1-用户钱包地址   2-系统钱包地址)',
   primary key (user_id, bchain_addr, currency)
);

alter table ico_user_bchain comment '用户区块链地址信息表';

