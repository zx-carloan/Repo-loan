package com.third.autoloan.usermag.service;

import java.util.List;

import com.third.autoloan.beans.UserBean;

/**
 * 
 * @author 读
 *
 */
public interface IUserGetService {
	/**
	 * 查询全部用户
	 * @return
	 */
	public List<UserBean> listUserInfo();
}
