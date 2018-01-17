package com.third.autoloan.creditInfomag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.creditInfomag.dao.ICreditGetDao;
import com.third.autoloan.creditInfomag.service.ICreditGetService;

@Service("creditGetServiceImpl")
public class CreditGetServiceImpl implements ICreditGetService {

	@Resource(name="creditGetDaoImpl")
	private ICreditGetDao CreditServiceImpl;
	
	@Override
	public CreditInfoBean getCreditInfoByOrderId(long id) {
		// TODO Auto-generated method stub
		return CreditServiceImpl.getCreditInfoByOrderId(id);
	}

}
