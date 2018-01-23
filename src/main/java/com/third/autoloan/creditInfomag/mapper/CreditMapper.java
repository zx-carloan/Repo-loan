package com.third.autoloan.creditInfomag.mapper;

import java.util.List;

import com.third.autoloan.beans.CreditInfoBean;

public interface CreditMapper {
	public void addCreditInfoByMybatis(CreditInfoBean creditInfo);
	
	public List<CreditInfoBean> findAllCreditInfo();
}
