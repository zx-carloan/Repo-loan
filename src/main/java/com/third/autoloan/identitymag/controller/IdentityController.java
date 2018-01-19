package com.third.autoloan.identitymag.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.identitymag.service.IidentityService;
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/identitys")
@Controller
public class IdentityController {

	@Resource
	private IidentityService identityServiceImpl;
	
	@Resource
	private IOrderService orderServiceImpl ;
	

	// 根据身份证号码查找客户
	@RequestMapping(value = "/{identity}", method = { RequestMethod.GET }, produces = {
			"application/json;charset=utf-8" })
	@ResponseBody
	public IdentityBean findClient(@PathVariable String identity) {
		IdentityBean id = null;
		if (identity != null || identity != "") {
			id = identityServiceImpl.getIdentityInfoByIdentityNum(identity);
		}
		return id;
	}

	// 添加客户
	@RequestMapping(value = "/ss", method = { RequestMethod.POST }, produces = { "application/json;charset=utf-8" })
	public String saveIdentity(IdentityBean identityBean) {
		identityServiceImpl.saveIdentityInfo(identityBean);
		String str = "jsp/Interface";
		return str;
	}
	
	//撤销订单
	@RequestMapping(value="/{ids}",method= {RequestMethod.DELETE},produces= {"application/json;charset=utf-8"})
	@ResponseBody
	public String deleteOrder(@PathVariable("ids") long id) {
		String str = "success";
		orderServiceImpl.deleteOrderInfo(id);
		return str;
	}
	
	
	

}
