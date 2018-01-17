package com.third.autoloan.opinionmag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.OpinionBean;
import com.third.autoloan.opinionmag.repository.OpinionRepository;
import com.third.autoloan.opinionmag.service.IOpinionService;

@Repository
public class OpinionServiceImpl implements IOpinionService {

	
	@Resource
	private OpinionRepository OpinionServiceImpl;
	
	
	@Override
	public void saveOpinionInfo(OpinionBean opinionBean, long id) {
		// TODO Auto-generated method stub
	}

	@Override
	public void updateOpinionInfoById(OpinionBean opinionBean) {
		// TODO Auto-generated method stub
		OpinionServiceImpl.saveAndFlush(opinionBean);
	}

	@Override
	public void deleteOpinionById(Long id) {
		// TODO Auto-generated method stub
		OpinionServiceImpl.delete(id);
	}

}
