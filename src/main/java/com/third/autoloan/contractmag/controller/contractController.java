package com.third.autoloan.contractmag.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;

@RequestMapping("/contract")
@Controller
public class contractController {
	
	
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService  orderServiceImpl;
	private Logger log=Logger.getLogger(this.getClass());
	
	@RequestMapping("/query" )
	public @ResponseBody PageBean getContractByQueryParams(@RequestParam Map<String,String> map) {
		 PageBean page=orderServiceImpl.getOrderPageByMap(map);

	   return page;
		
	}
}
