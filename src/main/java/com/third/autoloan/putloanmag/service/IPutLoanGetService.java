package com.third.autoloan.putloanmag.service;

import java.util.Map;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;


public interface IPutLoanGetService {

	
	/**
	 * 获取订单信息
	 * @param id 所对订单的ID
	 */
	public OrderBean getOrderInfoById(long id);
		
	
	/**
	 *  得到放款业务列表
	 * @param map 条件
	 * @return
	 */
	public PageBean getLoanPage(Map<String,String> map);
	
 }