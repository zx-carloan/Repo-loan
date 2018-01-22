package com.third.autoloan.submenu.service;

import java.util.List;
import java.util.Map;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.beans.UserBean;

public interface ISubmenuService {
	/**
	 *得到 分单业务列表
	 * @param map
	 * @return
	 */
	public PageBean getSubmenuPage(Map<String,String> map);
	

	/**
	 *得到 所有分单审核人为空业务列表
	 * @param map
	 * @return
	 */
	public List<OrderBean> getSubmenuPageToAuditor(int number);
	
	/**
	 * 修改订单信息
	 * 
	 * @param orderBean 
	 */
	public void updateOrderInfo(String name, long id);
	
	/**
	 * 得到全部的审核人
	 * @param submenuStatus 0为总公司信审  1为签约复核审核
	 * @return
	 */
	public List<UserBean> listAuditorName(String submenuStatus);
}
