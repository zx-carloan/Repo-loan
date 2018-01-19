package com.third.autoloan.identitymag.dao.impl;



import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.identitymag.Mapper.IdentityMapper;
import com.third.autoloan.identitymag.dao.IidentityDao;

@Repository
public class IdentityDaoImpl implements IidentityDao{

	@Resource
	private IdentityMapper identityMapper;
	
	@Override
	public IdentityBean getIdentityInfoByIdentityNum(String identity) {
		// TODO Auto-generated method stub
		return identityMapper.getIdentityInfoByIdentityNum(identity);
	}
   

}
