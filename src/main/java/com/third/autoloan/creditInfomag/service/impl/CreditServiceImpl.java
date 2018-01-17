package com.third.autoloan.creditInfomag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.clientmag.mapper.ClientMapper;
import com.third.autoloan.creditInfomag.repository.CreditRepository;
import com.third.autoloan.creditInfomag.service.ICreditService;

@Service("creditServiceImpl")
public class CreditServiceImpl implements ICreditService {

	@Resource
	private CreditRepository creditRepository;


	@Resource
	private ClientMapper clientMapper;
	
	@Override
	public void saveCreditInfo(CreditInfoBean creditInfo,long id) {
		OrderBean orderBean =clientMapper.getClientInfoByOrderId(id);
		creditInfo.setOrderBean(orderBean);
		creditRepository.save(creditInfo);

	}

	@Override
	public void updeteCreditInfo(CreditInfoBean creditInfo, long id) {
		OrderBean bean = clientMapper.getClientInfoByOrderId(id);
		creditInfo.setOrderBean(bean);
		creditRepository.saveAndFlush(creditInfo);
	}

}
