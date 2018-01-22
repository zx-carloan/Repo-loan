package com.third.autoloan.carmag.mapper;

import java.util.List;


import com.third.autoloan.beans.CarInfoBean;

public interface CarMapper {
	
	//根据Id查询对应的车辆信息
	public CarInfoBean getCarInfoBeanById(Long id); 
	
	//根据orderId查询对应的车辆信息1
	public List<CarInfoBean> getCarInfoBeanByOrderId(Long id);
	
	//保存车辆信息
	public void addCarInfoBeanByMybatis(CarInfoBean car);
	
	//更新车辆信息
	public void updateCarInfoBeanByMybatis(CarInfoBean car);
}
