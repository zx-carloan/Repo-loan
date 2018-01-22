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
import com.third.autoloan.beans.ProductBean;
import com.third.autoloan.companymag.service.ICompanyGetService;
import com.third.autoloan.companymag.service.IProductGetService;


@Controller
@RequestMapping("/company")
public class CompanymagController {
	
	@Resource(name="companyServiceImpl")
	private ICompanyGetService companyServiceImpl;
	
	@Resource(name="productServiceImpl")
	private IProductGetService productGetService;
	
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
	
	@RequestMapping(value="/productType",method= {RequestMethod.GET})
	public @ResponseBody List<ComboboxData> ListProductTypeName() {
		List<ComboboxData>	 datas = new ArrayList<ComboboxData>();
		List<ProductBean> list=productGetService.listProductInfo();
		datas.add(new ComboboxData("%","--------请输入--------"));
		if(list != null) {
			for (ProductBean bean : list) {
				ComboboxData data = new ComboboxData(bean.getName(), bean.getName());
				datas.add(data);
			}
		}
		
		return datas;
	}

}
