package com.third.autoloan.ordermag.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.ContractBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.mapper.OrderGetMapper;
import com.third.autoloan.ordermag.mapper.OrderMapper;
import com.third.autoloan.ordermag.service.IOrderGetService;

@Service
public class OrderGetServiceImpl implements IOrderGetService {

	@Resource
	private OrderMapper orderMapper;
	@Resource
	private OrderGetMapper orderGetMapper;
	@Override
	public PageBean getOrderPageByMap(Map map, PageBean pageBean) {
		// TODO Auto-generated method stub
		
		return null;
	}


	@Override
	public List<CarInfoBean> listCarInfo(long id) {
		// TODO Auto-generated method stub
		
		return orderMapper.listCarInfo(id);
	}

	@Override
	public ClientBean getClientInfoByOrderId(long id) {
		// TODO Auto-generated method stub
		return orderMapper.getClientInfoByOrderId(id);
	}

	@Override
	public ClientBean getCreditInfoByOrderId(long id) {
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
	public ContractBean getContractInfoByOrderId(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageBean getLoanPage(Map map) {
		// TODO Auto-generated method stub
		List<OrderBean> list=orderGetMapper.getLoanPage(map);
		PageBean page=new PageBean();
		page.setRows(list);
		return page;
	}

	@Override
	public PageBean getSubmenuPage(Map map) {
		// TODO Auto-generated method stub
		List<OrderBean> list=orderGetMapper.getSubmenuPage(map);
		PageBean page=new PageBean();
		page.setRows(list);
		return page;
	}

	@Override
	public PageBean getProcedurePageBean(Map map) {
		// TODO Auto-generated method stub
		List<OrderBean> list=orderGetMapper.getProcedurePageBean(map);
		PageBean page=new PageBean();
		page.setRows(list);
		return page;
	}


}
