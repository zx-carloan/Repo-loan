package com.third.autoloan.identitymag.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.ordermag.service.IOrderService;


//客户身份证信息查询


@RequestMapping("/identity")
@Controller
public class IdentityController{

	@Resource(name="orderServiceImpl")
	private IOrderService orderServiceImpl;
	
	//通过条件查询订单信息，得到客户身份信息
	
	@RequestMapping("/get")
	public @ResponseBody ModelAndView getOrderPageByMap() {
		return null;
	}
	
}
