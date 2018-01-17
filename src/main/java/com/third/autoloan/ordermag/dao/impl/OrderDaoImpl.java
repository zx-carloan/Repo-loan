package com.third.autoloan.ordermag.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
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
	public List<OrderBean> getOrderListByMap(Map map) {
		// TODO Auto-generated method stub
		return orderMapper.getOrderListByMap(map);
	}

	@Override
	public int getTotalOrderNumByMap(Map map) {
		// TODO Auto-generated method stub
		return orderMapper.getTotalOrderNumByMap(map);
	}

	@Override
	public List<CarInfoBean> listCarInfo(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ClientBean getClientInfoByOrderId(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ClientBean getCreditInfoByOrderId(long id) {
		// TODO Auto-generated method stub
		return null;
	}

}
