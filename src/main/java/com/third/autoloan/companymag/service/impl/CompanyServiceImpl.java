package com.third.autoloan.companymag.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CompanyBean;
import com.third.autoloan.companymag.repository.CompanyRepository;
import com.third.autoloan.companymag.service.ICompanyGetService;
import com.third.autoloan.companymag.service.ICompanyService;


@Service("companyServiceImpl")
public class CompanyServiceImpl implements ICompanyService , ICompanyGetService {

	@Resource
	private CompanyRepository companyRepository;
	
	@Override
	public void saveCompany(CompanyBean company) {
		// TODO Auto-generated method stub

		companyRepository.save(company);
	}

	@Override
	public List<CompanyBean> listCompanyInfo() {
	
		return 	companyRepository.findAll();
	}

}
