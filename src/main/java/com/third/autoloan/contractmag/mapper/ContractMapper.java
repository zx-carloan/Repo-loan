package com.third.autoloan.contractmag.mapper;

import com.third.autoloan.beans.ContractBean;

public interface ContractMapper {
	
	public ContractBean getContractByOrderId(Long orderId);
	
}