package com.third.autoloan.progress.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.OrderBean;

public interface ProgressRepository  extends JpaRepository<OrderBean, Long>{

}
