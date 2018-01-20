package com.third.autoloan.contractmag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.ContractBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.contractmag.dao.IContractDao;
import com.third.autoloan.contractmag.service.IContractGetService;

@Service("sb")
public class ContractGetServiceImpl implements IContractGetService{

	@Resource
	private IContractDao contractDaoImpl;
	
	@Override
	public ContractBean getContractByOrderId(Long orderId) {
		return contractDaoImpl.getContractByOrderBean(orderId);
	}

	@Override
	public OrderBean getOrderByOrderId(Long orderId) {
		return null;
	}

}
