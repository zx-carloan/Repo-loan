package com.third.autoloan.usermag.service;


import com.third.autoloan.beans.UserBean;

/**
 * 
 * @author 读
 *
 */
public interface IUserGetService {
	/**
	 * 判断是否有该用户登录
	 * @param user
	 * @return
	 */
	public boolean isUser(UserBean user); ;
}
