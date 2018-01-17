package com.third.autoloan.creditInfomag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.creditInfomag.repository.CreditRepository;
import com.third.autoloan.creditInfomag.service.ICreditService;

@Service("creditServiceImpl")
public class CreditServiceImpl implements ICreditService {

	@Resource
	private CreditRepository creditRepository;
	
	@Override
	public void saveCreditInfo(CreditInfoBean creditInfo, long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updeteCreditInfo(CreditInfoBean creditInfo, long id) {
		// TODO Auto-generated method stub
	}

}
