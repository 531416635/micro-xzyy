package com.hospital.rspModel;

import com.hospital.apiModel.BaseResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.Date;
import java.util.List;

@ApiModel
public class GetCardInfosRsp extends BaseResponse {
    private GetCardInfosRspData data;

    @Override
    public GetCardInfosRspData getData() {
        return data;
    }

    public void setData(GetCardInfosRspData data) {
        this.data = data;
    }

    @ApiModel
    public static class GetCardInfosRspData {
        private List<CardInfosRspListModel> data;

        public List<CardInfosRspListModel> getData() {
            return data;
        }

        public void setData(List<CardInfosRspListModel> data) {
            this.data = data;
        }

        @ApiModel
        public static class CardInfosRspListModel {
            @ApiModelProperty(value = "id", required = true)
            private Integer id;
            @ApiModelProperty(value = "绑定人名称", required = true)
            private String userName;
            @ApiModelProperty(value = "绑定人手机", required = true)
            private String userPhone;
            @ApiModelProperty(value = "绑定人证件号", required = true)
            private String idcard;
            @ApiModelProperty(value = "出生日期", required = true)
            private Date birthday;
            @ApiModelProperty(value = "绑定人性别（0-男，1-女）", required = true)
            private Byte gender;
            @ApiModelProperty(value = "监护人关系", required = true)
            private Byte guardianRelation;
            @ApiModelProperty(value = "绑定人住址", required = true)
            private String guardianUserAddress;
            @ApiModelProperty(value = "监护人名称", required = true)
            private String guardianName;
            @ApiModelProperty(value = "绑定人证件号", required = true)
            private String guardianIdno;
            @ApiModelProperty(value = "监护人手机号", required = true)
            private String guardianPhone;
            @ApiModelProperty(value = "绑定类型（0-本人，1-他人，2-儿童）", required = true)
            private Byte bindType;
            @ApiModelProperty(value = "卡类型（0-实物卡，1-虚礼卡）", required = true)
            private Byte cardType;
            @ApiModelProperty(value = "支付宝用户id", required = true)
            private String userId;
            @ApiModelProperty(value = "微信用户id", required = true)
            private String openId;
            @ApiModelProperty(value = "绑定时间", required = true)
            private Date bindTime;
            @ApiModelProperty(value = "解绑时间", required = true)
            private Date unbindTime;
            @ApiModelProperty(value = "绑定状态", required = true)
            private Byte bindStatus;
            @ApiModelProperty(value = "虚拟卡号", required = true)
            private String patientId;
            @ApiModelProperty(value = "诊断卡号", required = true)
            private String cardNo;
            @ApiModelProperty(value = "预留1", required = true)
            private String outpara1;
            @ApiModelProperty(value = "预留2", required = true)
            private String outpara2;
            @ApiModelProperty(value = "预留3", required = true)
             private String outpara3;
            @ApiModelProperty(value = "预留4", required = true)
            private String outpara4;

            public Integer getId() {
                return id;
            }

            public void setId(Integer id) {
                this.id = id;
            }

            public String getUserName() {
                return userName;
            }

            public void setUserName(String userName) {
                this.userName = userName;
            }

            public String getUserPhone() {
                return userPhone;
            }

            public void setUserPhone(String userPhone) {
                this.userPhone = userPhone;
            }

            public String getIdcard() {
                return idcard;
            }

            public void setIdcard(String idcard) {
                this.idcard = idcard;
            }

            public Date getBirthday() {
                return birthday;
            }

            public void setBirthday(Date birthday) {
                this.birthday = birthday;
            }

            public Byte getGender() {
                return gender;
            }

            public void setGender(String gender) {
                if("男".equals(gender)){
                    this.gender = 0;
                }
                else if("女".equals(gender)){
                    this.gender = 1;
                }


            }

            public String getOpenId() {
                return openId;
            }

            public void setOpenId(String openId) {
                this.openId = openId;
            }

            public Byte getGuardianRelation() {
                return guardianRelation;
            }

            public void setGuardianRelation(Byte guardianRelation) {
                this.guardianRelation = guardianRelation;
            }

            public String getGuardianUserAddress() {
                return guardianUserAddress;
            }

            public void setGuardianUserAddress(String guardianUserAddress) {
                this.guardianUserAddress = guardianUserAddress;
            }

            public String getGuardianName() {
                return guardianName;
            }

            public void setGuardianName(String guardianName) {
                this.guardianName = guardianName;
            }

            public String getGuardianIdno() {
                return guardianIdno;
            }

            public void setGuardianIdno(String guardianIdno) {
                this.guardianIdno = guardianIdno;
            }

            public String getGuardianPhone() {
                return guardianPhone;
            }

            public void setGuardianPhone(String guardianPhone) {
                this.guardianPhone = guardianPhone;
            }

            public Byte getBindType() {
                return bindType;
            }

            public void setBindType(Byte bindType) {
                this.bindType = bindType;
            }

            public Byte getCardType() {
                return cardType;
            }

            public void setCardType(Byte cardType) {
                this.cardType = cardType;
            }

            public String getUserId() {
                return userId;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }

            public Date getBindTime() {
                return bindTime;
            }

            public void setBindTime(Date bindTime) {
                this.bindTime = bindTime;
            }

            public Date getUnbindTime() {
                return unbindTime;
            }

            public void setUnbindTime(Date unbindTime) {
                this.unbindTime = unbindTime;
            }

            public Byte getBindStatus() {
                return bindStatus;
            }

            public void setBindStatus(Byte bindStatus) {
                this.bindStatus = bindStatus;
            }

            public String getPatientId() {
                return patientId;
            }

            public void setPatientId(String patientId) {
                this.patientId = patientId;
            }

            public String getCardNo() {
                return cardNo;
            }

            public void setCardNo(String cardNo) {
                this.cardNo = cardNo;
            }

            public String getOutpara1() {
                return outpara1;
            }

            public void setOutpara1(String outpara1) {
                this.outpara1 = outpara1;
            }

            public String getOutpara2() {
                return outpara2;
            }

            public void setOutpara2(String outpara2) {
                this.outpara2 = outpara2;
            }

            public String getOutpara3() {
                return outpara3;
            }

            public void setOutpara3(String outpara3) {
                this.outpara3 = outpara3;
            }

            public String getOutpara4() {
                return outpara4;
            }

            public void setOutpara4(String outpara4) {
                this.outpara4 = outpara4;
            }
        }
    }

}
