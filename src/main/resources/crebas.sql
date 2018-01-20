/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/1/13 星期六 下午 2:10:25                     */
/*==============================================================*/


DROP TABLE IF EXISTS t_carInfo;

DROP TABLE IF EXISTS t_client;

DROP TABLE IF EXISTS t_company;

DROP TABLE IF EXISTS t_contactor;

DROP TABLE IF EXISTS t_contract;

DROP TABLE IF EXISTS t_creditInfo;

DROP TABLE IF EXISTS t_identity;

DROP TABLE IF EXISTS t_item;

DROP TABLE IF EXISTS t_loanHistory;

DROP TABLE IF EXISTS t_log;

DROP TABLE IF EXISTS t_opinion;

DROP TABLE IF EXISTS t_order;

DROP TABLE IF EXISTS t_product;

DROP TABLE IF EXISTS t_role;

DROP TABLE IF EXISTS t_user;

DROP TABLE IF EXISTS t_user_role;

/*==============================================================*/
/* Table: t_carInfo                                             */
/*==============================================================*/
CREATE TABLE t_carInfo
(
   otherAttachment      VARCHAR(200) COMMENT '车辆其他附件',
   sali                 VARCHAR(200) COMMENT '保单（交强险)',
   carPic               VARCHAR(200) COMMENT '车辆照片',
   commerceinsurance    VARCHAR(200) COMMENT '保单（商业险）',
   carAsseceForm        VARCHAR(200),
   carRegisterForm      VARCHAR(200) COMMENT '车辆登记证书（原件）',
   drivingLisense       VARCHAR(200) COMMENT '车辆行驶证正副本（原件）',
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   carId                VARCHAR(30) COMMENT '机动车辆号牌',
   brand                VARCHAR(20) COMMENT '厂牌型号',
   engineId             VARCHAR(40) COMMENT '发动机号',
   color                VARCHAR(20) COMMENT '颜色',
   registerDate         DATE COMMENT '初次登记日期',
   annualInspection     INT COMMENT '年检有限期
            单位 月',
   vin                  VARCHAR(40) COMMENT '车架号',
   assessmentPrice      DOUBLE COMMENT '车辆评估价格',
   xkm                  INT COMMENT '目前已行驶里程数',
   getID                BOOLEAN COMMENT '身份证是否交付',
   getAfford            BOOLEAN COMMENT '车辆购置证/发票是否交付',
   getSali              BOOLEAN COMMENT '交强保险单是否交付',
   getKey               BOOLEAN COMMENT '车辆钥匙是否交付',
   keyNumber            INT COMMENT '车辆钥匙几把',
   getRegisterLicense   BOOLEAN COMMENT '机动车登记证是否交付',
   getInsurance         BOOLEAN COMMENT '商业保险单是否交付',
   getDrivingLicense    BOOLEAN COMMENT '车辆行驶证是否交付',
   getOriginalInvoice   BOOLEAN COMMENT '车辆原始发票是否交付',
   getTaxCertificate    BOOLEAN COMMENT '车辆完税证是否交付',
   getImportCertificate BOOLEAN COMMENT '进口车辆证明是否交付',
   fk_order_id          BIGINT,
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_client                                              */
/*==============================================================*/
CREATE TABLE t_client
(
   applicationForm      VARCHAR(200) COMMENT '车贷申请表',
   iDPic                VARCHAR(200) COMMENT '身份证照片',
   id                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键',
   fk_identity_id       BIGINT COMMENT '身份证表外键',
   NAME                 VARCHAR(20) COMMENT '申请人姓名
            ',
   education            INT COMMENT '最高学历
            1 初中及以下
            2 高中或中专
            3 大专
            4 本科
            5 硕士及以上',
   cellphone            VARCHAR(40) COMMENT '手机号',
   address              VARCHAR(100) COMMENT '户籍地址',
   tel                  VARCHAR(40) COMMENT '电话号码',
   marriage             INT COMMENT '婚姻状况
            1 未婚
            2 已婚
            3 离异 
            4 丧偶',
   child                INT COMMENT '有无子女
            1 有
            0 无',
   house                INT COMMENT '房产状况
            1 亲属产权
            2 单位宿舍
            3 无按揭自置
            4 按揭自置
            5 租赁住房',
   partner              INT COMMENT '共同居住者
            1 父母
            2 配偶及子女 
            3 独居
            4 朋友 
            5 其他',
   currentAddress       VARCHAR(100) COMMENT '现住址',
   clientType           INT COMMENT '客户类型
            1 工薪人士 
            2 企业人事',
   companyName          VARCHAR(100) COMMENT '工作单位全称',
   companyAddress       VARCHAR(100) COMMENT '工作单位地址',
   companyTel           VARCHAR(30) COMMENT '单位电话',
   postcode             VARCHAR(20) COMMENT '邮政编码',
   preTime              DATE COMMENT '进入单位时间',
   department           VARCHAR(20) COMMENT '所在部门',
   POSITION             VARCHAR(20) COMMENT '担任职务',
   companySize          VARCHAR(20) COMMENT '公司规模',
   industryType         VARCHAR(20) COMMENT '行业类型',
   companyType          INT COMMENT '单位性质',
   loanPurpose          VARCHAR(100) COMMENT '借款详细用途',
   salary               DOUBLE COMMENT '月收入',
   maxAffordable        DOUBLE COMMENT '可以承受的月还款额',
   maxPaybackTime       INT COMMENT '希望申请最长还款期限',
   minLoan              DOUBLE COMMENT '希望申请借款额度（最低）',
   maxLoan              DOUBLE COMMENT '希望申请借款额度（最高）',
   sourceOfInfo         INT COMMENT '您从何得知正合普惠',
   saler                VARCHAR(20) COMMENT '业务员姓名',
   valuer               VARCHAR(20) COMMENT '车贷专员',
   applyDate            DATE COMMENT '申请日期',
   otherClientInfoAttachment VARCHAR(20),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_company                                             */
/*==============================================================*/
CREATE TABLE t_company
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(20),
   hq                   INT COMMENT '0:代表总公司;1:代表分公司',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_contactor                                           */
/*==============================================================*/
CREATE TABLE t_contactor
(
   id                   INT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(20) COMMENT '联系人姓名',
   TYPE                 INT COMMENT '联系人类型',
   relation             INT COMMENT '和本人关系',
   company              VARCHAR(20) COMMENT '单位名称',
   address              VARCHAR(100) COMMENT '家庭地址/单位地址',
   phone                VARCHAR(30) COMMENT '联系电话',
   fk_client_id         BIGINT COMMENT '客户信息表外键',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_contract                                            */
/*==============================================================*/
CREATE TABLE t_contract
(
   carParkingPic        VARCHAR(200) COMMENT '车辆入库照片（非必要）',
   carMortgagePic       VARCHAR(200) COMMENT '车辆抵押照片',
   carAuthorisationLetter VARCHAR(200) COMMENT '授权委托书(车辆处理使用)（直接上传）',
   repurchaseContracts  VARCHAR(200) COMMENT '车辆买卖回购合同（直接上传）',
   supplementalAgreement VARCHAR(200) COMMENT '补充协议（直接上传）',
   repaymentSchedule    VARCHAR(200) COMMENT '还款计划表（系统生成）',
   authorisationLetter  VARCHAR(200) COMMENT '授权委托书（系统生成）',
   authorizationDeductletter VARCHAR(200) COMMENT '授权扣款委托书（系统生成）',
   loanContract         VARCHAR(200) COMMENT '小额借款服务合同（系统生成）',
   printedForm          VARCHAR(200),
   bankCard             VARCHAR(200) COMMENT '银行卡',
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   amount               DOUBLE COMMENT '审批金额',
   payDate              DATE COMMENT '放贷日期',
   bank                 VARCHAR(30) COMMENT '放款/还款银行',
   bankAccount          VARCHAR(30) COMMENT '放款/还款账户',
   bankBranch           VARCHAR(50) COMMENT '放款/还款银行支行',
   signDate   DATE COMMENT '签约时间',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_creditInfo                                          */
/*==============================================================*/
CREATE TABLE t_creditInfo
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   hasHouse             BOOLEAN COMMENT '有无房产',
   hasHouseLoan         BOOLEAN COMMENT '有无房贷',
   hasCar               BOOLEAN COMMENT '有无车产',
   hasCarLoan           BOOLEAN COMMENT '有无车贷',
   maxOverdueMonth      INT COMMENT '信用卡、贷款最大逾期状况（24个月内）',
   maxOverdueNum        INT COMMENT '信用卡、贷款最大逾期次数（25个月内）',
   creditUsageRate      INT COMMENT '信用卡额度使用率',
   enquiriesNumber      INT COMMENT '信用卡/贷款审批查询次数（6个月内）',
   hasOtheLoan          BOOLEAN COMMENT '有无其他信用贷款',
   hasCreditCard        BOOLEAN COMMENT '有无信用卡',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_identity                                            */
/*==============================================================*/
CREATE TABLE t_identity
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(20) COMMENT '姓名',
   gender               INT COMMENT '性别
            0 女
            1 男',
   ethnic               VARCHAR(20) COMMENT '民族',
   birthday             DATE COMMENT '出生年月 yyyy-MM-dd',
   address              VARCHAR(100) COMMENT '地址',
   identity             VARCHAR(30) COMMENT '身份证号限18位,最后可以以数字或者字母x',
   administration       VARCHAR(30) COMMENT '发证机关',
   issueDate            DATE COMMENT '有效期开始',
   expireDate           DATE COMMENT '有效期结束',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_item                                                */
/*==============================================================*/
CREATE TABLE t_item
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(30) COMMENT '物品名称',
   number               INT COMMENT '物品数量',
   fk_carInfo_id        BIGINT COMMENT '车辆表外键',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_loanHistory                                         */
/*==============================================================*/
CREATE TABLE t_loanHistory
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   fk_indentity_id      BIGINT COMMENT '身份证号',
   loanType             VARCHAR(20) COMMENT '贷款类型',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_log                                                 */
/*==============================================================*/
CREATE TABLE t_log
(
   id                   BIGINT,
   loginDate            DATETIME COMMENT '用户登陆时间',
   userName             VARBINARY(20) COMMENT '登陆用户名',
   exitDate             DATETIME COMMENT '用户退出时间'
);

/*==============================================================*/
/* Table: t_opinion                                             */
/*==============================================================*/
CREATE TABLE t_opinion
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   loanTime             INT COMMENT '批准期数',
   conclusion           VARCHAR(20) COMMENT '结论',
   loanAmount           DOUBLE COMMENT '审批额度',
   branchOpinion        VARCHAR(500) COMMENT '分公司意见',
   HQOpinion            VARCHAR(500) COMMENT '总公司意见',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
CREATE TABLE t_order
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   contractNumber       VARCHAR(100),
   returnOpinion        VARCHAR(100),
   fk_client_id         BIGINT,
   fk_opinion_id        BIGINT,
   STATUS               VARCHAR(20),
   ROLLBACK             VARCHAR(20),
   loanStatus           INT,
   submenuStatus        INT,
   submit               INT,
   fk_product_id        BIGINT,
   fk_contract_id       BIGINT,
   fk_credit_id         BIGINT,
   fk_identiry_id       BIGINT,
   fk_company_id        BIGINT,
   auditor              VARCHAR(30),
   manager              VARCHAR(20),
   timeStarting    DATE COMMENT '进件时间',
   getMoneyTime    DATE,
   review  DATE COMMENT '复审日期',
   VERSION   INT,
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_product                                             */
/*==============================================================*/
CREATE TABLE t_product
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(20) COMMENT '产品名',
   periods              VARCHAR(50) COMMENT '期数
            6/12/18/24',
   accrual              VARCHAR(50) COMMENT '利息
            4/5/6/7',
   capital              DOUBLE,
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
CREATE TABLE t_role
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   role                 VARCHAR(20) COMMENT '角色名',
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
CREATE TABLE t_user
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   userName             VARCHAR(20) COMMENT '真实姓名',
   loginName            VARCHAR(20) COMMENT '登陆名',
   fk_branch_id         BIGINT COMMENT '公司表外键',
   PASSWORD             VARCHAR(30),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: t_user_role                                           */
/*==============================================================*/
CREATE TABLE t_user_role
(
   id                   BIGINT NOT NULL AUTO_INCREMENT,
   userId               BIGINT COMMENT '用户id',
   roleId               BIGINT COMMENT '角色id',
   PRIMARY KEY (id)
);

 ALTER TABLE t_order ADD COLUMN getMoneyTime DATE
 alter table t_client add column  identity varchar(20);