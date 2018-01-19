package com.third.autoloan.identitymag.Mapper;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.FetchType;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.beans.OrderBean;

public interface IdentityMapper {
	@Results({
		@Result(id=true,property="id",column="id",javaType=Integer.class),
		@Result(property="name",column="name",javaType=String.class),
		@Result(property="gender",column="gender",javaType=Integer.class),
		@Result(property="ethnic",column="ethnic",javaType=String.class),
		@Result(property="birthday",column="birthday",javaType=Date.class),
		@Result(property="address",column="address",javaType=String.class),
		@Result(property="identity",column="identity",javaType=String.class),
		@Result(property="administration",column="administration",javaType=String.class),
		@Result(property="issueDate",column="issueDate",javaType=Date.class),
		@Result(property="expireDate",column="expireDate",javaType=Date.class),

		@Result(property="orderList",javaType=Set.class,column="id",many=@Many(fetchType=FetchType.LAZY,select="findOrderByIdentityId"))
	})
	@Select(value= {"select * from t_identity where identity =#{identity}"})
	public IdentityBean getIdentityInfoByIdentityNum(@Param("identity")String identity);
	
	
	//查询订单集合
	@ResultType(value=OrderBean.class)
	@Select(value= {"select * from t_order where id = #{id}"})
	public List<OrderBean> findOrderByIdentityId(long id);
	
}
