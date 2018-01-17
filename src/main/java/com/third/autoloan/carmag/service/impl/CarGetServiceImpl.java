package com.third.autoloan.carmag.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.carmag.mapper.CarMapper;
import com.third.autoloan.carmag.service.ICarGetService;

@Service
public class CarGetServiceImpl implements ICarGetService { 

	@Resource
	private CarMapper carMapper;
	@Override
	public List<CarInfoBean> getCarInfoByOrderId(Long id) {
		// TODO Auto-generated method stub
		return carMapper.getCarInfoBeanByOrderId(id);
	}

	public CarInfoBean getCarInfoById(Long id) {
		return carMapper.getCarInfoBeanById(id);
	}

}
