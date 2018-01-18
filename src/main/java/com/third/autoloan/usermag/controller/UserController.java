package com.third.autoloan.usermag.controller;


import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.third.autoloan.beans.UserBean;
import com.third.autoloan.usermag.service.IUserGetService;


@RequestMapping("/usermag")
@Controller
public class UserController {
	
@Resource
private IUserGetService userGetServiceImpl;
	
	@RequestMapping(value = "/{id}", method = { RequestMethod.POST }, produces = { "application/json;charset=utf-8" })
	public @ResponseBody String login( UserBean user) {
		String str = "我不是信息";
		if(null!=user.getLoginName()||null!=user.getPassword()) {
			//数据库中是否有该账户
			if( userGetServiceImpl.getUser(user)!=null) {
				System.out.println("进来了");
				str="/aotoloan/jsp/Interface.jsp";
			}else {
				str="err";
			}
		}else {
			str="err";
		}
		return str;
	}
}


