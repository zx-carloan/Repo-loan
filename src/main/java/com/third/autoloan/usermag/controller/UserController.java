package com.third.autoloan.usermag.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.UserBean;
import com.third.autoloan.usermag.service.IUserGetService;


@RequestMapping("/usermag")
@Controller
public class UserController {
	
@Resource
private IUserGetService userGetServiceImpl;
	
	@RequestMapping(value = "/login", method = { RequestMethod.POST }, produces = { "application/json;charset=utf-8" })
	public @ResponseBody String login( UserBean user,HttpSession session) {
		String str = "";
		UserBean userBean = userGetServiceImpl.getUser(user);
		System.out.println(userBean);
			//数据库中是否有该账户
		if(userBean  !=null) {
				session.setAttribute("user", userBean);
				str="jsp/Interface.jsp";
			}else {
				str="err";
		}
		return str;
	}
}


