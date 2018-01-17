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


	@Override
	public void saveCreditInfo(CreditInfoBean creditInfo) {

		creditRepository.save(creditInfo);

	}

	@Override
	public void updeteCreditInfo(CreditInfoBean creditInfo, long id) {
		// TODO Auto-generated method stub
		OrderBean bean = clientMapper.getClientInfoByOrderId(id);
		creditInfo.setOrderBean(bean);
		creditRepository.saveAndFlush(creditInfo);
	}

}
