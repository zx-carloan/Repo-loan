package com.third.autoloan.companymag.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.ComboboxData;
import com.third.autoloan.beans.CompanyBean;
import com.third.autoloan.companymag.service.ICompanyGetService;


@Controller
@RequestMapping("/company")
public class CompanymagController {
	
	@Resource(name="companyServiceImpl")
	private ICompanyGetService companyServiceImpl;
	
	@RequestMapping(value="/getName",method= {RequestMethod.GET})
	public @ResponseBody List<ComboboxData> listCompanyName() {
		List<ComboboxData>	 datas = new ArrayList<ComboboxData>();
		List<CompanyBean> list=companyServiceImpl.listCompanyInfo();
		datas.add(new ComboboxData("%","--------请输入--------"));
		if(list != null) {
			for (CompanyBean bean : list) {
				ComboboxData data = new ComboboxData(bean.getName(), bean.getName());
				datas.add(data);
			}
		}
		return datas;
	}

}
