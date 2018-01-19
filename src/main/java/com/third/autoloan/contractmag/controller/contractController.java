package com.third.autoloan.contractmag.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.repository.OrderRepository;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/contract")
@Controller
public class contractController {
	
	
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService  orderServiceImpl;
	
	@Resource(name="orderServiceImpl")
	private IOrderService orderService;
	
	private Logger log=Logger.getLogger(this.getClass());
	
	@RequestMapping("/query" )
	public @ResponseBody PageBean getContractByQueryParams(@RequestParam Map<String,String> map) {
		 PageBean page=orderServiceImpl.getOrderPageByMap(map);
		 System.out.println(page);
	   return page;
		
	}
	@RequestMapping("/delect" )
	public @ResponseBody String deleteOrderInfoById (Long orderId) {
		orderService.deleteOrderInfo(orderId);
		return "Revocation of success";
		
	}
}
