package com.third.autoloan.putloanmag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.OrderBean;

public interface PutLoanRepository   extends JpaRepository<OrderBean, Long>{

}
