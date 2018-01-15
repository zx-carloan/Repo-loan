package com.third.autoloan.identitymag.dao;

import com.third.autoloan.beans.IdentityBean;

public interface IidentityDao {
	/**
	 * 根据身份证号码拿到身份证信息
	 * 
	 * @param identity
	 */
	public IdentityBean getIdentityInfoByIdentityNum(String identity);
	
}
