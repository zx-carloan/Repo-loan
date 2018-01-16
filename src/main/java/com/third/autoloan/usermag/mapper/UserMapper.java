package com.third.autoloan.usermag.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

import com.third.autoloan.beans.UserBean;

public interface UserMapper {
	
	@ResultType(value=UserBean.class)
	@Select("select * from t_user where loginName = #{user.loginName} and password = #{user.password}")
	public UserBean getUser(@Param("user")UserBean user);
	
}
