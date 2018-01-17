package com.third.autoloan.opinionmag.dao;

import com.third.autoloan.beans.OpinionBean;

public interface IOpinionDao {


	//根据订单的id查询综合意见信息
	public OpinionBean getOpinionByOrderId(Long orderId);
}
