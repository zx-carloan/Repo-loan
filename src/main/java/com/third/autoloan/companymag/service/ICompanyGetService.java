package com.third.autoloan.companymag.service;

import java.util.List;

import com.third.autoloan.beans.CompanyBean;

public interface ICompanyGetService {

	/**
	 * 得到数据库全部的公司对象
	 * @return
	 */
	public List<CompanyBean> listCompanyInfo();
	

}
