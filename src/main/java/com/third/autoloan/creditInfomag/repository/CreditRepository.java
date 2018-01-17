package com.third.autoloan.creditInfomag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.CreditInfoBean;

public interface CreditRepository extends JpaRepository<CreditInfoBean, Long>{

}
