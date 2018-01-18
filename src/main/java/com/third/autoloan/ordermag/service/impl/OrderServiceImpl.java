package com.third.autoloan.ordermag.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.identitymag.service.IidentityService;
import com.third.autoloan.ordermag.repository.OrderRepository;
import com.third.autoloan.ordermag.service.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService{
	
	@Resource
	private OrderRepository orderRepository;
	
	@Resource
	private IidentityService identityServiceImpl;

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
		orderRepository.saveAndFlush(orderBean);
		
	}


	@Override
	public OrderBean getOrderById(long id) {
		// TODO Auto-generated method stub
		return orderRepository.getOne(id);
	}

}
