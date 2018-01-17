package com.third.autoloan.creditInfomag.mapper;

import com.third.autoloan.beans.CreditInfoBean;

public interface CreditGetMaaper {

	/**
	 * 得到客户信用信息
	 *
	 * @param id 所对订单的ID
	 * @return 返回客户信用信息
	 */
	public CreditInfoBean getCreditInfoByOrderId(long id);
}
