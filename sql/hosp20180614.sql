
--
-- 病理报告
--

DROP TABLE IF EXISTS `tab_bl_report`;
CREATE TABLE `tab_bl_report` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `mainInfoID` varchar(20) DEFAULT NULL,
  `check_code` varchar(20) DEFAULT NULL COMMENT '检查编号',
  `patient_id` varchar(20) DEFAULT NULL COMMENT '病人id',
  `patient_name` varchar(10) DEFAULT NULL COMMENT '病人姓名',
  `patient_sex` varchar(2) DEFAULT NULL COMMENT '病人性别',
  `patient_age` varchar(5) DEFAULT NULL COMMENT '病人年龄',
  `card_code` varchar(255) DEFAULT NULL ,
  `send_office` varchar(50) DEFAULT NULL,
  `bed_num` varchar(20) DEFAULT NULL COMMENT '病例编号',
  `re_check_doctor` varchar(20) DEFAULT NULL COMMENT '复检医生',
  `check_doctor` varchar(20) DEFAULT NULL COMMENT '检查医生',
  `send_time` date DEFAULT NULL,
  `report_date` date DEFAULT NULL COMMENT '报告时间',
  `check_result` text COMMENT '检查结果',
  `inPara1` varchar(100) DEFAULT NULL,
  `inPara2` varchar(100) DEFAULT NULL,
  `inPara3` varchar(100) DEFAULT NULL,
  `inPara4` varchar(100) DEFAULT NULL,
  `inPara5` varchar(100) DEFAULT NULL,
  `inPara6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 检验报告索引
--

DROP TABLE IF EXISTS `tab_index_info`;
CREATE TABLE `tab_index_info` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `patient_id` varchar(20) NOT NULL COMMENT '病人id',
  `patient_name` varchar(20) NOT NULL COMMENT '姓名',
  `patient_sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `patient_age` varchar(5) DEFAULT NULL COMMENT '年龄',
  `patient_type` varchar(255) DEFAULT NULL COMMENT '类型',
  `barcode` varchar(20) NOT NULL COMMENT '单号',
  `index_state` varchar(20) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `doctor_dept_name` varchar(20) DEFAULT NULL,
  `doctor_name` varchar(20) DEFAULT NULL,
  `result_date` datetime DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `outPara1` varchar(50) DEFAULT NULL,
  `outPara2` varchar(50) DEFAULT NULL,
  `outPara3` varchar(50) DEFAULT NULL,
  `outPara4` varchar(50) DEFAULT NULL,
  `outPara5` varchar(50) DEFAULT NULL,
  `outPara6` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 检验报告查询
--

DROP TABLE IF EXISTS `tab_lis_report`;
CREATE TABLE `tab_lis_report` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `bar_code` varchar(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL COMMENT '病人id',
  `item_code` varchar(200) DEFAULT NULL COMMENT '检验项编号',
  `item_name` varchar(500) DEFAULT NULL COMMENT '检验项名称',
  `result` varchar(100) DEFAULT NULL COMMENT '指标结果',
  `unit` varchar(100) DEFAULT NULL COMMENT '指标',
  `flag` varchar(100) DEFAULT NULL COMMENT '结果',
  `up_value` varchar(100) DEFAULT NULL COMMENT '上升',
  `down_value` varchar(100) DEFAULT NULL COMMENT '下降',
  `range` varchar(200) DEFAULT NULL COMMENT '指标区间',
  `range_memo` varchar(200) DEFAULT NULL COMMENT '指标备注',
  `outPara1` varchar(500) DEFAULT NULL,
  `outPara2` varchar(50) DEFAULT NULL,
  `outPara3` varchar(50) DEFAULT NULL,
  `outPara4` varchar(50) DEFAULT NULL,
  `outPara5` varchar(50) DEFAULT NULL,
  `outPara6` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 检查报告
--

DROP TABLE IF EXISTS `tab_pacs_report`;
CREATE TABLE `tab_pacs_report` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `patient_id` varchar(20) NOT NULL COMMENT '病人id',
  `study_id` varchar(20) DEFAULT NULL COMMENT '检查编号',
  `check_serial_num` varchar(20) DEFAULT NULL COMMENT '检查流水',
  `diagid` text,
  `patient_name` varchar(20) DEFAULT NULL COMMENT '病人名称',
  `sex` varchar(5) DEFAULT NULL COMMENT '性别',
  `age` varchar(5) DEFAULT NULL COMMENT '年龄',
  `device_type` varchar(20) DEFAULT NULL COMMENT '类型',
  `study_scription` varchar(500) DEFAULT NULL COMMENT '项名称',
  `study_time` datetime DEFAULT NULL COMMENT '报告时间',
  `study_status_name` varchar(10) DEFAULT NULL COMMENT '检查名称',
  `report_describe` text COMMENT '检查描述',
  `report_diagnose` text COMMENT '检查结果',
  `report_advice` text ,
  `doc_name` varchar(50) DEFAULT NULL COMMENT '医生名称',
  `operate_time` datetime DEFAULT NULL COMMENT '操作时间',
  `outPara1` varchar(20) DEFAULT NULL,
  `outPara2` varchar(20) DEFAULT NULL,
  `outPara3` varchar(20) DEFAULT NULL,
  `outPara4` varchar(20) DEFAULT NULL,
  `outPara5` varchar(20) DEFAULT NULL,
  `outPara6` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 红包规则表
--

DROP TABLE IF EXISTS `tab_zfb_redlist`;
CREATE TABLE `tab_zfb_redlist` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `redid` varchar(30) NOT NULL DEFAULT '' COMMENT '红包模板id',
  `redmoney` double(5,2) DEFAULT NULL COMMENT '红包金额',
  `redrandom` int(5) DEFAULT NULL COMMENT '红包概率',
  `rednum` int(10) DEFAULT NULL COMMENT '红包数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 发送红包记录表
--

DROP TABLE IF EXISTS `tab_zfb_sendredbaglist`;
CREATE TABLE `tab_zfb_sendredbaglist` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `userid` varchar(20) NOT NULL COMMENT '支付宝账号',
  `cardidgz` varchar(50) DEFAULT NULL COMMENT '关注红包',
  `cardidfx` varchar(50) DEFAULT NULL COMMENT '分享红包',
  `timegz` datetime DEFAULT NULL COMMENT '关注时间',
  `timefx` datetime DEFAULT NULL COMMENT '分享时间',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `seq_name` varchar(50) NOT NULL,
  `current_val` int(11) NOT NULL,
  `increment_val` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`seq_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 对账记录表
--

DROP TABLE IF EXISTS `tab_check_account`;
CREATE TABLE `tab_check_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `trans_date` varchar(10) NOT NULL COMMENT '交易日期',
  `trans_no` varchar(100) NOT NULL COMMENT '渠道交易流水号',
  `trade_no` varchar(30) DEFAULT NULL COMMENT '支付宝流水号',
  `check_status` varchar(3) NOT NULL COMMENT '对账状态（0.支付宝成功，HIS失败、1.HIS成功，支付宝失败、2.金额不一致）',
  `pay_type` varchar(3) NOT NULL COMMENT '支付类型（0.支付，1.撤销）',
  `amount` decimal(10,2) NOT NULL COMMENT '发生金额',
  `check_desc` varchar(200) NOT NULL COMMENT '对账描述',
  `add_date` varchar(30) NOT NULL COMMENT '对账日期',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 病案复印
--

DROP TABLE IF EXISTS `tab_copy_report`;
CREATE TABLE `tab_copy_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `patient_id` varchar(20) NOT NULL COMMENT '病人唯一号',
  `user_id` varchar(20) NOT NULL COMMENT '用户ID',
  `order_id` varchar(30) NOT NULL COMMENT '住院号',
  `user_name` varchar(30) NOT NULL COMMENT '患者姓名',
  `user_phone` varchar(30) NOT NULL COMMENT '联系方式',
  `handle_type` tinyint(4) NOT NULL COMMENT '办理类型（0.本人办理，1.代办）',
  `he_card_img_url` varchar(200) NOT NULL COMMENT '他人身份证上传的图片URL',
  `card_img_url` varchar(200) NOT NULL COMMENT '本人身份证上传的图片URL',
  `report_type` tinyint(4) NOT NULL COMMENT '申请事由（？）',
  `is_mail` tinyint(4) DEFAULT NULL COMMENT '是否邮寄（0.是，1.否 省内15元，省外20元）',
  `gather_user` varchar(30) NOT NULL COMMENT '收件人姓名',
  `gather_address` varchar(200) NOT NULL COMMENT '收件人地址',
  `gather_phone` varchar(20) NOT NULL COMMENT '收件人手机',
  `gather_desc` varchar(200) NOT NULL COMMENT '收件描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 科室表
--

DROP TABLE IF EXISTS `tab_department`;
CREATE TABLE `tab_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `deptOwn` varchar(20) NOT NULL COMMENT '院区标志',
  `department_name` varchar(100) NOT NULL COMMENT '科室名称',
  `department_code` varchar(20) NOT NULL COMMENT '科室代码',
  `department_belong` varchar(100) DEFAULT NULL COMMENT '所属大科室',
  `department_area` varchar(100) DEFAULT NULL COMMENT '位置（？）',
  `department_floor` varchar(30) DEFAULT NULL COMMENT '科室楼层',
  `department_desc` varchar(100) DEFAULT NULL COMMENT '科室描述',
  `department_level` tinyint(4) DEFAULT NULL COMMENT '科室级别',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 医生排班信息表
--

DROP TABLE IF EXISTS `tab_doctor`;
CREATE TABLE `tab_doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `deptOwn` varchar(20) NOT NULL COMMENT '院区标志',
  `doctor_no` varchar(20) DEFAULT NULL COMMENT '医生工号',
  `doctor_name` varchar(100) DEFAULT NULL COMMENT '医生姓名',
  `doctor_title` varchar(20) DEFAULT NULL COMMENT '医生职务职称',
  `illness_special_desc` varchar(20) DEFAULT NULL COMMENT '疾病专场描述',
  `input_code` varchar(20) DEFAULT NULL COMMENT '输入码',
  `register_fee` decimal(10,2) DEFAULT NULL COMMENT '挂号费',
  `clinic_fee` decimal(10,2) DEFAULT NULL COMMENT '诊查费',
  `specialty` varchar(100) DEFAULT NULL COMMENT '擅长',
  `doctor_small_pic_url` varchar(500) DEFAULT NULL COMMENT '医生图片（小）',
  `doctor_middle_pic_url` varchar(500) DEFAULT NULL COMMENT '医生图片（中）',
  `doctor_big_pic_url` varchar(500) DEFAULT NULL COMMENT '医生图片（大）',
  `doctor_desc` varchar(500) DEFAULT NULL COMMENT '医生介绍',
  `schedule_id` varchar(30) NOT NULL COMMENT '排班ID',
  `department_code` varchar(20) NOT NULL COMMENT '科室代码 科室主键',
  `register_type` tinyint(4) DEFAULT NULL COMMENT '挂号类别（1 现场挂号  2预约挂号  预约挂号看诊日期从T+1天开始到有最新排班的数据）',
  `department_name` varchar(100) NOT NULL COMMENT '科室名称',
  `register_date` datetime NOT NULL COMMENT '出诊日期',
  `begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `timeinterval` tinyint(4) NOT NULL COMMENT '午别（0.上午，1.下午，2.晚上）',
  `location` varchar(200) DEFAULT NULL COMMENT '位置',
  `source_count` varchar(4) DEFAULT NULL COMMENT '号源数量',
  `is_stop_source` varchar(8) DEFAULT NULL COMMENT '是否停号',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`),
  UNIQUE KEY `scheduleIdUnique` (`schedule_id`,`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 医生信息表
--

DROP TABLE IF EXISTS `tab_doctor_info`;
CREATE TABLE `tab_doctor_info` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `deptOwn` varchar(20) NOT NULL COMMENT '院区标志',
  `doctor_no` varchar(20) DEFAULT NULL COMMENT '医生编号',
  `doctor_name` varchar(30) DEFAULT NULL COMMENT '医生名称',
  `department` varchar(50) DEFAULT NULL COMMENT '科室名称',
  `introduction` text COMMENT '医生简介',
  `photo_url` varchar(100) DEFAULT NULL COMMENT '医生图片',
  `outPara1` varchar(20) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 支付宝账单下载记录表
--

DROP TABLE IF EXISTS `tab_file_info`;
CREATE TABLE `tab_file_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `trans_date` varchar(10) NOT NULL COMMENT '交易日期',
  `trans_time` varchar(10) NOT NULL COMMENT '交易时间',
  `file_name` varchar(100) NOT NULL COMMENT '批量文件名',
  `batch_no` varchar(30) NOT NULL COMMENT '批量流水号',
  `batch_status` varchar(3) NOT NULL COMMENT '批量状态（0.正在下载，1.已下载成功，2.导入成功）',
  `batch_type` varchar(3) NOT NULL COMMENT '批量类型（0.支付宝对账文件，1.HIS对账文件，2.HIS待退费清单）',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 黑白名单
--

DROP TABLE IF EXISTS `tab_headle_userslist`;
CREATE TABLE `tab_headle_userslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `users_type` varchar(100) DEFAULT NULL COMMENT '名单类型（1.黑名单，1.白名单）',
  `user_id` varchar(50) DEFAULT NULL COMMENT '支付宝会员id',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 医院信息
--

DROP TABLE IF EXISTS `tab_hospital`;
CREATE TABLE `tab_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) DEFAULT NULL COMMENT '医院代码',
  `hospital_name` varchar(100) NOT NULL COMMENT '医院名称',
  `area_name` varchar(100) DEFAULT NULL COMMENT '院区名称',
  `deptOwn` varchar(20) NOT NULL COMMENT '院区标志',
  `address` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `province` varchar(10) DEFAULT NULL COMMENT '医院所在省份',
  `city` varchar(10) DEFAULT NULL COMMENT '医院所在市',
  `county` varchar(10) DEFAULT NULL COMMENT '医院所在县',
  `area` varchar(10) DEFAULT NULL COMMENT '地图坐标',
  `hospital_desc` varchar(100) DEFAULT NULL COMMENT '医院描述',
  `hospital_user` varchar(30) DEFAULT NULL COMMENT '医院联系人',
  `hospital_phone` varchar(500) DEFAULT NULL COMMENT '医院联系电话（可以多个用“&分隔”）',
  `hospital_rank` varchar(20) DEFAULT NULL COMMENT '医院等级',
  `hospital_road` varchar(500) DEFAULT NULL COMMENT '来院路线',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 系统参数配置表
--

DROP TABLE IF EXISTS `tab_param`;
CREATE TABLE `tab_param` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `p_key` varchar(50) NOT NULL COMMENT '参数-键',
  `p_value` varchar(100) DEFAULT NULL COMMENT '参数-值',
  `p_type` varchar(50) DEFAULT NULL COMMENT '参数类型（1.性别，2.民族？）',
  `p_desc` varchar(500) DEFAULT NULL COMMENT '参数描述',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 支付信息表
--

DROP TABLE IF EXISTS `tab_pay_info`;
CREATE TABLE `tab_pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `recipe_no` varchar(20) DEFAULT NULL COMMENT '处方编号',
  `order_id` varchar(30) DEFAULT NULL COMMENT '单据唯一ID ',
  `area_code` varchar(20) NOT NULL COMMENT '院区代码 院区主键',
  `set_depart_code` varchar(20) NOT NULL COMMENT '开单科室编号',
  `set_depart_name` varchar(100) NOT NULL COMMENT '开单科室名称',
  `exec_dept_code` varchar(20) DEFAULT NULL COMMENT '执行科室编号',
  `exec_dept_name` varchar(100) DEFAULT NULL COMMENT '执行科室名称',
  `doctor_code` varchar(20) NOT NULL COMMENT '开单医生编号',
  `doctor_name` varchar(100) NOT NULL COMMENT '开单医生名称',
  `bill_type` varchar(20) DEFAULT NULL COMMENT '单据类别（处方类型）',
  `bill_name` varchar(100) DEFAULT NULL COMMENT '单据名称',
  `bill_time` datetime NOT NULL COMMENT '开单时间',
  `amount` decimal(10,2) NOT NULL COMMENT '单据金额',
  `patient_id` varchar(100) NOT NULL COMMENT '病人唯一号',
  `clinic_code` varchar(100) NOT NULL COMMENT '挂号唯一单据号',
  `user_id` varchar(100) NOT NULL COMMENT '用户ID',
  `pay_status` tinyint(4) NOT NULL COMMENT '交费状态（1.已交，0.未交）',
  `pay_type` varchar(20) NOT NULL COMMENT '交费类型（挂号缴费、诊间缴费）',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(50) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(50) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  `outPara5` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tab_pay_info_ix1` (`outPara1`,`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 诊间处方记录表
--

DROP TABLE IF EXISTS `tab_recipe`;
CREATE TABLE `tab_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `area_code` varchar(20) NOT NULL COMMENT '院区代码 院区主键',
  `recipe_no` varchar(20) NOT NULL COMMENT '处方编号',
  `order_id` varchar(30) NOT NULL COMMENT '单据唯一ID',
  `cost_name` varchar(100) NOT NULL COMMENT '费用名称',
  `cost_num` int(11) NOT NULL COMMENT '费用数量',
  `unit` varchar(10) NOT NULL COMMENT '单位',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `all_price` decimal(10,2) NOT NULL COMMENT '合计',
  `item_category` varchar(20) NOT NULL COMMENT '药品类别：中药、西药等',
  `med_spec` varchar(20) NOT NULL COMMENT '规格',
  `drug_code` varchar(20) NOT NULL COMMENT '药品编码',
  `exec_dept_code` varchar(20) NOT NULL COMMENT '执行科室',
  `get_status` tinyint(4) NOT NULL COMMENT '取药状态（0.未取，1.已取）',
  `patient_id` varchar(100) NOT NULL COMMENT '病人唯一号',
  `user_id` varchar(100) NOT NULL COMMENT '用户ID',
  `bill_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开单时间',
  `get_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '取药时间',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 退款记录表
--

DROP TABLE IF EXISTS `tab_refund_info`;
CREATE TABLE `tab_refund_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(30) NOT NULL COMMENT '单据唯一ID ',
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `set_depart_code` varchar(20) DEFAULT NULL COMMENT '开单科室编号',
  `set_depart_name` varchar(100) DEFAULT NULL COMMENT '开单科室名称',
  `doctor_code` varchar(20) DEFAULT NULL COMMENT '开单医生编号',
  `doctor_name` varchar(100) DEFAULT NULL COMMENT '开单医生名称',
  `bill_type` varchar(20) NOT NULL COMMENT '单据类别（类型）',
  `bill_name` varchar(50) NOT NULL COMMENT '发票编号',
  `bill_time` datetime NULL COMMENT '开单时间',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '单据金额',
  `refund_amount` decimal(10,2) NOT NULL COMMENT '退费金额',
  `patient_id` varchar(100) NOT NULL COMMENT '病人唯一号',
  `clinic_code` varchar(100) NOT NULL COMMENT '挂号唯一单据号',
  `user_id` varchar(100) DEFAULT NULL COMMENT '用户ID',
  `refund_status` tinyint(4) DEFAULT NULL COMMENT '退费状态（1.未退，2.已退款,3.退款失败，4.HIS退款成功，支付宝退款失败，5.HIS退款超时，6.支付宝退款超时）',
  `refund_desc` varchar(500) DEFAULT NULL COMMENT '退费描述',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '退款日期',
  `outPara3` varchar(50) DEFAULT NULL COMMENT '退款唯一号',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 挂号记录表
--

DROP TABLE IF EXISTS `tab_register`;
CREATE TABLE `tab_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `rec_id` varchar(20) NOT NULL COMMENT '预约记录ID,HIS中生成的预约记录主键ID',
  `reg_status` tinyint(4) NOT NULL COMMENT '挂号状态(1锁号 2销号,3.取号)',
  `schedule_id` varchar(20) NOT NULL COMMENT '排班ID',
  `serial_no` varchar(30) DEFAULT NULL COMMENT '就诊序号',
  `parttime_id` varchar(20) NOT NULL COMMENT '分时ID',
  `order_no` varchar(30) NOT NULL COMMENT '交易流水号（交易日期6+交易渠道2+本人支付还是他人支付1+交易名称2+用户卡号ID11+8）',
  `lock_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cancel_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '销号时间',
  `take_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '取号时间',
  `user_id` varchar(20) NOT NULL COMMENT '用户ID',
  `patient_id` varchar(20) NOT NULL COMMENT '用户卡号ID',
  `pay_flow_no` varchar(30) DEFAULT NULL COMMENT '预约记录ID 取号接口保存',
  `tiket_no` varchar(30) DEFAULT NULL COMMENT '号票编号',
  `floor` varchar(30) DEFAULT NULL COMMENT '就诊楼层',
  `department_code` varchar(20) NOT NULL COMMENT '科室代码 科室主键',
  `doctor_no` varchar(20) NOT NULL COMMENT '医生工号',
  `registration_num` varchar(30) DEFAULT NULL COMMENT '当日已挂号数',
  `reserve_num` varchar(30) DEFAULT NULL COMMENT '已被预约号数',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '分时开始时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '分时结束时间',
  `reserver_source` tinyint(4) DEFAULT NULL COMMENT '分配的平台ID（3-支付宝渠道）',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(100) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(100) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 消息推送记录表
--

DROP TABLE IF EXISTS `tab_resend`;
CREATE TABLE `tab_resend` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `param` text COMMENT '推送的数据',
  `fail_time` datetime DEFAULT NULL COMMENT '失败的时间',
  `status` varchar(5) DEFAULT NULL COMMENT '0 推送失败，1推送成功',
  `success_time` datetime DEFAULT NULL COMMENT '成功的时间',
  `target` varchar(100) DEFAULT NULL COMMENT '推送目标',
  `type` varchar(5) DEFAULT NULL COMMENT '推送类型',
  `user_id` varchar(20) DEFAULT NULL COMMENT '支付宝用户ID',
  `trans_no` varchar(50) NOT NULL COMMENT '交易流水号（交易日期8+交易渠道2+支付类型2+本人支付还是他人支付2+交易名称2+4位时间戳）',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 支付宝第三方应用授权记录表
--

DROP TABLE IF EXISTS `tab_token`;
CREATE TABLE `tab_token` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `app_auth_token` varchar(100) DEFAULT NULL COMMENT '商户授权令牌',
  `user_id` varchar(50) DEFAULT NULL COMMENT '授权商户的ID',
  `auth_app_id` varchar(50) DEFAULT NULL COMMENT '授权商户的AppId',
  `expires_in` int(11) DEFAULT NULL COMMENT '令牌有效期',
  `re_expires_in` int(11) DEFAULT NULL COMMENT '刷新令牌有效期',
  `app_refresh_token` varchar(100) DEFAULT NULL COMMENT '刷新令牌时使用',
  `create_time` datetime DEFAULT NULL COMMENT 'token插入时间',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 支付宝交易流水信息表
--

DROP TABLE IF EXISTS `tab_trans`;
CREATE TABLE `tab_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `trans_no` varchar(50) NOT NULL COMMENT '交易流水号（交易日期8+交易渠道2+支付类型2+本人支付还是他人支付2+交易名称2+4位时间戳）',
  `trans_date` varchar(30) NOT NULL COMMENT '交易日期',
  `trans_time` varchar(30) NOT NULL COMMENT '交易时间',
  `card_no` varchar(30) NOT NULL COMMENT '用户卡号',
  `order_id` varchar(30) NOT NULL COMMENT '账单号',
  `id_no` varchar(100) NOT NULL COMMENT '绑定人证件号',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `user_id` varchar(30) DEFAULT NULL COMMENT '用户ID(用户客户端编号)',
  `patient_id` varchar(30) NOT NULL COMMENT '用户卡号ID',
  `order_name` varchar(30) DEFAULT NULL COMMENT '账单名称',
  `trade_no` varchar(30) DEFAULT NULL COMMENT '支付宝交易号',
  `trade_date` varchar(30) DEFAULT NULL COMMENT '支付宝交易日期',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '交易金额',
  `reason` varchar(200) DEFAULT NULL COMMENT '交易描述',
  `trans_type` tinyint(4) DEFAULT NULL COMMENT '交易类型（1.支付，2.退款，3.撤销）',
  `payer_type` tinyint(4) DEFAULT NULL COMMENT '交费类型（？）',
  `pay_type` tinyint(4) DEFAULT NULL COMMENT '支付类型（1.钱包，2.信用支付？）',
  `title` varchar(20) DEFAULT NULL COMMENT '交易名称（例如：挂号交费，药品交费，诊间其它费用）',
  `outPara1` varchar(500) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(50) DEFAULT NULL COMMENT '原交易订单号',
  `outPara4` varchar(100) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`),
  KEY `tab_trans_index_1` (`trans_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 诊断卡信息表
--

DROP TABLE IF EXISTS `tab_user_cards`;
CREATE TABLE `tab_user_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `user_name` varchar(100) NOT NULL COMMENT '绑定人名称',
  `user_phone` varchar(20) NOT NULL COMMENT '绑定人手机',
  `idcard` varchar(100) NOT NULL COMMENT '绑定人证件号',
  `birthday` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gender` tinyint(4) NOT NULL COMMENT '绑定人性别（0-男，1-女）',
  `guardian_relation` tinyint(4) DEFAULT NULL COMMENT '监护人关系（？）',
  `guardian_user_address` varchar(500) DEFAULT NULL COMMENT '绑定人住址',
  `guardian_name` varchar(20) DEFAULT NULL COMMENT '监护人名称',
  `guardian_idno` varchar(100) NOT NULL COMMENT '绑定人证件号',
  `guardian_phone` varchar(20) DEFAULT NULL COMMENT '监护人手机号',
  `bind_type` tinyint(4) NOT NULL COMMENT '绑定类型（0-本人，1-他人，2-儿童）',
  `card_type` tinyint(4) NOT NULL COMMENT '卡类型（0-实物卡，1-虚礼卡）',
  `user_id` varchar(30) DEFAULT NULL COMMENT '支付宝用户ID',
  `open_id` varchar(30) DEFAULT NULL COMMENT '微信用户ID',
  `bind_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '绑定时间',
  `unbind_time` datetime NULL DEFAULT '0000-00-00 00:00:00' COMMENT '解绑时间',
  `bind_status` tinyint(4) NOT NULL COMMENT '绑定状态（0-绑定，1-解绑）',
  `patient_id` varchar(30) DEFAULT NULL COMMENT '虚拟卡号',
  `card_no` varchar(30) DEFAULT NULL COMMENT '诊断卡号',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INX_TAB_USER_CARDS_PARENTID` (`patient_id`,`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


--
-- 支付宝卡包
--

DROP TABLE IF EXISTS `tab_zfb_pass`;
CREATE TABLE `tab_zfb_pass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `user_id` varchar(50) NOT NULL COMMENT '支付宝用户ID',
  `pass_id` varchar(50) NOT NULL COMMENT '卡卷ID',
  `pass_type` tinyint(4) NOT NULL COMMENT '是否新建卡卷（0.否，1.是）',
  `serial_number` varchar(100) NOT NULL COMMENT '唯一核销凭证串号（必须由动态传参指定）',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(50) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 支付宝用户表
--

DROP TABLE IF EXISTS `tab_zfb_user`;
CREATE TABLE `tab_zfb_user` (
  `id` int(99) NOT NULL AUTO_INCREMENT COMMENT '自增标识',
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `user_id` varchar(16) NOT NULL COMMENT '支付宝会员id',
  `name` varchar(50) DEFAULT NULL COMMENT '用户真实姓名  ',
  `gender` varchar(10) DEFAULT NULL COMMENT '性别（F：女性；M：男性）。',
  `idcard` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `user_type` varchar(2) DEFAULT NULL COMMENT '用户类型（1/2）;1代表公司账户2代表个人账户',
  `user_status` varchar(2) DEFAULT NULL COMMENT '用户状态（Q/T/B/W）。Q代表快速注册用户。T代表已认证用户。B代表被冻结账户。W代表已注册，未激活的账户',
  `is_certified` varchar(1) DEFAULT NULL COMMENT '是否通过实名认证。T是通过 F是没有通过实名认证',
  `province` varchar(20) DEFAULT NULL COMMENT '省份名称',
  `city` varchar(20) DEFAULT NULL COMMENT '市名称',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `is_student_certified` varchar(1) DEFAULT NULL COMMENT '是否是学生',
  `phone` varchar(11) DEFAULT NULL COMMENT '用户电话',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  `first_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `useridUnique` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 信用就医表（芝麻信用）
--

DROP TABLE IF EXISTS `xyjytable`;
CREATE TABLE `xyjytable` (
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `name` varchar(20) DEFAULT NULL,
  `idcard` varchar(100) NOT NULL DEFAULT '',
  `userid` varchar(50) DEFAULT NULL,
  `external_agreement_no` varchar(100) DEFAULT NULL COMMENT '协议签约单号',
  `agreement_no` varchar(100) DEFAULT NULL COMMENT '协议单号',
  PRIMARY KEY (`idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 住院预缴流水表
--

DROP TABLE IF EXISTS `tab_hosp_record`;
CREATE TABLE `tab_hosp_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `orderid` varchar(50) NOT NULL COMMENT '订单号',
  `userid` varchar(20) NOT NULL COMMENT '支付宝用户编号',
  `patientid` varchar(20) DEFAULT NULL COMMENT '就诊卡号',
  `patientname` varchar(100) NOT NULL COMMENT '就诊姓名',
  `userphone` varchar(20) DEFAULT NULL COMMENT '用户手机号',
  `hospatientId` varchar(20) NOT NULL COMMENT '住院就诊卡号',
  `inHospitalNo` varchar(20) NOT NULL COMMENT '住院号',
  `patientGender` varchar(2) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  `age` varchar(2) DEFAULT NULL COMMENT '年龄',
  `hosStatus` varchar(2) DEFAULT NULL COMMENT '住院状态',
  `inDate` varchar(20) DEFAULT NULL COMMENT '入院日期',
  `hospitalArea` varchar(200) DEFAULT NULL COMMENT '院区编号',
  `hosSectionCode` varchar(20) DEFAULT NULL COMMENT '住院科室代码',
  `hosSectionName` varchar(200) DEFAULT NULL COMMENT '科室名',
  `hosBedNo` varchar(20) DEFAULT NULL COMMENT '住院床位',
  `hosBalance` decimal(8,2) DEFAULT NULL COMMENT '余额',
  `idCardNo` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `outDate` varchar(20) DEFAULT NULL COMMENT '出院日期',
  `prePay` decimal(8,2) DEFAULT NULL,
  `outPara1` varchar(500) DEFAULT NULL,
  `outPara2` varchar(100) DEFAULT NULL,
  `outPara3` varchar(50) DEFAULT NULL,
  `outPara4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 住院预缴次数记录表
--

DROP TABLE IF EXISTS `tab_hosprecord_seq`;
CREATE TABLE `tab_hosprecord_seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `userid` varchar(20) NOT NULL COMMENT '支付宝会员id',
  `patientid` varchar(20) DEFAULT NULL COMMENT '就诊卡号',
  `patientname` varchar(100) DEFAULT NULL COMMENT '病人姓名',
  `inHospitalNo` varchar(20) NOT NULL COMMENT '住院号',
  `outPara1` varchar(100) DEFAULT NULL,
  `outPara2` varchar(100) DEFAULT NULL,
  `outPara3` varchar(50) DEFAULT NULL,
  `outPara4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 病案复印表
--

DROP TABLE IF EXISTS `tab_record_copy`;
CREATE TABLE `tab_record_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `orderid` varchar(50) NOT NULL COMMENT '订单号',
  `zfbuserid` varchar(20) NOT NULL COMMENT '支付宝会员ID',
  `userid` varchar(20) NOT NULL COMMENT '病案用户ID',
  `patientid` varchar(500) NOT NULL COMMENT '就诊卡号',
  `patientname` varchar(100) NOT NULL COMMENT '病人姓名',
  `userphone` varchar(20) NOT NULL COMMENT '用户手机号',
  `delegatechoice` int(11) NOT NULL COMMENT '是否代理',
  `applyreason` varchar(500) DEFAULT NULL COMMENT '复印原因',
  `patientIdImg` longtext COMMENT '患者身份证正面',
  `delegateIdImg` longtext COMMENT '代理人身份证正面',
  `postChoice` int(11) DEFAULT NULL COMMENT '代办人与患者关系',
  `recipient` varchar(100) NOT NULL COMMENT '是否邮寄',
  `deliverCode` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `pageCount` int(11) DEFAULT NULL COMMENT '复印张数',
  `postFee` decimal(8,2) DEFAULT NULL COMMENT '邮寄费用',
  `payAmount` decimal(8,2) DEFAULT NULL COMMENT '总额',
  `orderTime` varchar(30) NOT NULL COMMENT '下单时间',
  `cancelTime` varchar(30) DEFAULT NULL COMMENT '取消时间',
  `auditTime` varchar(30) DEFAULT NULL COMMENT '审核时间',
  `payTime` varchar(30) DEFAULT NULL COMMENT '支付时间',
  `deliverTime` varchar(30) DEFAULT NULL COMMENT '发货时间',
  `cancelReason` varchar(500) DEFAULT NULL COMMENT '取消时间',
  `rejectReason` varchar(500) DEFAULT NULL COMMENT '审核拒绝原因',
  `orderstatus` int(11) NOT NULL  COMMENT '订单状态',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `outPara1` varchar(100) DEFAULT NULL,
  `outPara2` varchar(100) DEFAULT NULL,
  `outPara3` varchar(50) DEFAULT NULL,
  `outPara4` varchar(50) DEFAULT NULL,
  `copyFee` decimal(8,2) DEFAULT NULL COMMENT '复印费用',
  `rAddress` varchar(500) NOT NULL COMMENT '收件地址',
  `rContacts` varchar(20) NOT NULL COMMENT '收件人联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- 支付宝卡包
--

DROP TABLE IF EXISTS `tab_zfb_pass`;
CREATE TABLE `tab_zfb_pass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `zp_user_id` varchar(30) NOT NULL COMMENT '支付宝用户ID',
  `zp_pass_id` varchar(50) NOT NULL COMMENT '卡卷ID',
  `zp_pass_type` tinyint(4) NOT NULL COMMENT '是否新建卡卷（0.否，1.是）',
  `zp_serial_number` varchar(50) NOT NULL COMMENT '唯一核销凭证串号（模版编号）',
  `outPara1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `outPara2` varchar(20) DEFAULT NULL COMMENT '预留2',
  `outPara3` varchar(20) DEFAULT NULL COMMENT '预留3',
  `outPara4` varchar(20) DEFAULT NULL COMMENT '预留4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `zfb_tbl_batch`
--

DROP TABLE IF EXISTS `zfb_tbl_batch`;
CREATE TABLE `zfb_tbl_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `b_name` varchar(50) NOT NULL COMMENT '批量名称',
  `b_class` varchar(200) NOT NULL COMMENT '批量程序',
  `b_tradecode` varchar(200) NOT NULL COMMENT '交易码',
  `b_is` varchar(200) NOT NULL COMMENT '是否支持轮询',
  `b_count` varchar(20) NOT NULL COMMENT '轮询次数',
  `b_datecount` varchar(20) NOT NULL COMMENT '轮询周期(分钟)',
  `b_addtime` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Table structure for table `zfb_tbl_batch_info`
--

DROP TABLE IF EXISTS `zfb_tbl_batch_info`;
CREATE TABLE `zfb_tbl_batch_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL COMMENT '医院代码',
  `bi_name` varchar(50) NOT NULL COMMENT '批量名称',
  `bi_id` int(11) NOT NULL COMMENT '批量编号',
  `bi_msg` varchar(200) DEFAULT NULL COMMENT '失败原因',
  `bi_run_status` varchar(2) NOT NULL COMMENT '批量状态',
  `bi_run_datetime` datetime NOT NULL COMMENT '运行时间',
  `bi_run_hour` varchar(10) DEFAULT NULL COMMENT '运行时长,秒为单位',
  `bi_addtime` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- Dump completed on 2018-06-14 17:07:07
