package com.third.autoloan.ordermag.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.dao.IOrderDao;
import com.third.autoloan.ordermag.repository.OrderRepository;
import com.third.autoloan.ordermag.service.IOrderGetService;

@Service("orderGetServiceImpl")
public class OrderGetServiceImpl implements IOrderGetService {

	@Resource
	private IOrderDao orderDaoImpl;
	
	@Resource
	private OrderRepository orderRepository;
	
	
	@Override
	public PageBean getOrderPageByMap(Map<String,String> map) {
		
		
		int	pageNumber=Integer.parseInt(map.get("page"));
		int pageSize =Integer.parseInt(map.get("rows"));
		
		int	total = orderDaoImpl.getTotalOrderNumByMap(map);
		
		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		map.put("index", pageBean.getIndex()+"");
		
		List<OrderBean> list =orderDaoImpl.getOrderListByMap(map);
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);

		return pageBean;
	}


	@Override
	public List<CarInfoBean> listCarInfo(long id) {
		
		return orderDaoImpl.listCarInfo(id);
	}

	@Override
	public ClientBean getClientInfoByOrderId(long id) {
		return orderDaoImpl.getClientInfoByOrderId(id);
	}


	@Override
	public OrderBean getOrderInfoById(long id) {
		return orderRepository.getOne(id);
	}

	@Override
	public PageBean getLoanPage(Map<String,String> map) {
		
		
		int	pageNumber=Integer.parseInt(map.get("page"));
		int pageSize =Integer.parseInt(map.get("rows"));
		int	total = orderDaoImpl.getSumLoanPage(map);
		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		map.put("index", pageBean.getIndex()+"");
		List<OrderBean> list =orderDaoImpl.getLoanPage(map);
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);

		return pageBean;
	}

	@Override
	public PageBean getSubmenuPage(Map<String,String> map) {
	
		int	pageNumber=Integer.parseInt(map.get("page"));
		int pageSize =Integer.parseInt(map.get("rows"));
		int	total = orderDaoImpl.getSumSubmenuPage(map);
		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		map.put("index", pageBean.getIndex()+"");
		List<OrderBean> list =orderDaoImpl.getSubmenuPage(map);
		
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);

		return pageBean;
	}

	@Override
	public PageBean getProcedurePageBean(Map<String,String> map) {
		
	
		
		int	pageNumber=Integer.parseInt(map.get("page"));
		int pageSize =Integer.parseInt(map.get("rows"));
		int	total = orderDaoImpl.getSumProcedure(map);
		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		map.put("index", pageBean.getIndex()+"");
		List<OrderBean> list =orderDaoImpl.getProcedurePageBean(map);
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);

		return pageBean;
	}


}
