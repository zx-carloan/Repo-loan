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

	@Override
	public OrderBean getOrderInfo(long id) {
		// TODO Auto-generated method stub
		return orderMapper.getOrderInfoBuId(id);
	}

	@Override
	public void updateOrderInfo(Map<String,Object> map) {
		// TODO Auto-generated method stub
		orderMapper.updateOrderInfo(map);
	}

	@Override
	public void deleteOrderInfo(long id) {
		// TODO Auto-generated method stub
		orderMapper.deleteOrderInfo(id);
	}

	@Override
	public void deleteProduct(long id) {
		// TODO Auto-generated method stub
		orderMapper.deleteProduct(id);
	}

	@Override
	public void deleteClient(long id) {
		// TODO Auto-generated method stub
		orderMapper.deleteClient(id);
	}

	@Override
	public void deleteCompany(long id) {
		// TODO Auto-generated method stub
		orderMapper.deleteCompany(id);
	}

	@Override
	public void deleteContract(long id) {
		// TODO Auto-generated method stub
		orderMapper.deleteContract(id);
	}

	@Override
	public void deleteCredit(long id) {
		// TODO Auto-generated method stub
		orderMapper.deleteCredit(id);
	}

	@Override
	public void deleteIdentity(long id) {
		// TODO Auto-generated method stub
		orderMapper.deleteIdentity(id);
	}

	@Override
	public void deleteOpinion(long id) {
		// TODO Auto-generated method stub
		orderMapper.deleteOpinion(id);
	}

	@Override
	public void returnOpinion(Map<String, Object> map) {
		// TODO Auto-generated method stub
		orderMapper.returnOpinion(map);
	}
	
}
