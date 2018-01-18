
package com.third.autoloan.usermag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.UserBean;
import com.third.autoloan.usermag.repository.UserRepository;
import com.third.autoloan.usermag.service.IUserSevice;

@Service
public class UserServiceImpl implements IUserSevice {

	@Resource
	private UserRepository userRepository;
	
	@Override
	public void deleteUserInfo(Long userId) {
		userRepository.delete(userId);
	}

	@Override
	public void saveUserInfo(UserBean user) {
		userRepository.save(user);
	}

	@Override
	public void updateUserInfo(UserBean user) {
		userRepository.saveAndFlush(user);
	}

}
