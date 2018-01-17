package com.third.autoloan.opinionmag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.OpinionBean;

public interface OpinionRepository extends JpaRepository<OpinionBean, Long>{

}
