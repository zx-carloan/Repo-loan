package com.third.autoloan.contractmag.dao.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.ContractBean;
import com.third.autoloan.contractmag.dao.IContractDao;
import com.third.autoloan.contractmag.mapper.ContractMapper;

@Repository
public class ContractDaoImpl implements IContractDao{
	
	@Resource
	private ContractMapper contractMapper;
	  
	@Override
	public ContractBean getContractByOrderBean(Long orderId) {
		// TODO Auto-generated method stub
		return contractMapper.getContractByOrderId(orderId);
	}

	@Override
	public void updateContractInfo(Map<String, Object> map) {
		// TODO Auto-generated method stub
		contractMapper.updateContractInfo(map);
	}
}