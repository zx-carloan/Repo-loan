package com.third.autoloan.clientmag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.ClientBean;

public interface ClientRepository extends JpaRepository<ClientBean, Long> {

	
	

}
