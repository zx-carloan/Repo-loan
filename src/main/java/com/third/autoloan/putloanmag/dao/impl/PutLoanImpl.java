package com.third.autoloan.putloanmag.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.putloanmag.dao.IPutLoanDao;
import com.third.autoloan.putloanmag.mapper.PutLoanMapper;

@Repository("putLoanDaoImpl")
public class PutLoanImpl implements IPutLoanDao{

	@Resource
	private PutLoanMapper putLoanMapper;

	@Override
	public List<OrderBean> getLoanPage(Map<String, String> map) {
		return putLoanMapper.getLoanPage(map);
	}

	@Override
	public int getSumLoanPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return putLoanMapper.getSumLoanPage(map);
	}
	@Override
	public OrderBean getOrderInfo(long id) {
		// TODO Auto-generated method stub
		return putLoanMapper.getOrderInfoBuId(id);
	}

	@Override
	public void UpdateLoanStatus(Long id, String loanStatus) {
		putLoanMapper.UpdateLoanStatus(id, loanStatus);
		
	}
}
