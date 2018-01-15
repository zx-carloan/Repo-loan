package com.third.autoloan.companymag.service;

import com.third.autoloan.beans.CompanyBean;


public interface ICompanyService {

	/**
	 * 添加公司信息
	 * @param company
	 */
	public void saveCompany(CompanyBean company);

}