package com.third.autoloan.identitymag.dao;


import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.third.autoloan.beans.IdentityBean;

public interface IidentityDao {
	/**
	 * 根据身份证号码拿到身份证信息
	 * 
	 * @param identity
	 */
	@ResultType(value = IdentityBean.class)
	@Select("SELECT id AS id,name AS name,gender AS gender,ethnic,birthday,address,identity,administration,issueDate,expireDate FROM t_identity WHERE identity=#{identity};")
	public IdentityBean getIdentityInfoByIdentityNum(@Param("identity")String identity);
	
}
