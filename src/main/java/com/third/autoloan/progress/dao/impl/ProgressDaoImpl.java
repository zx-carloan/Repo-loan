package com.third.autoloan.progress.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.progress.dao.IProgressDao;
import com.third.autoloan.progress.mapper.ProgressMapper;

@Repository("progressDaoImpl")
public class ProgressDaoImpl implements IProgressDao{

	@Resource
	private ProgressMapper progressMapper;

	@Override
	public List<OrderBean> getOrderListByMap(Map<String, String> map) {
		return progressMapper.getOrderListByMap(map);
	}

	@Override
	public int getTotalOrderNumByMap(Map<String, String> map) {
		return progressMapper.getTotalOrderNumByMap(map);
	}

	@Override
	public List<CarInfoBean> listCarInfo(long id) {

		return progressMapper.listCarInfo(id);
	}

	@Override
	public ClientBean getClientInfoByOrderId(long id) {

		return progressMapper.getClientInfoByOrderId(id);
	}



	@Override
	public List<OrderBean> getLoanPage(Map<String, String> map) {
		return progressMapper.getLoanPage(map);
	}

	@Override
	public List<OrderBean> getSubmenuPage(Map<String, String> map) {
		return progressMapper.getSubmenuPage(map);
	}

	@Override
	public List<OrderBean> getProcedurePageBean(Map<String, String> map) {
		return progressMapper.getProcedurePageBean(map);
	}

	@Override
	public int getSumProcedure(Map<String, String> map) {
		// TODO Auto-generated method stub
		return progressMapper.getSumProcedure(map);
	}

	@Override
	public int getSumSubmenuPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return progressMapper.getSumSubmenuPage(map);
	}

	@Override
	public int getSumLoanPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return progressMapper.getSumLoanPage(map);
	}

	@Override
	public OrderBean getOrderInfo(long id) {
		// TODO Auto-generated method stub
		return progressMapper.getOrderInfoBuId(id);
	}

	@Override
	public List<OrderBean> getSubmenuPageToAuditor(int number) {
		// TODO Auto-generated method stub
		return progressMapper.getSubmenuPageToAuditor(number);
	}

	@Override
	public void updateOrderInfo(String name, long id) {
		progressMapper.updateOrderInfo(name, id);
		
	}

}
