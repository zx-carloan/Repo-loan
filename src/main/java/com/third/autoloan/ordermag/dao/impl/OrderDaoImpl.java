package com.third.autoloan.ordermag.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.ordermag.dao.IOrderDao;
import com.third.autoloan.ordermag.mapper.OrderMapper;

@Repository
public class OrderDaoImpl implements IOrderDao{

	@Resource
	private OrderMapper orderMapper;

	@Override
	public List<OrderBean> getOrderListByMap(Map<String, String> map) {
		return orderMapper.getOrderListByMap(map);
	}

	@Override
	public int getTotalOrderNumByMap(Map<String, String> map) {
		return orderMapper.getTotalOrderNumByMap(map);
	}

	@Override
	public List<CarInfoBean> listCarInfo(long id) {

		return orderMapper.listCarInfo(id);
	}

	@Override
	public ClientBean getClientInfoByOrderId(long id) {

		return orderMapper.getClientInfoByOrderId(id);
	}

	@Override
	public OrderBean getOrderInfoById(long id) {
		return orderMapper.getOrderInfoById(id);


	}

	@Override
	public List<OrderBean> getLoanPage(Map<String, String> map) {
		return orderMapper.getLoanPage(map);
	}

	@Override
	public List<OrderBean> getSubmenuPage(Map<String, String> map) {
		return orderMapper.getSubmenuPage(map);
	}

	@Override
	public List<OrderBean> getProcedurePageBean(Map<String, String> map) {
		return orderMapper.getProcedurePageBean(map);
	}

	@Override
	public int getSumProcedure(Map<String, String> map) {
		// TODO Auto-generated method stub
		return orderMapper.getSumProcedure(map);
	}

	@Override
	public int getSumSubmenuPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return orderMapper.getSumSubmenuPage(map);
	}

	@Override
	public int getSumLoanPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return orderMapper.getSumLoanPage(map);
	}
	
}
