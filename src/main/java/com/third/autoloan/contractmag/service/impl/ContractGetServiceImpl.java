package com.third.autoloan.contractmag.service.impl;

import java.util.Map;

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
	/**
	 * 
	 */
	@Override
	public OrderBean getOrderByOrderId(Long orderId) {
		return null;
	}
	@Override
	public void updateContractorInfo(Map<String, Object> map) {
		// TODO Auto-generated method stub
		contractDaoImpl.updateContractInfo(map);
	}

}
