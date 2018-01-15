package com.third.autoloan.companymag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.CompanyBean;

public interface CompanyRepository extends JpaRepository<CompanyBean, Long>{

}