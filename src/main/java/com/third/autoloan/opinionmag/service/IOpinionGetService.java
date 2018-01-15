package com.third.autoloan.opinionmag.service;

import com.third.autoloan.beans.OpinionBean;

//综合意见查询业务层
public interface IOpinionGetService {

	//根据订单的id查询综合意见信息
	public OpinionBean getOpinionByOrderId(Long orderId);
}
