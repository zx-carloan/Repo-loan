package com.third.autoloan.carmag.mapper;

import org.springframework.stereotype.Component;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.RoleBean;

public interface CarMapper {
	
	public CarInfoBean getCarInfoBeanById(Long id);
	
	public RoleBean getRoleBeanById(Long id);
	
}
