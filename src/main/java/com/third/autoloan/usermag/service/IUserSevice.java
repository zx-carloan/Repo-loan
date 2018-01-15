package com.third.autoloan.usermag.service;


import com.third.autoloan.beans.UserBean;
/**
 * 
 * @author 系统用户
 *
 */
public interface IUserSevice {

	/**
	 *删除用户信息
	 * @param userId
	 */
	public void deleteUserInfo(Long userId);
	
	/**
	 * 添加用户信息
	 * @param user
	 */
	public void saveUserInfo(UserBean user);

	/**
	 * 修改用户信息
	 * @param user
	 */
	public void updateUserInfo(UserBean user);

}