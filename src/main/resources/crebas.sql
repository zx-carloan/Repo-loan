/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/1/13 星期六 下午 2:10:25                     */
/*==============================================================*/


drop table if exists t_carInfo;

drop table if exists t_client;

drop table if exists t_company;

drop table if exists t_contactor;

drop table if exists t_contract;

drop table if exists t_creditInfo;

drop table if exists t_identity;

drop table if exists t_item;

drop table if exists t_loanHistory;

drop table if exists t_log;

drop table if exists t_opinion;

drop table if exists t_order;

drop table if exists t_product;

drop table if exists t_role;

drop table if exists t_user;

drop table if exists t_user_role;

/*==============================================================*/
/* Table: t_carInfo                                             */
/*==============================================================*/
create table t_carInfo
(
   otherAttachment      varchar(200),
   sali                 varchar(200) comment '保单（交强险)',
   carPic               varchar(200) comment '车辆照片',
   commerceinsurance    varchar(200) comment '保单（商业险）',
   carAsseceForm        varchar(200),
   carRegisterForm      varchar(200) comment '车辆登记证书（原件）',
   drivingLisense       varchar(200) comment '车辆行驶证正副本（原件）',
   id                   bigint not null auto_increment,
   carId                varchar(30) comment '机动车辆号牌',
   brand                varchar(20) comment '厂牌型号',
   engineId             varchar(40) comment '发动机号',
   color                varchar(20) comment '颜色',
   registerDate         date comment '初次登记日期',
   annualInspection     int comment '年检有限期
            单位 月',
   vin                  varchar(40) comment '车架号',
   assessmentPrice      double comment '车辆评估价格',
   xkm                  int comment '目前已行驶里程数',
   getID                boolean comment '身份证是否交付',
   getAfford            boolean comment '车辆购置证/发票是否交付',
   getSali              boolean comment '交强保险单是否交付',
   getKey               boolean comment '车辆钥匙是否交付',
   keyNumber            int comment '车辆钥匙几把',
   getRegisterLicense   boolean comment '机动车登记证是否交付',
   getInsurance         boolean comment '商业保险单是否交付',
   getDrivingLicense    boolean comment '车辆行驶证是否交付',
   getOriginalInvoice   boolean comment '车辆原始发票是否交付',
   getTaxCertificate    boolean comment '车辆完税证是否交付',
   getImportCertificate boolean comment '进口车辆证明是否交付',
   fk_order_id          bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: t_client                                              */
/*==============================================================*/
create table t_client
(
   applicationForm      varchar(200) comment '车贷申请表',
   iDPic                varchar(200) comment '身份证照片',
   id                   bigint not null auto_increment comment '主键',
   fk_identity_id       bigint comment '身份证表外键',
   name                 varchar(20) comment '申请人姓名
            ',
   education            int comment '最高学历
            1 初中及以下
            2 高中或中专
            3 大专
            4 本科
            5 硕士及以上',
   cellphone            varchar(40) comment '手机号',
   address              varchar(100) comment '户籍地址',
   tel                  varchar(40) comment '电话号码',
   marriage             int comment '婚姻状况
            1 未婚
            2 已婚
            3 离异 
            4 丧偶',
   child                int comment '有无子女
            1 有
            0 无',
   house                int comment '房产状况
            1 亲属产权
            2 单位宿舍
            3 无按揭自置
            4 按揭自置
            5 租赁住房',
   partner              int comment '共同居住者
            1 父母
            2 配偶及子女 
            3 独居
            4 朋友 
            5 其他',
   currentAddress       varchar(100) comment '现住址',
   clientType           int comment '客户类型
            1 工薪人士 
            2 企业人事',
   companyName          varchar(100) comment '工作单位全称',
   companyAddress       varchar(100) comment '工作单位地址',
   companyTel           varchar(30) comment '单位电话',
   postcode             varchar(20) comment '邮政编码',
   preTime              date comment '进入单位时间',
   department           varchar(20) comment '所在部门',
   position             varchar(20) comment '担任职务',
   companySize          varchar(20) comment '公司规模',
   industryType         varchar(20) comment '行业类型',
   companyType          int comment '单位性质',
   loanPurpose          varchar(100) comment '借款详细用途',
   salary               double comment '月收入',
   maxAffordable        double comment '可以承受的月还款额',
   maxPaybackTime       int comment '希望申请最长还款期限',
   minLoan              double comment '希望申请借款额度（最低）',
   maxLoan              double comment '希望申请借款额度（最高）',
   sourceOfInfo         int comment '您从何得知正合普惠',
   saler                varchar(20) comment '业务员姓名',
   valuer               varchar(20) comment '车贷专员',
   applyDate            date comment '申请日期',
   otherClientInfoAttachment varchar(20),
   primary key (id)
);

/*==============================================================*/
/* Table: t_company                                             */
/*==============================================================*/
create table t_company
(
   id                   bigint not null auto_increment,
   name                 varchar(20),
   hq                   int comment '0:代表总公司;1:代表分公司',
   primary key (id)
);

/*==============================================================*/
/* Table: t_contactor                                           */
/*==============================================================*/
create table t_contactor
(
   id                   int not null auto_increment,
   name                 varchar(20) comment '联系人姓名',
   type                 int comment '联系人类型',
   relation             int comment '和本人关系',
   company              varchar(20) comment '单位名称',
   address              varchar(100) comment '家庭地址/单位地址',
   phone                varchar(30) comment '联系电话',
   fk_client_id         bigint comment '客户信息表外键',
   primary key (id)
);

/*==============================================================*/
/* Table: t_contract                                            */
/*==============================================================*/
create table t_contract
(
   carParkingPic        varchar(200) comment '车辆入库照片（非必要）',
   carMortgagePic       varchar(200) comment '车辆抵押照片',
   carAuthorisationLetter varchar(200) comment '授权委托书(车辆处理使用)（直接上传）',
   repurchaseContracts  varchar(200) comment '车辆买卖回购合同（直接上传）',
   supplementalAgreement varchar(200) comment '补充协议（直接上传）',
   repaymentSchedule    varchar(200) comment '还款计划表（系统生成）',
   authorisationLetter  varchar(200) comment '授权委托书（系统生成）',
   authorizationDeductletter varchar(200) comment '授权扣款委托书（系统生成）',
   loanContract         varchar(200) comment '小额借款服务合同（系统生成）',
   printedForm          varchar(200),
   bankCard             varchar(200) comment '银行卡',
   id                   bigint not null auto_increment,
   amount               double comment '审批金额',
   payDate              date comment '放贷日期',
   bank                 varchar(30) comment '放款/还款银行',
   bankAccount          varchar(30) comment '放款/还款账户',
   bankBranch           varchar(50) comment '放款/还款银行支行',
   signDate   date comment '签约时间',
   primary key (id)
);

/*==============================================================*/
/* Table: t_creditInfo                                          */
/*==============================================================*/
create table t_creditInfo
(
   id                   bigint not null auto_increment,
   hasHouse             boolean comment '有无房产',
   hasHouseLoan         boolean comment '有无房贷',
   hasCar               boolean comment '有无车产',
   hasCarLoan           boolean comment '有无车贷',
   maxOverdueMonth      int comment '信用卡、贷款最大逾期状况（24个月内）',
   maxOverdueNum        int comment '信用卡、贷款最大逾期次数（25个月内）',
   creditUsageRate      int comment '信用卡额度使用率',
   enquiriesNumber      int comment '信用卡/贷款审批查询次数（6个月内）',
   hasOtheLoan          boolean comment '有无其他信用贷款',
   hasCreditCard        boolean comment '有无信用卡',
   primary key (id)
);

/*==============================================================*/
/* Table: t_identity                                            */
/*==============================================================*/
create table t_identity
(
   id                   bigint not null auto_increment,
   name                 varchar(20) comment '姓名',
   gender               int comment '性别
            0 女
            1 男',
   ethnic               varchar(20) comment '民族',
   birthday             date comment '出生年月 yyyy-MM-dd',
   address              varchar(100) comment '地址',
   identity             varchar(30) comment '身份证号限18位,最后可以以数字或者字母x',
   administration       varchar(30) comment '发证机关',
   issueDate            date comment '有效期开始',
   expireDate           date comment '有效期结束',
   primary key (id)
);

/*==============================================================*/
/* Table: t_item                                                */
/*==============================================================*/
create table t_item
(
   id                   bigint not null auto_increment,
   name                 varchar(30) comment '物品名称',
   number               int comment '物品数量',
   fk_carInfo_id        bigint comment '车辆表外键',
   primary key (id)
);

/*==============================================================*/
/* Table: t_loanHistory                                         */
/*==============================================================*/
create table t_loanHistory
(
   id                   bigint not null auto_increment,
   fk_indentity_id      bigint comment '身份证号',
   loanType             varchar(20) comment '贷款类型',
   primary key (id)
);

/*==============================================================*/
/* Table: t_log                                                 */
/*==============================================================*/
create table t_log
(
   id                   bigint,
   loginDate            datetime comment '用户登陆时间',
   userName             varbinary(20) comment '登陆用户名',
   exitDate             datetime comment '用户退出时间'
);

/*==============================================================*/
/* Table: t_opinion                                             */
/*==============================================================*/
create table t_opinion
(
   id                   bigint not null auto_increment,
   loanTime             int comment '批准期数',
   conclusion           varchar(20) comment '结论',
   loanAmount           double comment '审批额度',
   branchOpinion        varchar(500) comment '分公司意见',
   HQOpinion            varchar(500) comment '总公司意见',
   primary key (id)
);

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
create table t_order
(
   id                   bigint not null auto_increment,
   contractNumber       varchar(100),
   returnOpinion        varchar(100),
   fk_client_id         bigint,
   fk_opinion_id        bigint,
   status               varchar(20),
   rollback             varchar(20),
   loanStatus           int,
   submenuStatus        int,
   submit               int,
   fk_product_id        bigint,
   fk_contract_id       bigint,
   fk_credit_id         bigint,
   fk_identiry_id       bigint,
   fk_company_id        bigint,
   auditor              varchar(30),
   manager              varchar(20),
   timeStarting    date, comment '进件时间',
   review  date,comment '复审日期',
   version   int,
   primary key (id)
);

/*==============================================================*/
/* Table: t_product                                             */
/*==============================================================*/
create table t_product
(
   id                   bigint not null auto_increment,
   name                 varchar(20) comment '产品名',
   periods              varchar(50) comment '期数
            6/12/18/24',
   accrual              varchar(50) comment '利息
            4/5/6/7',
   capital              double,
   primary key (id)
);

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role
(
   id                   bigint not null auto_increment,
   role                 varchar(20) comment '角色名',
   primary key (id)
);

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   bigint not null auto_increment,
   userName             varchar(20) comment '真实姓名',
   loginName            varchar(20) comment '登陆名',
   fk_branch_id         bigint comment '公司表外键',
   password             varchar(30),
   primary key (id)
);

/*==============================================================*/
/* Table: t_user_role                                           */
/*==============================================================*/
create table t_user_role
(
   id                   bigint not null auto_increment,
   userId               bigint comment '用户id',
   roleId               bigint comment '角色id',
   primary key (id)
);

