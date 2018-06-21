package com.hospital.service.impl;

import com.hospital.dao.InterfaceMapper;
import com.hospital.model.UserCardsModel;
import com.hospital.rspModel.GetCardInfosRsp;
import com.hospital.rspModel.GetCardInfosRsp.GetCardInfosRspData;
import com.hospital.rspModel.GetCardInfosRsp.GetCardInfosRspData.CardInfosRspListModel;
import com.hospital.rspModel.GetDeptInfosRsp;
import com.hospital.rspModel.GetDeptInfosRsp.*;
import com.hospital.rspModel.GetDeptInfosRsp.GetDeptInfosRspData.GetDeptInfosRspListModel;
import com.hospital.rspModel.GetDeptSchedualsRsp;
import com.hospital.rspModel.GetDeptSchedualsRsp.*;
import com.hospital.rspModel.GetDeptSchedualsRsp.GetDeptSchedualsRspData.DeptSchedualsListModel;
import com.hospital.service.XzyyService;
import com.hospital.util.MapUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class XzyyServiceImpl implements XzyyService {

    private SimpleDateFormat formatYYYMMDD = new SimpleDateFormat( "yyyy-MM-dd" );

    @Autowired
    InterfaceMapper dao;
    /**
     * 1.获取大小科室信息
     *
     * @param map
     * @return
     */
    @Override
    public GetDeptInfosRsp getDeptInfos(Map map) {
        GetDeptInfosRsp rsp = new GetDeptInfosRsp();
        dao.getDeptInfos(map);
        String returncode = map.get("returncode").toString();
        if("1".equals(returncode)) {
            GetDeptInfosRspData  rspDataList = new GetDeptInfosRspData();
            List<GetDeptInfosRspListModel> list = new ArrayList<GetDeptInfosRspListModel>();
            List<Map<String, Object>> mapList = (List) map.get("cursor");
            for(Map dataMap:mapList){
                GetDeptInfosRspListModel model = new GetDeptInfosRspListModel();
                model.setDepartmentName(dataMap.get("SECTIONNAME").toString());
                model.setDepartmentDesc(dataMap.get("SECTIONDESC").toString());
                model.setDepartmentCode(dataMap.get("SECTIONCODE").toString());
                list.add(model);
            }
            rspDataList.setData(list);
            rsp.setData(rspDataList);
            rsp.setCode(1);
            rsp.setMsg("获取大小科室成功");
        }else{
            rsp.setCode(-1);
            rsp.setMsg(map.get("errormsg").toString());
        }
        return rsp;
    }

    /**
     * 2、获取医生排班信息
     *
     * @param map
     */
    @Override
    public GetDeptSchedualsRsp getDeptScheduals(Map map) throws Exception{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        GetDeptSchedualsRsp rsp = new GetDeptSchedualsRsp();
        dao.getDeptScheduals(map);
        String returncode = map.get("returncode").toString();
        if("1".equals(returncode)) {
            GetDeptSchedualsRspData rspDataList = new GetDeptSchedualsRspData();
            List<DeptSchedualsListModel> list = new ArrayList<DeptSchedualsListModel>();
            List<Map<String, Object>> mapList = (List) map.get("cursor");
            for(Map dataMap:mapList){
                BigDecimal clinic_fee=new BigDecimal(dataMap.get("CLINICFEE").toString());
                BigDecimal register_fee=new BigDecimal(dataMap.get("REGISTERFEE").toString());
                DeptSchedualsListModel model = new DeptSchedualsListModel();
                model.setDepartmentCode(dataMap.get("DEPTCODE").toString());
                model.setTimeinterval(dataMap.get("TIMEINTERVAL").toString());
                model.setDepartmentName(dataMap.get("DEPTNAME").toString());
                model.setClinicFee(clinic_fee);
                model.setRegisterDate(sdf.parse(dataMap.get("REGISTERDATE").toString()));
                model.setInputCode(dataMap.get("INPUTCODE").toString());
                model.setRegisterFee(register_fee);
                list.add(model);
            }
            rspDataList.setData(list);
            rsp.setData(rspDataList);
            rsp.setCode(1);
            rsp.setMsg("获取排班信息成功");
        }else{
            rsp.setCode(-1);
            rsp.setMsg(map.get("errormsg").toString());
        }
        return rsp;


    }

    /**
     * 3.实时获取挂号号源
     *
     * @param map
     */
    @Override
    public Map getClinicInfos(Map map) {
        map.put("ReserverSource", "1");
        map.put("doctorNo", "");
        map.put("doctorName", "");
        map.put("doctorTitle", "");
        map.put("specialty", "");
        map.put("EXT1", "");
        map.put("EXT2", "");
        map.put("EXT3", "");
        dao.getClinicInfos(map);
        return map;
    }

    /**
     * 4.预约挂号锁号和销号
     *
     * @param map
     */
    @Override
    public void getLockRecidInfos(Map map) {

    }

    /**
     * 5.挂号确认支付并取号
     *
     * @param map
     */
    @Override
    public void getRecidInfos(Map map) {

    }

    /**
     * 6、确认退号
     *
     * @param map
     */
    @Override
    public void getBackidInfos(Map map) {

    }

    /**
     * 7、就诊卡查询
     *
     * @param map
     */
    @Override
    public GetCardInfosRsp getCardInfos(Map<String,Object> map) throws Exception{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        GetCardInfosRsp rsp = new GetCardInfosRsp();
        dao.getCardInfos(map);
        String returncode = map.get("returncode").toString();
        if("1".equals(returncode)) {
            GetCardInfosRspData  rspDataList = new GetCardInfosRspData();
            List<CardInfosRspListModel> list = new ArrayList<CardInfosRspListModel>();
            List<Map<String, Object>> mapList = (List) map.get("cursor");
            for(Map dataMap:mapList){
                CardInfosRspListModel cardInfosRspListModel = new CardInfosRspListModel();
                cardInfosRspListModel.setUserName(dataMap.get("PATIENTNAME").toString());
                cardInfosRspListModel.setUserPhone(dataMap.get("PHONENUM").toString());
                cardInfosRspListModel.setGuardianUserAddress(dataMap.get("ADDRESS").toString());
                cardInfosRspListModel.setIdcard(dataMap.get("IDCARDNUM").toString());
                cardInfosRspListModel.setGender(dataMap.get("GENDER").toString());
                cardInfosRspListModel.setBirthday(sdf.parse(dataMap.get("BIRTHDAY").toString()));
                cardInfosRspListModel.setCardNo(dataMap.get("PATIENTID").toString());
                cardInfosRspListModel.setPatientId(dataMap.get("PATIENTID").toString());
                list.add(cardInfosRspListModel);
            }
            rspDataList.setData(list);
            rsp.setData(rspDataList);
            rsp.setCode(1);
            rsp.setMsg("查询就诊卡成功");
        }else{
            rsp.setCode(-1);
            rsp.setMsg(map.get("errormsg").toString());
        }
        return rsp;
    }

    /**
     * 8、电子就诊卡建档
     *
     * @param model
     */
    @Override
    public GetCardInfosRsp getCreateCardInfos(UserCardsModel model) throws Exception{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        GetCardInfosRsp rsp = new GetCardInfosRsp();
        Map<String,Object> objmap = new HashMap<>();
        objmap = MapUtils.convertBean(model);
        dao.getCreateCardInfos(objmap);
        String returncode = objmap.get("returncode").toString();
        if("1".equals(returncode)) {
            GetCardInfosRspData  rspDataList = new GetCardInfosRspData();
            List<CardInfosRspListModel> list = new ArrayList<CardInfosRspListModel>();
            List<Map<String, Object>> resultList = (List) objmap.get("cursor");
            for(Map dataMap:resultList){
                CardInfosRspListModel cardModel = new CardInfosRspListModel();
                cardModel.setUserName(dataMap.get("PATIENTNAME").toString());
                cardModel.setUserPhone(dataMap.get("PHONENUM").toString());
                cardModel.setGuardianUserAddress(dataMap.get("ADDRESS").toString());
                cardModel.setIdcard(dataMap.get("IDCARDNUM").toString());
                cardModel.setGender(dataMap.get("GENDER").toString());
                cardModel.setBirthday(sdf.parse(dataMap.get("BIRTHDAY").toString()));
                cardModel.setCardNo(dataMap.get("CARDNO").toString());
                cardModel.setPatientId(dataMap.get("PATIENTID").toString());
                list.add(cardModel);
            }
            rspDataList.setData(list);
            rsp.setData(rspDataList);
            rsp.setCode(1);
            rsp.setMsg("就诊卡建档成功");
        }else{
            rsp.setCode(-1);
            rsp.setMsg(objmap.get("errormsg").toString());
        }
        return rsp;

    }

    /**
     * 9、查询患者存在的诊间待缴费信息
     *
     * @param map
     */
    @Override
    public void getOutpOrdersCostInfos(Map map) {

    }

    /**
     * 10、HIS确认诊间支付信息
     *
     * @param map
     */
    @Override
    public void getClinicPaymentInfos(Map map) {

    }

    /**
     * 11、患者住院信息查询
     *
     * @param map
     */
    @Override
    public void getInppatientInfos(Map map) {

    }

    /**
     * 12、住院预缴接口
     *
     * @param map
     */
    @Override
    public void getInprechargeInfos(Map map) {

    }

    /**
     * 13、检验报告查询
     *
     * @param map
     */
    @Override
    public void getLabResultInfos(Map map) {

    }

    /**
     * 14、检查报告查询
     *
     * @param map
     */
    @Override
    public void getExamResultInfos(Map map) {

    }

    /**
     * 15 病理报告查询
     *
     * @param map
     */
    @Override
    public void getPathologyResultInfos(Map map) {

    }
}
