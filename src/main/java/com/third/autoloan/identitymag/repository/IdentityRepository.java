package com.third.autoloan.identitymag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.IdentityBean;

public interface IdentityRepository extends JpaRepository<IdentityBean, Long>{

}
