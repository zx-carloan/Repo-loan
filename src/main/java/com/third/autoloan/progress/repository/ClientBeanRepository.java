package com.third.autoloan.progress.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.ClientBean;

public interface ClientBeanRepository  extends JpaRepository<ClientBean, Long>{

}
