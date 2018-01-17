package com.third.autoloan.creditInfomag.dao.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.creditInfomag.dao.ICreditGetDao;
import com.third.autoloan.creditInfomag.mapper.CreditGetMaaper;

@Repository("creditGetDaoImpl")
public class CreditGetDaoImpl implements ICreditGetDao {

	
	@Resource
	private CreditGetMaaper creditGetMaaper;
	
	@Override
	public CreditInfoBean getCreditInfoByOrderId(long id) {
		// TODO Auto-generated method stub
		return creditGetMaaper.getCreditInfoByOrderId(id);
	}

}
