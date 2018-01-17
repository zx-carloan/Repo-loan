package com.third.autoloan.contractmag.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.ContractBean;
import com.third.autoloan.contractmag.repository.ContractRepository;
import com.third.autoloan.contractmag.service.IContractService;

@Service("contractService")
public class ContractServiceImpl implements  IContractService{
	
	@Resource
	private ContractRepository contractRepository;

	@Override
	public void saveContractInfo(ContractBean contractBean) {
		contractRepository.save(contractBean);
		
	}

	@Override
	public void updateContractInfo(ContractBean contract) {
		// TODO Auto-generated method stub
		contractRepository.saveAndFlush(contract);
	}

	
		
	

}
