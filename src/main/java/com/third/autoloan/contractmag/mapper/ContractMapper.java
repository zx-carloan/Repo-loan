package com.third.autoloan.contractmag.mapper;

import java.util.Map;

import com.third.autoloan.beans.ContractBean;

public interface ContractMapper {
	
	public ContractBean getContractByOrderId(Long orderId);
	/***
	 * 闯入合同相关属性及订单id组成的map修改信息
	 * @param map
	 */
	public void updateContractInfo(Map<String,Object> map);
	
}