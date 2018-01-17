package com.third.autoloan.identitymag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.identitymag.dao.IidentityDao;
import com.third.autoloan.identitymag.repository.IdentityRepository;
import com.third.autoloan.identitymag.service.IidentityService;

@Service
public class IdentityServiceImpl implements IidentityService{

	@Resource
	private IdentityRepository identityRepository;
	
	@Resource
	private IidentityDao identityDaoImpl;
	
	@Override
	public void deleteIdentityInfo(Long id) {
		// TODO Auto-generated method stub
		identityRepository.delete(id);
	}

	@Override
	public IdentityBean getIdentityInfoByIdentityNum(String identity) {
		// TODO Auto-generated method stub
		return identityDaoImpl.getIdentityInfoByIdentityNum(identity);
	}

	@Override
	public void saveIdentityInfo(IdentityBean identity) {
		// TODO Auto-generated method stub
		identityRepository.saveAndFlush(identity);
	}

}
