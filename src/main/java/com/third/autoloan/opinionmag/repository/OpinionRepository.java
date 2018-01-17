package com.third.autoloan.opinionmag.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;

import com.third.autoloan.beans.OpinionBean;
import com.third.autoloan.beans.UserBean;

public interface OpinionRepository extends JpaRepository<OpinionBean, Long>{

}
