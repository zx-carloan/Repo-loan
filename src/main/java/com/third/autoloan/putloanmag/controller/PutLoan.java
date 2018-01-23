package com.third.autoloan.putloanmag.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderService;
import com.third.autoloan.putloanmag.service.IPutLoanGetService;

@RequestMapping(value="/putLoans")
@Controller
public class PutLoan {
	
	@Resource(name="PutLoanGetServiceImpl")
	private IPutLoanGetService  putLoanGetService;
	
	@Resource
	private IOrderService orderServiceImpl;
	
	@RequestMapping(value="/page")
	
	public @ResponseBody PageBean findOrder(@RequestParam Map<String,String> map) {	
		System.out.println(map);
		PageBean page=	putLoanGetService.getLoanPage(map);
		return page;
	}
	public@ResponseBody String getMoney(Long orderId) {
		return null;
		
	} 
	/**
	 * 查询订单
	 */
	@RequestMapping("/putLoanInfo")
	public @ResponseBody OrderBean signInfo(Long  orderId) {
		OrderBean order=orderServiceImpl.getOrderById(orderId);
		System.out.println(order);
		return order;
	}
	
	
}
