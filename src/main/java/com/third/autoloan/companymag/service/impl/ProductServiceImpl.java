package com.third.autoloan.companymag.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.ProductBean;
import com.third.autoloan.companymag.repository.ProductRepository;
import com.third.autoloan.companymag.service.IProductGetService;
import com.third.autoloan.companymag.service.IProductService;

@Service("productServiceImpl")
public class ProductServiceImpl implements IProductService,IProductGetService {

	@Resource
	private ProductRepository productRepository;
	
	@Override
	public void saveProduct(ProductBean product) {
		// TODO Auto-generated method stub
		productRepository.save(product);
	}

	@Override
	public List<ProductBean> listProductInfo() {
		// TODO Auto-generated method stub
		return productRepository.findAll();
	}

}
