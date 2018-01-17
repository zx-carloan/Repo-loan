package com.third.autoloan.companymag.service;

import java.util.List;

import com.third.autoloan.beans.ProductBean;

public interface IProductGetService {

	/**
	 * 得到数据库全部产品全部信息
	 * @return
	 */
	public List<ProductBean> listProductInfo();
}
