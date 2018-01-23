package com.third.autoloan.progress.service.impl;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.identitymag.service.IidentityService;
import com.third.autoloan.progress.dao.IProgressDao;
import com.third.autoloan.progress.repository.ProgressRepository;
import com.third.autoloan.progress.service.IProgressService;

@Service("progressServiceImpl")
public class ProgressServiceImpl implements IProgressService{

	@Resource
	private ProgressRepository progressRepository;
	
	@Resource
	private IidentityService identityServiceImpl;
	
	@Resource(name="progressDaoImpl")
	private IProgressDao progressDao;
	
	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public void deleteOrderInfo(long id) {
		// TODO Auto-generated method stub
		progressRepository.delete(id);
	}

	@Override
	public void saveOrederInfo(OrderBean orderBean, long id) {
		// TODO Auto-generated method stub
		IdentityBean ib= identityServiceImpl.findIdentityById(id);
		OrderBean order=new OrderBean();
		order.setIdentity(ib);
		order.setAuditor("环湖");
		progressRepository.save(order);
		
		
		
		
	}

	@Override
	public void updateOrderInfo(OrderBean orderBean) {
		// TODO Auto-generated method stub
		sessionFactory.openSession().update(orderBean);
	}


	@Override
	public OrderBean getOrderById(long id) {
		// TODO Auto-generated method stub
		return progressDao.getOrderInfo(id);
	}

	@Override
	public void updateOrderInfo(String name, long id) {
		progressDao.updateOrderInfo(name, id);
		
	}
}
