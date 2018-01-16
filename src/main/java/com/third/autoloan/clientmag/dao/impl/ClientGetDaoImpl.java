package com.third.autoloan.clientmag.dao.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.clientmag.dao.IClientGetDao;
import com.third.autoloan.clientmag.mapper.ClientMapper;

//客户信息查询业务层

@Repository
public class ClientGetDaoImpl implements IClientGetDao {
	
	@Resource
	private ClientMapper cm ;
	

	/**
	 * 查客户基本信息
	 * @param id 所对订单的ID
	 * @return 返回客户基本信息
	 */
	public ClientBean getClientInfoByOrderId(long id) {
		return cm.getClientInfoByOrderId(id);
		
	}
	
}
