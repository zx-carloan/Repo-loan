package com.third.autoloan.carmag.service;

import java.util.List;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.RoleBean;

//车辆信息查询业务层
public interface ICarGetService {

	/***
	 * 根据订单的id查询车辆集合
	 */
	public List<CarInfoBean> getCarInfoByOrderId(Long id);
	
	public CarInfoBean getCarInfoById(Long id);
}
