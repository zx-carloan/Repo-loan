package com.third.autoloan.identitymag.service;

import com.third.autoloan.beans.IdentityBean;

/**
 * @author 省份证信息管理
 * @version 1.0
 * @created 12-一月-2018 上午 9:58:17
 */
public interface IidentityService {

	/**
	 * 删除用户信息
	 * 
	 * @param id
	 */
	public void deleteIdentityInfo(Long id);

	/**
	 * 根据身份证号码拿到身份证信息
	 * 
	 * @param identity
	 */
	public IdentityBean getIdentityInfoByIdentityNum(String identity);

	/**
	 * 添加身份证信息
	 * 
	 * @param identity
	 */
	public void saveIdentityInfo(IdentityBean identity);
	

}