package com.third.autoloan.clientmag.mapper;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.ContactorBean;


public interface ClientMapper {
	
	@Results({
		@Result(id=true,property="id",column="id",javaType=Integer.class),
		@Result(property="name",column="name",javaType=String.class),
		@Result(property="education",column="education",javaType=String.class),
		@Result(property="cellphone",column="cellphone",javaType=String.class),
		@Result(property="address",column="address",javaType=String.class),
		@Result(property="tel",column="tel",javaType=String.class),
		@Result(property="marriage",column="marriage",javaType=Integer.class),
		@Result(property="child",column="child",javaType=Integer.class),
		@Result(property="house",column="house",javaType=Integer.class),
		@Result(property="partner",column="partner",javaType=Integer.class),
		@Result(property="currentAddress",column="currentAddress",javaType=String.class),
		@Result(property="clientType",column="clientType",javaType=Integer.class),
		@Result(property="companyName",column="companyName",javaType=String.class),
		@Result(property="companyAddress",column="companyAddress",javaType=String.class),
		@Result(property="companyTel",column="companyTel",javaType=String.class),
		@Result(property="postcode",column="postcode",javaType=String.class),
		@Result(property="preTime",column="preTime",javaType=Date.class),
		@Result(property="department",column="department",javaType=String.class),
		@Result(property="position",column="position",javaType=String.class),
		@Result(property="companySize",column="companySize",javaType=String.class),
		@Result(property="industryType",column="industryType",javaType=String.class),
		@Result(property="companyType",column="companyType",javaType=Integer.class),
		@Result(property="loanPurpose",column="loanPurpose",javaType=String.class),
		@Result(property="salary",column="salary",javaType=Double.class),
		@Result(property="maxAffordable",column="maxAffordable",javaType=Double.class),
		@Result(property="maxPaybackTime",column="maxPaybackTime",javaType=Integer.class),
		@Result(property="minLoan",column="minLoan",javaType=Double.class),
		@Result(property="maxLoan",column="maxLoan",javaType=Double.class),
		@Result(property="sourceOfInfo",column="sourceOfInfo",javaType=String.class),
		@Result(property="saler",column="saler",javaType=String.class),
		@Result(property="valuer",column="valuer",javaType=String.class),
		@Result(property="applyDate",column="applyDate",javaType=Date.class),
		@Result(property="iDPic",column="iDPic",javaType=String.class),
		@Result(property="applicationForm",column="applicationForm",javaType=String.class),

		@Result(property="contactorList",javaType=Set.class,column="id",many=@Many(select="com.third.autoloan.clientmag.mapper.ClientMapper.findContactorById"))
	})
	@Select("select * from t_client c where c.id=#{id}  ")
	public ClientBean getClientInfoByOrderId(long id);
	
	
	
	
	
	@ResultType(ContactorBean.class)
	@Select("select * from t_contactor c where c.fk_client_id=#{id}")
	public List<ContactorBean> findContactorById(long id);

}
