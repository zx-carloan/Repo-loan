package com.third.autoloan.carmag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.CarInfoBean;

public interface ICarServiceRepository extends JpaRepository<CarInfoBean, Long>{

}
