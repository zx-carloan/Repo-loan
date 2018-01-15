package com.third.autoloan.ordermag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.OrderBean;

public interface OrderRepository  extends JpaRepository<OrderBean, Long>{

}
