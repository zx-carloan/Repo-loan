package com.third.autoloan.usermag.dao;


import com.third.autoloan.beans.UserBean;

public interface IUserDao {

	/**
	 * 查询全部用户
	 * @return
	 */
	public UserBean getUser();
}
