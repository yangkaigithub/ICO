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
   module_id            varchar(100) comment 'ģ��ID',
   title                varchar(255) comment '���ݱ���',
   content              blob comment '��������',
   img_path             varchar(255) comment '����ͼƬ·��',
   video_path           varchar(255) comment '������Ƶ·��',
   href                 varchar(255) comment '��������',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_buss_content_manage comment '���ݹ����';

/*==============================================================*/
/* Table: ico_dict                                              */
/*==============================================================*/
create table ico_dict
(
   table_name           varchar(100) not null comment '����',
   field_name           varchar(50) not null comment '�ֶ���',
   value                varchar(200) not null comment '�ֶ�ֵ',
   name                 varchar(200) comment 'ֵ����ʾ����',
   detail               varchar(255) comment 'ֵ������ϸ����',
   remark               varchar(512) comment '��ע',
   primary key (table_name, field_name, value)
);

alter table ico_dict comment '�����ֵ��';

/*==============================================================*/
/* Table: ico_flow_trade                                        */
/*==============================================================*/
create table ico_flow_trade
(
   flow_id              char(51) not null comment '��ˮid',
   type                 char(3) comment '��������',
   from_currency        char(5) comment '������Դ����',
   to_currency          char(5) comment '���׶��ֱ���',
   from_user_id         varchar(25) comment '�����û�id',
   from_account         varchar(255) comment '�����û��˺�',
   from_amount          numeric(12,7) comment '���˽��׽��',
   to_user_id           varchar(25) comment '���׶���id',
   to_account           varchar(255) comment '���׶����˺�',
   to_amount            numeric(12,7) comment '���˽��׽��',
   tx_date              char(8) comment '��������',
   tx_time              char(9) comment '����ʱ��',
   tx_reference         varchar(100) comment '����������Ϣ(������hashcode���id)',
   ret_code             varchar(6) comment '�����',
   ret_message          varchar(255) comment '�����Ϣ',
   primary key (flow_id)
);

alter table ico_flow_trade comment '������ˮ��';

/*==============================================================*/
/* Table: ico_log_journal                                       */
/*==============================================================*/
create table ico_log_journal
(
   id                   char(51) not null comment '����id',
   op_date              char(8) comment '��������',
   op_time              char(9) comment '����ʱ��',
   op_user_id           varchar(25) comment '������Ա���û�id',
   module_id            varchar(100) comment '����ģ��',
   op_content           varchar(512) comment '��������',
   ret_code             varchar(6) comment '�����',
   ret_message          varchar(255) comment '�����Ϣ',
   primary key (id)
);

alter table ico_log_journal comment '������־��¼��';

/*==============================================================*/
/* Table: ico_project_favorite                                  */
/*==============================================================*/
create table ico_project_favorite
(
   user_id              varchar(25) not null comment '�û�ID',
   project_id           varchar(32) not null comment '��ĿID',
   create_date          char(8),
   create_time          char(9),
   primary key (user_id, project_id)
);

alter table ico_project_favorite comment '�ղؼ�';

/*==============================================================*/
/* Table: ico_project_info                                      */
/*==============================================================*/
create table ico_project_info
(
   id                   varchar(32) not null comment '��Ŀid',
   create_date          char(8) comment '��Ŀ��������',
   create_time          char(9) comment '��Ŀ����ʱ��',
   update_date          char(8) comment '��Ŀ��������',
   update_time          char(9) comment '��Ŀ����ʱ��',
   fund_start_date      char(8) comment '�ڳ￪ʼ����',
   fund_start_time      char(9) comment '�ڳ￪ʼʱ��',
   total_time           integer comment '�ڳ���ʱ��',
   fund_amount          numeric(12,7) comment '�ڳ��ȣ�ETH��',
   rate                 numeric(12,7) comment '���ҵ���(ETH)',
   currency_zh          varchar(255) comment '������������',
   currency_en          varchar(255) comment '����Ӣ������',
   primary key (id),
   unique key UQ_CURRENCY_EN (currency_en)
);

alter table ico_project_info comment '��Ŀ����Ϣ��';

/*==============================================================*/
/* Table: ico_project_vote                                      */
/*==============================================================*/
create table ico_project_vote
(
   id                   char(51) not null,
   user_id              varchar(25) comment '�û�id',
   project_id           varchar(32) comment '��Ŀid',
   eth_number           numeric(12,7) comment 'eth����',
   token_nubmer         numeric(12,7) comment '���Ҹ���',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_project_vote comment '��Ŀ��Ͷ��¼��';

/*==============================================================*/
/* Table: ico_system_module                                     */
/*==============================================================*/
create table ico_system_module
(
   module_id            varchar(100) not null comment 'ģ��ID',
   module_name          varchar(200) comment 'ģ������',
   module_desc          varchar(255) comment 'ģ������',
   module_id_parent     varchar(100) comment '��ģ��id',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (module_id)
);

alter table ico_system_module comment 'ģ������';

/*==============================================================*/
/* Table: ico_system_privilege                                  */
/*==============================================================*/
create table ico_system_privilege
(
   id                   char(32) not null comment 'Ȩ��id',
   view_name            varchar(150) not null comment 'Ȩ����ʾ����',
   parent_id            char(32) comment '��Ȩ��ID',
   level                varchar(2) comment 'Ȩ�޼���',
   detail               varchar(255) comment 'Ȩ����ϸ����',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_system_privilege comment 'Ȩ�ޱ�';

/*==============================================================*/
/* Table: ico_system_role                                       */
/*==============================================================*/
create table ico_system_role
(
   role_id              char(32) not null comment '��ɫid',
   role_name            varchar(100) not null comment '��ɫ����',
   detail               varchar(255) comment '��ɫ��ϸ����',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (role_id)
);

alter table ico_system_role comment '��ɫ��';

/*==============================================================*/
/* Table: ico_system_role_privilege                             */
/*==============================================================*/
create table ico_system_role_privilege
(
   role_id              char(32) not null,
   privilege_id         char(32) not null,
   primary key (role_id, privilege_id)
);

alter table ico_system_role_privilege comment '��ɫȨ�޹�ϵ��';

/*==============================================================*/
/* Table: ico_system_setting                                    */
/*==============================================================*/
create table ico_system_setting
(
   module_id            varchar(100) not null comment 'ģ��ID',
   param_id             varchar(100) not null comment '����id',
   param_desc           varchar(255) comment '��������',
   param_value          varchar(255) comment '����ֵ',
   param_value_desc     varchar(255) comment 'ֵ����',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (module_id, param_id)
);

alter table ico_system_setting comment 'ϵͳ���ñ�';

/*==============================================================*/
/* Table: ico_system_user                                       */
/*==============================================================*/
create table ico_system_user
(
   user_id              varchar(25) not null comment '������ɵ�ID',
   account_mail         varchar(100) not null comment '�����˺�',
   mail_validate_code   varchar(32),
   is_mail_validate     char(1) comment '������֤״̬',
   account_phone        char(11) not null comment '�ֻ��˺�',
   is_phone_validate    char(1) comment '�ֻ�����֤״̬',
   user_alias           varchar(100) not null comment '�û��ǳ�',
   pwd                  varchar(255) not null comment '��������',
   organ_code           varchar(20) comment '������������',
   address_code         varchar(20) comment '������ַ���',
   is_logined           char(1) comment '��¼״̬',
   is_locked            char(10) comment '�Ƿ�����(1���� 0δ����)',
   IDCard_no            varchar(20) comment '���֤��',
   IDCard_name          varchar(100) comment '��ʵ����',
   IDCard_frontSide     varchar(255) comment '���֤����ͼƬ·��',
   IDCard_backSide      varchar(255) comment '���֤����ͼƬ·��',
   is_ID_validate       char(1) comment 'ʵ����֤״̬',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (user_id),
   unique key UQ_ACCOUNT_PHONE (account_phone),
   unique key UQ_ACCOUNT_MAIL (account_mail)
);

alter table ico_system_user comment '�û���Ϣ��';

/*==============================================================*/
/* Table: ico_system_user_role                                  */
/*==============================================================*/
create table ico_system_user_role
(
   user_id              varchar(25) not null,
   role_id              char(32) not null,
   primary key (user_id, role_id)
);

alter table ico_system_user_role comment '�û���ɫ��ϵ��';

/*==============================================================*/
/* Table: ico_user_asset                                        */
/*==============================================================*/
create table ico_user_asset
(
   user_id              varchar(25) not null comment '�û�ID',
   currency             char(5) not null comment '����',
   account_remain       numeric(12,7) comment '�������',
   account_total        numeric(12,7) comment '�ܽ��',
   account_freezeb      numeric(12,7) comment '������',
   version              int comment '���汾��',
   primary key (user_id, currency)
);

alter table ico_user_asset comment '�û��ʲ���Ϣ��';

/*==============================================================*/
/* Table: ico_user_bchain                                       */
/*==============================================================*/
create table ico_user_bchain
(
   user_id              varchar(25) not null comment '�û�ID',
   currency             char(5) not null comment '����',
   bchain_addr          varchar(255) not null comment '��������ַ',
   addr_alias           varchar(255) comment '��ַ���',
   type                 char(1) not null comment '��ַ����(1-�û�Ǯ����ַ   2-ϵͳǮ����ַ)',
   primary key (user_id, bchain_addr, currency)
);

alter table ico_user_bchain comment '�û���������ַ��Ϣ��';

