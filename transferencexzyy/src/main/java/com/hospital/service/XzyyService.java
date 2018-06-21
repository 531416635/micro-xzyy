package com.hospital.service;

import com.hospital.model.UserCardsModel;
import com.hospital.rspModel.GetCardInfosRsp;
import com.hospital.rspModel.GetDeptInfosRsp;
import com.hospital.rspModel.GetDeptSchedualsRsp;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface XzyyService {
	/**
	 * 1.获取大小科室信息
	 * @param map
	 * @return
	 */
	GetDeptInfosRsp getDeptInfos(Map map);

	/**
	 * 2、获取医生排班信息
	 * @param map
	 */
	GetDeptSchedualsRsp getDeptScheduals(Map map) throws  Exception;


	/**
	 * 3.实时获取挂号号源
	 * @param map
	 */
    Map getClinicInfos(Map map);

	/**
	 * 4.预约挂号锁号和销号
	 * @param map
	 */
	void getLockRecidInfos(Map map);

	/**
	 * 5.挂号确认支付并取号
	 * @param map
	 */
	void getRecidInfos(Map map);

	/**
	 * 6、确认退号
	 * @param map
	 */
	void getBackidInfos(Map map);

	/**
	 * 7、就诊卡查询
	 * @param map
	 */
	GetCardInfosRsp getCardInfos(Map<String,Object> map) throws Exception;

	/**
	 * 8、电子就诊卡建档
	 * @param model
	 */
	GetCardInfosRsp getCreateCardInfos(UserCardsModel model) throws  Exception;
	/**
	 * 9、查询患者存在的诊间待缴费信息
	 * @param map
	 */
	void getOutpOrdersCostInfos(Map map);
	/**
	 * 10、HIS确认诊间支付信息
	 * @param map
	 */
	void getClinicPaymentInfos(Map map);
	/**
	 * 11、患者住院信息查询
	 * @param map
	 */
	void getInppatientInfos(Map map);

	/**
	 * 12、住院预缴接口
	 * @param map
	 */
	void getInprechargeInfos(Map map);
	/**
	 * 13、检验报告查询
	 * @param map
	 */
	void getLabResultInfos(Map map);

	/**
	 * 14、检查报告查询
	 * @param map
	 */
	void getExamResultInfos(Map map);
	/**
	 * 15 病理报告查询
	 * @param map
	 */
	void getPathologyResultInfos(Map map);
}
