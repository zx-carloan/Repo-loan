package com.third.autoloan.opinionmag.mapper;

import com.third.autoloan.beans.OpinionBean;

public interface OpinionMapper {

	//根据订单的id查询综合意见信息
	public OpinionBean getOpinionByOrderId(Long orderId);
}
