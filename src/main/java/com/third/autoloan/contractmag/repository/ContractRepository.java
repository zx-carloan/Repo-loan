package com.third.autoloan.contractmag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.ContractBean;

public interface ContractRepository  extends JpaRepository<ContractBean, Long>{

}
