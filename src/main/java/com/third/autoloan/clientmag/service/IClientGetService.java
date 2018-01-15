package com.third.autoloan.clientmag.service;

import java.util.List;

import com.third.autoloan.beans.ClientBean;

//客户信息查询业务层
public interface IClientGetService {

	/**
	 * 查客户基本信息
	 * @param id 所对订单的ID
	 * @return 返回客户基本信息
	 */
	public ClientBean getClientInfoByOrderId(long id);
	
}
