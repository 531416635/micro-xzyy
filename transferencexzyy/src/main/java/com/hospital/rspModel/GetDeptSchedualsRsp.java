package com.hospital.rspModel;

import com.hospital.apiModel.BaseResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 获取排班信息
 */

@ApiModel
public class GetDeptSchedualsRsp extends BaseResponse {
    private GetDeptSchedualsRspData data;

    @Override
    public GetDeptSchedualsRspData getData() {
        return data;
    }

    public void setData(GetDeptSchedualsRspData data) {
        this.data = data;
    }

    @ApiModel
    public static class GetDeptSchedualsRspData{
        private List<DeptSchedualsListModel> data;

        public List<DeptSchedualsListModel> getData() {
            return data;
        }

        public void setData(List<DeptSchedualsListModel> data) {
            this.data = data;
        }

        @ApiModel
        public static class DeptSchedualsListModel{
            @ApiModelProperty(value = "id", required = true)
            private Integer id;
            @ApiModelProperty(value = "医院代码", required = true)
            private Integer hospitalId;
            @ApiModelProperty(value = "院区标志", required = true)
            private String deptOwn;
            @ApiModelProperty(value = "医生工号", required = true)
            private String  doctorNo;
            @ApiModelProperty(value = "医生姓名", required = true)
            private String  doctorName;
            @ApiModelProperty(value = "医生职务职称", required = true)
            private String  doctorTitle;
            @ApiModelProperty(value = "疾病专场描述", required = true)
            private String  illnessSpecial_desc;
            @ApiModelProperty(value = "输入码", required = true)
            private String  inputCode;
            @ApiModelProperty(value = "挂号费", required = true)
            private BigDecimal registerFee;
            @ApiModelProperty(value = "诊查费", required = true)
            private BigDecimal  clinicFee;
            @ApiModelProperty(value = "擅长", required = true)
            private String  specialty;
            @ApiModelProperty(value = "医生图片（小）", required = true)
            private String  doctorSmallPicUrl;
            @ApiModelProperty(value = "医生图片（中）", required = true)
            private String  doctorMiddlePicUrl;
            @ApiModelProperty(value = "医生图片（大）", required = true)
            private String  doctorBigPicUrl;
            @ApiModelProperty(value = "医生介绍", required = true)
            private String  doctorDesc;
            @ApiModelProperty(value = "排班ID", required = true)
            private String  scheduleId;
            @ApiModelProperty(value = "科室代码 科室主键", required = true)
            private String  departmentCode;
            @ApiModelProperty(value = "挂号类别（1 现场挂号  2预约挂号  预约挂号看诊日期从T+1天开始到有最新排班的数据）", required = true)
            private Integer  registerType;
            @ApiModelProperty(value = "科室名称", required = true)
            private String  departmentName;
            @ApiModelProperty(value = "出诊日期", required = true)
            private Date registerDate;
            @ApiModelProperty(value = "开始时间", required = true)
            private Date beginTime;
            @ApiModelProperty(value = "结束时间", required = true)
            private Date endTime;
            @ApiModelProperty(value = "午别（0.上午，1.下午 2.晚上）", required = true)
            private Integer timeinterval;
            @ApiModelProperty(value = "位置", required = true)
            private String  location;
            @ApiModelProperty(value = "号源数量", required = true)
            private String  sourceCount;
            @ApiModelProperty(value = "是否停号", required = true)
            private String  isStopSource;
            @ApiModelProperty(value = "预留1", required = true)
            private String outPara1;
            @ApiModelProperty(value = "预留2", required = true)
            private String outPara2;
            @ApiModelProperty(value = "预留3", required = true)
            private String outPara3;
            @ApiModelProperty(value = "预留4", required = true)
            private String outPara4;

            public Integer getId() {
                return id;
            }

            public void setId(Integer id) {
                this.id = id;
            }

            public Integer getHospitalId() {
                return hospitalId;
            }

            public void setHospitalId(Integer hospitalId) {
                this.hospitalId = hospitalId;
            }

            public String getDeptOwn() {
                return deptOwn;
            }

            public String getIsStopSource() {
                return isStopSource;
            }

            public void setIsStopSource(String isStopSource) {
                this.isStopSource = isStopSource;
            }

            public void setDeptOwn(String deptOwn) {
                this.deptOwn = deptOwn;
            }

            public void setTimeinterval(Integer timeinterval) {
                this.timeinterval = timeinterval;
            }

            public String getDoctorNo() {
                return doctorNo;
            }

            public void setDoctorNo(String doctorNo) {
                this.doctorNo = doctorNo;
            }

            public String getDoctorName() {
                return doctorName;
            }

            public void setDoctorName(String doctorName) {
                this.doctorName = doctorName;
            }

            public String getDoctorTitle() {
                return doctorTitle;
            }

            public void setDoctorTitle(String doctorTitle) {
                this.doctorTitle = doctorTitle;
            }

            public String getIllnessSpecial_desc() {
                return illnessSpecial_desc;
            }

            public void setIllnessSpecial_desc(String illnessSpecial_desc) {
                this.illnessSpecial_desc = illnessSpecial_desc;
            }

            public String getInputCode() {
                return inputCode;
            }

            public void setInputCode(String inputCode) {
                this.inputCode = inputCode;
            }

            public BigDecimal getRegisterFee() {
                return registerFee;
            }

            public void setRegisterFee(BigDecimal registerFee) {
                this.registerFee = registerFee;
            }

            public BigDecimal getClinicFee() {
                return clinicFee;
            }

            public void setClinicFee(BigDecimal clinicFee) {
                this.clinicFee = clinicFee;
            }

            public String getSpecialty() {
                return specialty;
            }

            public void setSpecialty(String specialty) {
                this.specialty = specialty;
            }

            public String getDoctorSmallPicUrl() {
                return doctorSmallPicUrl;
            }

            public void setDoctorSmallPicUrl(String doctorSmallPicUrl) {
                this.doctorSmallPicUrl = doctorSmallPicUrl;
            }

            public String getDoctorMiddlePicUrl() {
                return doctorMiddlePicUrl;
            }

            public void setDoctorMiddlePicUrl(String doctorMiddlePicUrl) {
                this.doctorMiddlePicUrl = doctorMiddlePicUrl;
            }

            public String getDoctorBigPicUrl() {
                return doctorBigPicUrl;
            }

            public void setDoctorBigPicUrl(String doctorBigPicUrl) {
                this.doctorBigPicUrl = doctorBigPicUrl;
            }

            public String getDoctorDesc() {
                return doctorDesc;
            }

            public void setDoctorDesc(String doctorDesc) {
                this.doctorDesc = doctorDesc;
            }

            public String getScheduleId() {
                return scheduleId;
            }

            public void setScheduleId(String scheduleId) {
                this.scheduleId = scheduleId;
            }

            public String getDepartmentCode() {
                return departmentCode;
            }

            public void setDepartmentCode(String departmentCode) {
                this.departmentCode = departmentCode;
            }

            public Integer getRegisterType() {
                return registerType;
            }

            public void setRegisterType(Integer registerType) {
                this.registerType = registerType;
            }

            public String getDepartmentName() {
                return departmentName;
            }

            public void setDepartmentName(String departmentName) {
                this.departmentName = departmentName;
            }

            public Date getRegisterDate() {
                return registerDate;
            }

            public void setRegisterDate(Date registerDate) {
                this.registerDate = registerDate;
            }

            public Date getBeginTime() {
                return beginTime;
            }

            public void setBeginTime(Date beginTime) {
                this.beginTime = beginTime;
            }

            public Date getEndTime() {
                return endTime;
            }

            public void setEndTime(Date endTime) {
                this.endTime = endTime;
            }

            public Integer getTimeinterval() {
                return timeinterval;
            }

            public void setTimeinterval(String timeinterval) {
                if("上午".equals(timeinterval)){
                    this.timeinterval = 0;
                }
                else if("下午".equals(timeinterval)){
                    this.timeinterval = 1;
                }
                else if("晚上".equals(timeinterval)){
                    this.timeinterval = 2;
                }
            }

            public String getLocation() {
                return location;
            }

            public void setLocation(String location) {
                this.location = location;
            }

            public String getSourceCount() {
                return sourceCount;
            }

            public void setSourceCount(String sourceCount) {
                this.sourceCount = sourceCount;
            }

            public String getOutPara1() {
                return outPara1;
            }

            public void setOutPara1(String outPara1) {
                this.outPara1 = outPara1;
            }

            public String getOutPara2() {
                return outPara2;
            }

            public void setOutPara2(String outPara2) {
                this.outPara2 = outPara2;
            }

            public String getOutPara3() {
                return outPara3;
            }

            public void setOutPara3(String outPara3) {
                this.outPara3 = outPara3;
            }

            public String getOutPara4() {
                return outPara4;
            }

            public void setOutPara4(String outPara4) {
                this.outPara4 = outPara4;
            }
        }
    }
}
