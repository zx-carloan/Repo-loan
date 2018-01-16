package com.third.autoloan.clientmag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.clientmag.dao.IClientGetDao;
import com.third.autoloan.clientmag.service.IClientGetService;

@Service
public class ClientGetServiceImpl implements IClientGetService {

	@Resource
	private IClientGetDao clientGetDaoImpl;
	
	@Override
	public ClientBean getClientInfoByOrderId(long id) {
		// TODO Auto-generated method stub
		return clientGetDaoImpl.getClientInfoByOrderId(id);
	}

}
