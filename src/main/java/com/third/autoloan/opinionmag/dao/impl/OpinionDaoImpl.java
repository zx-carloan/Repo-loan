package com.third.autoloan.opinionmag.dao.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.OpinionBean;
import com.third.autoloan.opinionmag.dao.IOpinionDao;
import com.third.autoloan.opinionmag.mapper.OpinionMapper;

@Repository("opinionDaoImpl")
public class OpinionDaoImpl implements IOpinionDao {

	@Resource
	private OpinionMapper opinionMapper;
	
	@Override
	public OpinionBean getOpinionByOrderId(Long orderId) {
		// TODO Auto-generated method stub
		System.out.println(opinionMapper+"1111111");
		return opinionMapper.getOpinionByOrderId(orderId);
	}

}
