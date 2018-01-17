package com.third.autoloan.opinionmag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.OpinionBean;
import com.third.autoloan.opinionmag.dao.IOpinionDao;
import com.third.autoloan.opinionmag.service.IOpinionGetService;

@Service
public class OpinionGetServiceImpl implements IOpinionGetService {

	@Resource(name="opinionDaoImpl")
	private IOpinionDao opinionDaoImpl;
	
	@Override
	public OpinionBean getOpinionByOrderId(Long orderId) {
		// TODO Auto-generated method stub
		return opinionDaoImpl.getOpinionByOrderId(orderId);
	}

}
