package com.hospital.rspModel;

import com.hospital.apiModel.BaseResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.List;

/**
 * 获取大小科室
 */

@ApiModel
public class GetDeptInfosRsp extends BaseResponse {
    private GetDeptInfosRspData data;

    @Override
    public GetDeptInfosRspData getData() {
        return data;
    }

    public void setData(GetDeptInfosRspData data) {
        this.data = data;
    }

    @ApiModel
    public static class GetDeptInfosRspData{
        private List<GetDeptInfosRspListModel> data;

        public List<GetDeptInfosRspListModel> getData() {
            return data;
        }

        public void setData(List<GetDeptInfosRspListModel> data) {
            this.data = data;
        }

        @ApiModel
        public static class GetDeptInfosRspListModel{
            @ApiModelProperty(value = "id", required = true)
            private Integer id;
            @ApiModelProperty(value = "医院代码", required = true)
            private Integer hospitalId;
            @ApiModelProperty(value = "院区标志", required = true)
            private String deptOwn;
            @ApiModelProperty(value = "科室名称", required = true)
            private String departmentName;
            @ApiModelProperty(value = "科室代码", required = true)
            private String departmentCode;
            @ApiModelProperty(value = "所属大科室", required = true)
            private String departmentBelong;
            @ApiModelProperty(value = "位置", required = true)
            private String departmentArea;
            @ApiModelProperty(value = "科室楼层", required = true)
            private String departmentFloor;
            @ApiModelProperty(value = "科室描述", required = true)
            private String departmentDesc;
            @ApiModelProperty(value = "科室级别", required = true)
            private String departmentLevel;
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

            public void setDeptOwn(String deptOwn) {
                this.deptOwn = deptOwn;
            }

            public String getDepartmentName() {
                return departmentName;
            }

            public void setDepartmentName(String departmentName) {
                this.departmentName = departmentName;
            }

            public String getDepartmentCode() {
                return departmentCode;
            }

            public void setDepartmentCode(String departmentCode) {
                this.departmentCode = departmentCode;
            }

            public String getDepartmentBelong() {
                return departmentBelong;
            }

            public void setDepartmentBelong(String departmentBelong) {
                this.departmentBelong = departmentBelong;
            }

            public String getDepartmentArea() {
                return departmentArea;
            }

            public void setDepartmentArea(String departmentArea) {
                this.departmentArea = departmentArea;
            }

            public String getDepartmentFloor() {
                return departmentFloor;
            }

            public void setDepartmentFloor(String departmentFloor) {
                this.departmentFloor = departmentFloor;
            }

            public String getDepartmentDesc() {
                return departmentDesc;
            }

            public void setDepartmentDesc(String departmentDesc) {
                this.departmentDesc = departmentDesc;
            }

            public String getDepartmentLevel() {
                return departmentLevel;
            }

            public void setDepartmentLevel(String departmentLevel) {
                this.departmentLevel = departmentLevel;
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
