package com.third.autoloan.ordermag.service.impl;


import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.identitymag.service.IidentityService;
import com.third.autoloan.ordermag.dao.IOrderDao;
import com.third.autoloan.ordermag.repository.OrderRepository;
import com.third.autoloan.ordermag.service.IOrderService;

@Service("orderServiceImpl")
public class OrderServiceImpl implements IOrderService{
	
	@Resource
	private OrderRepository orderRepository;
	
	@Resource
	private IidentityService identityServiceImpl;
	
	@Resource
	private IOrderDao orderDaoImpl;
	
	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public void deleteOrderInfo(long id) {
		// TODO Auto-generated method stub
		orderRepository.delete(id);
	}

	@Override
	public void saveOrederInfo(OrderBean orderBean, long id) {
		// TODO Auto-generated method stub
		IdentityBean ib= identityServiceImpl.findIdentityById(id);
		OrderBean order=new OrderBean();
		order.setIdentity(ib);
		order.setAuditor("环湖");
		orderRepository.save(order);
		
		
		
		
	}

	@Override
	public void updateOrderInfo(OrderBean orderBean) {
		// TODO Auto-generated method stub
		sessionFactory.openSession().update(orderBean);
	}


	@Override
	public OrderBean getOrderById(long id) {
		// TODO Auto-generated method stub
		return orderDaoImpl.getOrderInfo(id);
	}

	@Override
	public void updateOrderInfo(String name, long id) {
		orderDaoImpl.updateOrderInfo(name, id);
		
	}

}
