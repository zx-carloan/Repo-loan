package com.third.autoloan.carmag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.carmag.repository.ICarServiceRepository;
import com.third.autoloan.carmag.service.ICarService;

@Service
public class CarServiceImpl implements ICarService{ 

	@Resource
	private ICarServiceRepository iCarServiceRepository;
	//添加车辆信息
	public void addCarInfo(CarInfoBean car) {
		iCarServiceRepository.save(car);
	}

	@Override
	public void updateCarInfo(CarInfoBean car) {
		iCarServiceRepository.saveAndFlush(car);
	}

	@Override
	public void deleteCarInfo(CarInfoBean carInfoBean) {
		// TODO Auto-generated method stub
		System.out.println("业务层拿到的carinfoBean是"+carInfoBean);
		iCarServiceRepository.delete(carInfoBean);
	}

}
