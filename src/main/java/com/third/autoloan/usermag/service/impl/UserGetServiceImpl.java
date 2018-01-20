package com.third.autoloan.usermag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.UserBean;
import com.third.autoloan.usermag.dao.IUserDao;
import com.third.autoloan.usermag.service.IUserGetService;
import com.third.autoloan.util.CTools;


@Service
public class UserGetServiceImpl implements IUserGetService {

	@Resource
	private IUserDao userDaoImpl;
	
	@Override
	public UserBean getUser(UserBean user) {
		System.out.println(user);
		if(CTools.checkStringNull(user.getLoginName()) &&  (CTools.checkStringNull(user.getLoginName()))){
			UserBean userBean = userDaoImpl.getUser(user);	
			
			return userBean;
		}
	
		return null;
	}
}
