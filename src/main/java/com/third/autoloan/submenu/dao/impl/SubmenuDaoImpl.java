package com.third.autoloan.submenu.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.UserBean;
import com.third.autoloan.submenu.dao.SubmenuDao;
import com.third.autoloan.submenu.mapper.SubmenuMapper;

@Repository
public class SubmenuDaoImpl  implements SubmenuDao{

	@Resource
	private SubmenuMapper subemuMapper;
	
	@Override
	public List<OrderBean> getSubmenuPageToAuditor(int number) {
		// TODO Auto-generated method stub
		return subemuMapper.getSubmenuPageToAuditor(number);
	}

	@Override
	public void updateOrderInfo(String name, long id) {
		subemuMapper.updateOrderInfo(name, id);
		
	}

	@Override
	public List<OrderBean> getSubmenuPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return subemuMapper.getSubmenuPage(map);
	}

	@Override
	public int getSumSubmenuPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return subemuMapper.getSumSubmenuPage(map);
	}

	@Override
	public List<UserBean> listAuditorName(String submenuStatus) {
		// TODO Auto-generated method stub
		return subemuMapper.listAuditorName(submenuStatus);
	}

}
