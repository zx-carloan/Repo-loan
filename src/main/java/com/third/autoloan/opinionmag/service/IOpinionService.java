package com.third.autoloan.opinionmag.service;

import com.third.autoloan.beans.OpinionBean;

//综合意见增删改业务层
public interface IOpinionService {

	/**
	 * 增加评论意见
	 * @param opinionBean
	 * @param id 所对订单的id
	 */
	public void saveOpinionInfo(OpinionBean opinionBean,long id);
	/**
	 * 修改评论意见
	 * @param opinionBean
	 */
	public void updeteOpinionInfoById(OpinionBean opinionBean);
	
	/***
	 * 根据id删除综合意见信息
	 * @param id
	 */
	public void deleteOpinionById(Long id);
}
