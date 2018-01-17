package com.third.autoloan.companymag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.ProductBean;

public interface ProductRepository extends JpaRepository<ProductBean, Long>{

}
