package com.third.autoloan.submenu.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.beans.UserBean;
import com.third.autoloan.submenu.dao.SubmenuDao;
import com.third.autoloan.util.CTools;

@Service
public class SubmenuServiceImpl  implements ISubmenuService{

	@Resource
	private SubmenuDao submenuDaoImpl;
	
	@Override
	public PageBean getSubmenuPage(Map<String, String> map) {
		int	pageNumber=Integer.parseInt(map.get("page"));
		int pageSize =Integer.parseInt(map.get("rows"));
		int	total = submenuDaoImpl.getSumSubmenuPage(map);
		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		
		map.put("index", pageBean.getIndex()+"");
	
		
	 if( ! CTools.checkStringNull(map.get("contractNumber")))   map.put("contractNumber", null);
	 if( ! CTools.checkStringNull(map.get("loanName")))   map.put("loanName", null);
	 if( ! CTools.checkStringNull(map.get("submenuStatus")))   map.put("submenuStatus", null);
	 if( ! CTools.checkStringNull(map.get("identity")))   map.put("identity", null);
	 
	 	System.out.println(map.get("submenuStatus"));
	
		List<OrderBean> list =submenuDaoImpl.getSubmenuPage(map);
		System.out.println("底层" + list);
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);

		return pageBean;
	}

	@Override
	public List<OrderBean> getSubmenuPageToAuditor(int number) {
		// TODO Auto-generated method stub
		return submenuDaoImpl.getSubmenuPageToAuditor(number);
	}

	@Override
	public void updateOrderInfo(String name, long id) {
		submenuDaoImpl.updateOrderInfo(name, id);
		
	}

	public List<UserBean> listAuditorName(String submenuStatus){
		
		return submenuDaoImpl.listAuditorName(submenuStatus);
	}
		


}
