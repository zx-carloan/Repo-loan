package com.third.autoloan.usermag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.third.autoloan.beans.UserBean;

public interface UserRepository  extends JpaRepository<UserBean, Long> {

}