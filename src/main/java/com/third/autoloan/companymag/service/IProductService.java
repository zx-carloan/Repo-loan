package com.third.autoloan.companymag.service;

import com.third.autoloan.beans.ProductBean;

//产品业务
public interface IProductService {

	/**
	 * 添加新的产品信息
	 * @param product
	 */
	public void saveProduct(ProductBean product);

}