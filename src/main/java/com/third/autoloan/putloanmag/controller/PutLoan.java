package com.third.autoloan.putloanmag.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;

@RequestMapping(value="/putLoans")
@Controller
public class PutLoan {
	
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService  orderServiceImpl;
	
	@RequestMapping(name="/page",method= {RequestMethod.GET})
	@ResponseBody
	public PageBean findOrder(@RequestParam Map<String,String> map) {		
		PageBean page=	orderServiceImpl.getLoanPage(map);
		System.out.println(page);
		return page;
	}
	
	

}
