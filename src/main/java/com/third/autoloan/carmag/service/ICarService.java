package com.third.autoloan.carmag.service;

import com.third.autoloan.beans.CarInfoBean;

//车辆信息增删改业务层
public interface ICarService {
	
	/***
	 * 添加车辆信息到数据库中
	 * @param car
	 */
	public void addCarInfo(CarInfoBean car);
	
	/***
	 * 根据车辆的id删除车辆信息
	 * @param carId
	 */
	public void deletCarInfo(Long carId);
	
	/***
	 * 更新车辆信息
	 * @param car
	 */
	public void updateCarInfo(CarInfoBean car);
	
}
