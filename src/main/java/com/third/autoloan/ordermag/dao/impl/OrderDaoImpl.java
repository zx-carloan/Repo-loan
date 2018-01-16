package com.third.autoloan.ordermag.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.ordermag.dao.OrderDao;
import com.third.autoloan.ordermag.mapper.OrderMapper;
import com.third.autoloan.util.SessionUtils;

@Repository
public class OrderDaoImpl implements OrderDao{

	@Resource
	private OrderMapper orderMapper;
	
	
	@Override
	public List<OrderBean> getOrderListByMap(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalOrderNumByMap(Map map) {
		// TODO Auto-generated method stub
		System.out.println("进来了");
		System.out.println(orderMapper);
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
	
	public static void main(String[] args) {
		OrderDaoImpl or=new OrderDaoImpl();
		Map map=new HashMap<>();
		map.put("contractNumber", "1");
		int aa=	or.getTotalOrderNumByMap(map);
		
		System.out.println(aa);
	}

	
}
