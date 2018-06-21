package com.hospital.controller;

import com.alibaba.fastjson.JSONObject;
import com.hospital.model.UserCardsModel;
import com.hospital.rspModel.GetCardInfosRsp;
import com.hospital.rspModel.GetDeptInfosRsp;
import com.hospital.rspModel.GetDeptSchedualsRsp;
import com.hospital.service.XzyyService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Api(value = "XzyyController", description = "襄州医院HIS交互接口")
@RestController
public class XzyyController {

    @Autowired
    XzyyService service;

    /**
     * 就诊卡查询
     * @param CardType
     * @param CardNO
     * @return
     */
    @ApiOperation(value="就诊卡查询", notes="根据用户传入的卡号查询就诊卡信息")
    @RequestMapping(value = "/getCardInfos",method = RequestMethod.GET)
    public GetCardInfosRsp getCardInfos(@ApiParam(value = "卡类型，1为就诊卡，2为身份证", required = true) @RequestParam String CardType,
                                        @ApiParam(value = "卡号", required = true) @RequestParam String CardNO){
        GetCardInfosRsp rsp = new GetCardInfosRsp();
        rsp.setCode(-1);
        try{
            Map<String,Object> map = new HashMap<>();
            map.put("CardType",CardType);
            map.put("CardNO",CardNO);
            rsp = service.getCardInfos(map);

        }catch (Exception e){
            rsp.setMsg(e.getMessage());
        }

        return rsp;
    }


    /**
     * 电子就诊卡建档
     * @param UserCardsModel
     * @return
     */
    @ApiOperation(value="在线电子就诊卡建档", notes="根据用户传入的建档信息生成电子诊断卡")
    @RequestMapping(value = "/getCreateCardInfos",method = RequestMethod.POST)
    public GetCardInfosRsp getCreateCardInfos(@RequestBody UserCardsModel UserCardsModel){
        GetCardInfosRsp rsp = new GetCardInfosRsp();
        rsp.setCode(-1);
        try{
            rsp  = service.getCreateCardInfos(UserCardsModel);

        }catch (Exception e){
            rsp.setMsg(e.getMessage());
        }

        return rsp;
    }


    /* todo 襄州医院存错过程出错了 */
    /**
     * 获取大小科室信息
     * @param deptOwn   院区代码
     * @param pardepCode    科室代码    如果是空值就是所有大科室；
     * @return
     */
    @ApiOperation(value="获取大小科室信息", notes="查询科室信息")
    @RequestMapping(value = "/getDeptInfos",method = RequestMethod.GET)
    public GetDeptInfosRsp getDeptInfos(@ApiParam(value = "院区代码", required = true) @RequestParam String deptOwn,
                                        @ApiParam(value = "科室代码,如果是空值就是所有大科室") @RequestParam(required = false) String pardepCode){
        GetDeptInfosRsp rsp = new GetDeptInfosRsp();
        rsp.setCode(-1);
        try{
            Map<String, String> objmap=new HashMap<>();
            objmap.put("ReserverSource", "1");
            objmap.put("DeptOwn", deptOwn);
            if(StringUtils.isEmpty(pardepCode)){
                objmap.put("Pardep_Code", "");
            }else{
                objmap.put("Pardep_Code", pardepCode);
            }
           rsp = service.getDeptInfos(objmap);

        }catch (Exception e){
            rsp.setMsg(e.getMessage());
        }

        return rsp;
    }

    /* todo 襄州医院只允许查询最近两天的排班信息 */
    /**
     * 获取医生排班信息
     * @param deptOwn   院区代码
     * @param departCode    科室代码
     * @param departName    科室名称
     * @param registerdate  预约时间
     * @return
     */
    @ApiOperation(value="获取医生排班信息", notes="查询近七天的医生排班信息")
    @RequestMapping(value = "/getDeptScheduals",method = RequestMethod.GET)
    public GetDeptSchedualsRsp getDeptScheduals(@ApiParam(value = "院区代码", required = true) @RequestParam String deptOwn,
                                                @ApiParam(value = "科室代码", required = true) @RequestParam String departCode,
                                                @ApiParam(value = "科室名称", required = true) @RequestParam String departName,
                                                @ApiParam(value = "预约时间 yyyy-MM-dd", required = true) @RequestParam String registerdate){
        GetDeptSchedualsRsp rsp = new GetDeptSchedualsRsp();
        rsp.setCode(-1);
        try{
            Map<String, String> objmap=new HashMap<>();
            objmap.put("DeptOwn", deptOwn);
            objmap.put("DepartCode", departCode);
            objmap.put("DepartName", departName);
            objmap.put("Registerdate", registerdate);

            rsp = service.getDeptScheduals(objmap);


        }catch (Exception e){
            rsp.setMsg(e.getMessage());
        }
        return rsp;
    }


    /**
     * 实时获取挂号号源
     * @param deptOwn   院区代码
     * @param departCode    科室代码
     * @param departName    科室名称
     * @param registerdate  预约时间
     * @return
     */
    @ApiOperation(value="实时获取挂号号源", notes="襄州医院实时获取挂号号源")
    @RequestMapping(value = "/getClinicInfos",method = RequestMethod.GET)
    public JSONObject getClinicInfos(@ApiParam(value = "院区代码", required = true) @RequestParam String deptOwn,
                                       @ApiParam(value = "科室代码", required = true) @RequestParam String departCode,
                                       @ApiParam(value = "科室名称", required = true) @RequestParam String departName,
                                       @ApiParam(value = "预约时间 yyyy-MM-dd", required = true) @RequestParam String registerdate,
                                       @ApiParam(value = "午别 上午、下午、晚上", required = true) @RequestParam String timeInterval){
        JSONObject json = new JSONObject();
        json.put("code","-1");
        try{
            Map<String, String> objmap=new HashMap<>();
            objmap.put("DeptOwn", deptOwn);
            objmap.put("deptCode", departCode);
            objmap.put("deptName", departName);
            objmap.put("registerdate", registerdate);
            objmap.put("timeInterval", timeInterval);

            Map result = service.getClinicInfos(objmap);
            String returncode = result.get("returncode").toString();
            if("1".equals(returncode)){
                json.put("result",result);
                json.put("msg","查询成功");
                json.put("code","1");
            }else {
                json.put("msg",result.get("errormsg"));
            }

        }catch (Exception e){
            json.put("msg",e.getMessage());
        }

        return json;
    }
}
