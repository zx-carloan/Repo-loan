package com.third.autoloan.submenu;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;

@RequestMapping("/submenu")
@Controller
public class SubmenuController{

	@Resource(name="orderGetServiceImpl")
	private IOrderGetService orderGetService;
	
	@RequestMapping(value="/page",method= {RequestMethod.POST})
	public @ResponseBody PageBean getSubmenuPage(@RequestParam Map<String,String> map) {
		
		System.out.println(map);
		PageBean bean=	orderGetService.getSubmenuPage(map);
		System.out.println(bean);
		return bean;	
	}
	
}
