package com.hospital.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.Date;

@ApiModel(value="就诊卡实体类",description="用于封装就诊卡的")
public class UserCardsModel{
    /**
     *
     */
    @ApiModelProperty(value="自增ID",name="username")
    private Integer id;

    /**
     * 绑定人名称
     */
    @ApiModelProperty(value="绑定人名称",name="userName",example="张三",required=true)
    private String userName;

    /**
     * 绑定人手机
     */
    @ApiModelProperty(value="绑定人手机",name="userPhone",required=true)
    private String userPhone;

    /**
     * 绑定人证件号
     */
    @ApiModelProperty(value="绑定人证件号",name="idcard",required=true)
    private String idcard;

    /**
     * 出生日期
     */
    @ApiModelProperty(value="出生日期",name="birthday",required=true)
    private Date birthday;

    /**
     * 绑定人性别（0-男，1-女）
     */
    @ApiModelProperty(value="绑定人性别（1-男，2-女）",name="gender",required=true)
    private Byte gender;

    /**
     * 监护人关系（？）
     */
    @ApiModelProperty(value="监护人关系",name="guardianRelation")
    private Byte guardianRelation;

    /**
     * 绑定人住址
     */
    @ApiModelProperty(value="绑定人住址",name="guardianUserAddress")
    private String guardianUserAddress;

    /**
     * 监护人名称
     */
    @ApiModelProperty(value="监护人名称",name="guardianName")
    private String guardianName;

    /**
     * 绑定人证件号
     */
    @ApiModelProperty(value="绑定人证件号",name="guardianIdno")
    private String guardianIdno;

    /**
     * 监护人手机号
     */
    @ApiModelProperty(value="监护人手机号",name="guardianPhone")
    private String guardianPhone;

    /**
     * 绑定类型（0-本人，1-他人，2-儿童）
     */
    @ApiModelProperty(value="绑定类型（0-本人，1-他人，2-儿童）",name="bindType")
    private Byte bindType;

    /**
     * 卡类型（0-实物卡，1-虚拟卡）
     */
    @ApiModelProperty(value="卡类型（0-实物卡，1-虚拟卡）",name="cardType")
    private Byte cardType;

    /**
     * 支付宝用户ID
     */
    @ApiModelProperty(value="支付宝用户ID",name="userId")
    private String userId;

    /**
     * 微信用户ID
     */
    @ApiModelProperty(value="微信用户ID",name="openId")
    private String openId;

    /**
     * 绑定时间
     */
    @ApiModelProperty(value="绑定时间",name="bindTime")
    private Date bindTime;

    /**
     * 解绑时间
     */
    @ApiModelProperty(value="解绑时间",name="unbindTime")
    private Date unbindTime;

    /**
     * 绑定状态（0-绑定，1-解绑）
     */
    @ApiModelProperty(value="绑定状态（0-绑定，1-解绑）",name="bindStatus")
    private Byte bindStatus;

    /**
     * 虚拟卡号
     */
    @ApiModelProperty(value="虚拟卡号",name="patientId")
    private String patientId;

    /**
     * 诊断卡号
     */
    @ApiModelProperty(value="诊断卡号",name="cardNo")
    private String cardNo;

    /**
     * 预留1
     */
    @ApiModelProperty(value="预留1",name="outpara1")
    private String outpara1;

    /**
     * 预留2
     */
    @ApiModelProperty(value="预留2",name="outpara2")
    private String outpara2;

    /**
     * 预留3
     */
    @ApiModelProperty(value="预留3",name="outpara3")
    private String outpara3;

    /**
     * 预留4
     */
    @ApiModelProperty(value="预留4",name="outpara4")
    private String outpara4;

    /**
     *
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     *
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 绑定人名称
     * @return user_name 绑定人名称
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 绑定人名称
     * @param userName 绑定人名称
     */
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    /**
     * 绑定人手机
     * @return user_phone 绑定人手机
     */
    public String getUserPhone() {
        return userPhone;
    }

    /**
     * 绑定人手机
     * @param userPhone 绑定人手机
     */
    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    /**
     * 绑定人证件号
     * @return idcard 绑定人证件号
     */
    public String getIdcard() {
        return idcard;
    }

    /**
     * 绑定人证件号
     * @param idcard 绑定人证件号
     */
    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    /**
     *
     * @return birthday
     */
    public Date getBirthday() {
        return birthday;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    /**
     *
     * @param birthday
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * 绑定人性别（0-男，1-女）
     * @return gender 绑定人性别（0-男，1-女）
     */
    public Byte getGender() {
        return gender;
    }

    /**
     * 绑定人性别（0-男，1-女）
     * @param gender 绑定人性别（0-男，1-女）
     */
    public void setGender(Byte gender) {
        this.gender = gender;
    }

    /**
     * 监护人关系（？）
     * @return guardian_relation 监护人关系（？）
     */
    public Byte getGuardianRelation() {
        return guardianRelation;
    }

    /**
     * 监护人关系（？）
     * @param guardianRelation 监护人关系（？）
     */
    public void setGuardianRelation(Byte guardianRelation) {
        this.guardianRelation = guardianRelation;
    }

    /**
     * 绑定人住址
     * @return guardian_user_address 绑定人住址
     */
    public String getGuardianUserAddress() {
        return guardianUserAddress;
    }

    /**
     * 绑定人住址
     * @param guardianUserAddress 绑定人住址
     */
    public void setGuardianUserAddress(String guardianUserAddress) {
        this.guardianUserAddress = guardianUserAddress == null ? null : guardianUserAddress.trim();
    }

    /**
     * 监护人名称
     * @return guardian_name 监护人名称
     */
    public String getGuardianName() {
        return guardianName;
    }

    /**
     * 监护人名称
     * @param guardianName 监护人名称
     */
    public void setGuardianName(String guardianName) {
        this.guardianName = guardianName == null ? null : guardianName.trim();
    }

    /**
     * 绑定人证件号
     * @return guardian_idno 绑定人证件号
     */
    public String getGuardianIdno() {
        return guardianIdno;
    }

    /**
     * 绑定人证件号
     * @param guardianIdno 绑定人证件号
     */
    public void setGuardianIdno(String guardianIdno) {
        this.guardianIdno = guardianIdno == null ? null : guardianIdno.trim();
    }

    /**
     * 监护人手机号
     * @return guardian_phone 监护人手机号
     */
    public String getGuardianPhone() {
        return guardianPhone;
    }

    /**
     * 监护人手机号
     * @param guardianPhone 监护人手机号
     */
    public void setGuardianPhone(String guardianPhone) {
        this.guardianPhone = guardianPhone == null ? null : guardianPhone.trim();
    }

    /**
     * 绑定类型（0-本人，1-他人，2-儿童）
     * @return bind_type 绑定类型（0-本人，1-他人，2-儿童）
     */
    public Byte getBindType() {
        return bindType;
    }

    /**
     * 绑定类型（0-本人，1-他人，2-儿童）
     * @param bindType 绑定类型（0-本人，1-他人，2-儿童）
     */
    public void setBindType(Byte bindType) {
        this.bindType = bindType;
    }

    /**
     * 卡类型（0-实物卡，1-虚礼卡）
     * @return card_type 卡类型（0-实物卡，1-虚礼卡）
     */
    public Byte getCardType() {
        return cardType;
    }

    /**
     * 卡类型（0-实物卡，1-虚礼卡）
     * @param cardType 卡类型（0-实物卡，1-虚礼卡）
     */
    public void setCardType(Byte cardType) {
        this.cardType = cardType;
    }

    /**
     * 用户编号
     * @return user_id 用户编号
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 用户编号
     * @param userId 用户编号
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * 绑定时间
     * @return bind_time 绑定时间
     */
    public Date getBindTime() {
        return bindTime;
    }

    /**
     * 绑定时间
     * @param bindTime 绑定时间
     */
    public void setBindTime(Date bindTime) {
        this.bindTime = bindTime;
    }

    /**
     * 解绑时间
     * @return unbind_time 解绑时间
     */
    public Date getUnbindTime() {
        return unbindTime;
    }

    /**
     * 解绑时间
     * @param unbindTime 解绑时间
     */
    public void setUnbindTime(Date unbindTime) {
        this.unbindTime = unbindTime;
    }

    /**
     * 绑定状态（0-绑定，1-解绑）
     * @return bind_status 绑定状态（0-绑定，1-解绑）
     */
    public Byte getBindStatus() {
        return bindStatus;
    }

    /**
     * 绑定状态（0-绑定，1-解绑）
     * @param bindStatus 绑定状态（0-绑定，1-解绑）
     */
    public void setBindStatus(Byte bindStatus) {
        this.bindStatus = bindStatus;
    }

    /**
     * 虚拟卡号
     * @return patientId 虚拟卡号
     */
    public String getPatientId() {
        return patientId;
    }

    /**
     * 虚拟卡号
     * @param patientId 虚拟卡号
     */
    public void setPatientId(String patientId) {
        this.patientId = patientId == null ? null : patientId.trim();
    }

    /**
     * 诊断卡号
     * @return card_no 诊断卡号
     */
    public String getCardNo() {
        return cardNo;
    }

    /**
     * 诊断卡号
     * @param cardNo 诊断卡号
     */
    public void setCardNo(String cardNo) {
        this.cardNo = cardNo == null ? null : cardNo.trim();
    }

    /**
     * 预留1
     * @return outPara1 预留1
     */
    public String getOutpara1() {
        return outpara1;
    }

    /**
     * 预留1
     * @param outpara1 预留1
     */
    public void setOutpara1(String outpara1) {
        this.outpara1 = outpara1 == null ? null : outpara1.trim();
    }

    /**
     * 预留2
     * @return outPara2 预留2
     */
    public String getOutpara2() {
        return outpara2;
    }

    /**
     * 预留2
     * @param outpara2 预留2
     */
    public void setOutpara2(String outpara2) {
        this.outpara2 = outpara2 == null ? null : outpara2.trim();
    }

    /**
     * 预留3
     * @return outPara3 预留3
     */
    public String getOutpara3() {
        return outpara3;
    }

    /**
     * 预留3
     * @param outpara3 预留3
     */
    public void setOutpara3(String outpara3) {
        this.outpara3 = outpara3 == null ? null : outpara3.trim();
    }

    /**
     * 预留4
     * @return outPara4 预留4
     */
    public String getOutpara4() {
        return outpara4;
    }

    /**
     * 预留4
     * @param outpara4 预留4
     */
    public void setOutpara4(String outpara4) {
        this.outpara4 = outpara4 == null ? null : outpara4.trim();
    }
}