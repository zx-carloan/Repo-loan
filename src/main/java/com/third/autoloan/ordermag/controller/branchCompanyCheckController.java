package com.third.autoloan.ordermag.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;

@RequestMapping("/branchCompany")
@Controller
public class branchCompanyCheckController {
	
	//如果不加会报错
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService orderGetServiceImpl;
	private Logger log=Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/page")
	public @ResponseBody PageBean getBranchCompanyDate(Map<String,String> map) {
		 
		PageBean page=null;
		 System.out.println("map="+map);
		/*try {
			  page=orderGetServiceImpl.getOrderPageByMap(map);
		} catch (Exception e) {
			// TODO: handle exception
			log.error("UserController-----------getUsersByQueryParams()", e);
		}  
	   System.out.println(page);
	   log.info(page);*/
	   return page;
	}
	

}
