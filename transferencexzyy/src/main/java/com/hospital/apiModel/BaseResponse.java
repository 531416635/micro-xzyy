package com.hospital.apiModel;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel
public class BaseResponse {
    @ApiModelProperty(value = "返回码", required = true)
    private int code;
    @ApiModelProperty(value = "返回提示信息", required = true)
    private String msg;
    @ApiModelProperty(value = "返回数据", required = true)
    private Object data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
