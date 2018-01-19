package com.third.autoloan.ordermag.controller;


import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/branchCompany")
@Controller
public class branchCompanyCheckController {
	
	//如果不加会报错
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService orderGetServiceImpl;
	@Resource
	private IOrderService orderServiceImpl;
	
	private Logger log=Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/page")
	public @ResponseBody PageBean getBranchCompanyDate(@RequestParam Map<String,String> map) {
		 System.out.println(map);
		 PageBean page=null;
		/* System.out.println("map="+map);
	     Map<String,String> map1=new HashMap<String,String>();
	     map1.put("index", map.get("page"));
	     map1.put("pageSize", map.get("rows"));*/
		 page=orderGetServiceImpl.getOrderPageByMap(map);
		
	   System.out.println("pageBean="+page);
	 
	   return page;
	}
	
	
	@RequestMapping(value="/detailInfo")
	public @ResponseBody OrderBean getBranchCompanyInfo(Integer id) {
		Integer id_1=id+1;
		System.out.println("===================id="+id_1);
		OrderBean order=orderServiceImpl.getOrderById(id_1);
		System.out.println("order="+order);
		return null;
	}
	

}
