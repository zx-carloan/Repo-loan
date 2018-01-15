package com.third.autoloan.contractmag.service;

import com.third.autoloan.beans.ContractBean;

//签约信息查询接口
public interface IContractGetService {

	/***
	 * 根据订单的id查询签约信息
	 * @param orderId
	 * @return
	 */
	public ContractBean getContractByOrderBean(Long orderId);
}
