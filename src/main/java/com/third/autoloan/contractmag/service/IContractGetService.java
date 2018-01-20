package com.third.autoloan.contractmag.service;


import com.third.autoloan.beans.ContractBean;
import com.third.autoloan.beans.OrderBean;

//签约信息查询接口


public interface IContractGetService {

	/***
	 * 根据订单的id查询签约信息
	 * @param orderId
	 * @return
	 */
	public ContractBean getContractByOrderId(Long orderId);
	
/**
 * 根据订单id拿到 签约界面需要直接显示的响应字段
 * @param orderId
 * @return
 */
	public OrderBean getOrderByOrderId(Long orderId);
}