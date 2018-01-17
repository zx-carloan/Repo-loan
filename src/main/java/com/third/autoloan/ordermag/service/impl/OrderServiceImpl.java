package com.third.autoloan.ordermag.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.ordermag.repository.OrderRepository;
import com.third.autoloan.ordermag.service.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService{
	
	@Resource
	private OrderRepository orderRepository;

	@Override
	public void deleteOrderInfo(long id) {
		// TODO Auto-generated method stub
		orderRepository.delete(id);
	}

	@Override
	public void saveOrederInfo(OrderBean orderBean, long id) {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public void updeteOrderInfo(OrderBean orderBean) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void printContract(long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map countContract(long id) {
		// TODO Auto-generated method stub
		return null;
	}

}
