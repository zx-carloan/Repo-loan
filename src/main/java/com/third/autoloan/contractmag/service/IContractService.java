package com.third.autoloan.contractmag.service;

import com.third.autoloan.beans.ContractBean;

//签约对象的增删改业务层
public interface IContractService {
	/**
	 * 增加签约信息
	 * @param contractBean   封装签约信息到对象
	 * @param id 所对所对订单的id
	 */
	public void saveContractInfo(ContractBean contractBean,long id);
	
	/***
	 * 修改签约信息
	 * @param contract
	 */
	public void updateContractInfo(ContractBean contract);
}
