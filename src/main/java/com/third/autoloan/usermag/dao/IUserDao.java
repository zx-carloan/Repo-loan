package com.third.autoloan.usermag.dao;


import com.third.autoloan.beans.UserBean;

public interface IUserDao {

	/**
	 * 根据账号密码查询用户
	 * @return
	 */
	public UserBean getUser(UserBean user);
}
