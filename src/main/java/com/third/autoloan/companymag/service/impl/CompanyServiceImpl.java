package com.third.autoloan.companymag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CompanyBean;
import com.third.autoloan.companymag.repository.CompanyRepository;
import com.third.autoloan.companymag.service.ICompanyService;


@Service("companyServiceImpl")
public class CompanyServiceImpl implements ICompanyService {

	@Resource
	private CompanyRepository companyRepository;
	
	@Override
	public void saveCompany(CompanyBean company) {
		// TODO Auto-generated method stub

		companyRepository.save(company);
	}

}
