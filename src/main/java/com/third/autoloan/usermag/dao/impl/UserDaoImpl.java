package com.third.autoloan.usermag.dao.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.UserBean;
import com.third.autoloan.usermag.dao.IUserDao;
import com.third.autoloan.usermag.mapper.UserMapper;


@Repository
public class UserDaoImpl implements IUserDao {

	@Resource
	private UserMapper um;
	
	@Override
	public UserBean getUser(UserBean user) {
		// TODO Auto-generated method stub
		return um.getUser(user);
	}

}
