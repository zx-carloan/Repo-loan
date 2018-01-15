package com.third.autoloan.identitymag.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.third.autoloan.beans.IdentityBean;

public interface IdentityRepository extends JpaRepository<IdentityBean, Long>{
	
	public IdentityBean findByIdentity(String identity);
	
}
