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
   table_name           varchar(100) not null comment '����',
   field_name           varchar(50) not null comment '�ֶ���',
   value                varchar(200) not null comment '�ֶ�ֵ',
   name                 varchar(200) comment 'ֵ����ʾ����',
   "desc"               varchar(256) comment 'ֵ��������',
   primary key (table_name, field_name, value)
);

alter table ico_dict comment '�����ֵ��';



/*==============================================================*/
/* Table: ico_flow_trade_bill                                   */
/*==============================================================*/
create table ico_flow_trade_bill
(
   flow_id              char(51) not null comment '����ID',
   project_id           varchar(32) comment '��ĿID',
   rate                 numeric(12,7) comment '�ɽ�����',
   amount               numeric(12,7) comment '�ɽ�����',
   type                 char(1) comment '��������(1-��������  2-��������)',
   create_date          char(8),
   create_time          char(9),
   primary key (flow_id)
);

alter table ico_flow_trade_bill comment '�ҵ�������ˮ��';




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
   primary key (id)
);

alter table ico_project_info comment '��Ŀ����Ϣ��';



/*==============================================================*/
/* Table: ico_system_privilege                                  */
/*==============================================================*/
create table ico_system_privilege
(
   id                   char(32) not null comment 'Ȩ��id',
   view_name            varchar(150) not null comment 'Ȩ����ʾ����',
   parent_id            hcar(32) comment '��Ȩ��ID',
   level                varchar(2) comment 'Ȩ�޼���',
   "desc"               varchara(256) comment 'Ȩ����ϸ����',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_system_privilege comment 'Ȩ�ޱ�';



/*==============================================================*/
/* Table: ico_system_user                                       */
/*==============================================================*/
create table ico_system_user
(
   user_id              varchar(25) not null comment '������ɵ�ID',
   account_mail         varchar(100) not null comment '�����˺�',
   account_phone        char(11) not null comment '�ֻ��˺�',
   user_alias           varchar(100) not null comment '�û��ǳ�',
   pwd                  varchar(256) not null comment '��������',
   logined              char(1) comment '��¼״̬',
   IDCard_no            varchar(20) comment '���֤��',
   IDCard_name          varchar(100) comment '��ʵ����',
   IDCard_frontSide     varchar(256) comment '���֤����ͼƬ·��',
   IDCard_backSide      varchar(256) comment '���֤����ͼƬ·��',
   mailValid_status     char(1) comment '������֤״̬',
   phoneValid_status    char(1) comment '�ֻ�����֤״̬',
   IDCardValid_status   char(1) comment 'ʵ����֤״̬',
   bank_card            varchar(50) comment '�����п�',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (user_id)
);

alter table ico_system_user comment '�û���Ϣ��';

/*==============================================================*/
/* Table: ico_trade_bid_bill                                    */
/*==============================================================*/
create table ico_trade_bid_bill
(
   id                   char(51) not null comment '����ID',
   project_id           varchar(32) comment '��ĿID',
   rate                 numeric(12,7) comment '����',
   amount               numeric(12,7) comment '��������',
   balance              numeric(12,7) comment 'ʣ������',
   status               char(2) comment '���׵�״̬',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_trade_bid_bill comment '��������Ϣ��';

/*==============================================================*/
/* Table: ico_trade_sale_bill                                   */
/*==============================================================*/
create table ico_trade_sale_bill
(
   id                   char(51) not null comment '����ID',
   project_id           varchar(32) comment '��ĿID',
   rate                 numeric(12,7) comment '����',
   amount               numeric(12,7) comment '��������',
   balance              numeric(12,7) comment 'ʣ������',
   status               char(2) comment '���׵�״̬',
   create_date          char(8),
   create_time          char(9),
   update_date          char(8),
   update_time          char(9),
   primary key (id)
);

alter table ico_trade_sale_bill comment '����������Ϣ��';

/*==============================================================*/
/* Table: ico_user_asset                                       */
/*==============================================================*/
create table ico_user_asset
(
   user_id              varchar(25) not null comment '�û�ID',
   currency             char(5) not null comment '����',
   balance              numeric(12,7) comment '���',
   version              int comment '���汾��',
   primary key (user_id, currency)
);

alter table ico_user_asset comment '�û��ʲ���Ϣ��';

/*==============================================================*/
/* Table: ico_user_bchain                                      */
/*==============================================================*/
create table ico_user_bchain
(
   user_id              varchar(25) not null comment '�û�ID',
   currency             char(5) not null comment '����',
   bchain_addr          varbinary(256) not null comment '��������ַ',
   addr_alias           varchar(256) comment '��ַ���',
   type                 char(1) not null comment '��ַ����(1-�û�Ǯ����ַ   2-ϵͳǮ����ַ)',
   primary key (user_id, bchain_addr, currency)
);

alter table ico_user_bchain comment '�û���������ַ��Ϣ��';

