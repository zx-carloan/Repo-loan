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
import com.third.autoloan.ordermag.service.IOrderGetService;

@Service
public class OrderGetServiceImpl implements IOrderGetService {

	@Resource
	private IOrderDao orderDaoImpl;
	
	@Override
	public PageBean getOrderPageByMap(Map map, PageBean pageBean) {
		// TODO Auto-generated method stub
		
		return null;
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
	public OrderBean getOrderInfoById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getSubmitInfoByOrderId(long id) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public PageBean getLoanPage(Map map) {
		// TODO Auto-generated method stub
		List<OrderBean> list=orderDaoImpl.getLoanPage(map);
		PageBean page=new PageBean();
		page.setRows(list);
		return page;
	}

	@Override
	public PageBean getSubmenuPage(Map map) {
		// TODO Auto-generated method stub
		List<OrderBean> list=orderDaoImpl.getSubmenuPage(map);
		PageBean page=new PageBean();
		page.setRows(list);
		return page;
	}

	@Override
	public PageBean getProcedurePageBean(Map map) {
		// TODO Auto-generated method stub
		List<OrderBean> list=orderDaoImpl.getProcedurePageBean(map);
		PageBean page=new PageBean();
		page.setRows(list);
		return page;
	}


}
