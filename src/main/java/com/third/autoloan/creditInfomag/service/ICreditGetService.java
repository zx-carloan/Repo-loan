package com.third.autoloan.creditInfomag.service;

import com.third.autoloan.beans.CreditInfoBean;

//信用信息查询业务层
public interface ICreditGetService {

	/**
	 * 得到客户信用信息
	 *
	 * @param id 所对订单的ID
	 * @return 返回客户信用信息
	 */
	public CreditInfoBean getCreditInfoByOrderId(long id);
	
}
