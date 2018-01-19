package com.third.autoloan.identitymag.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Singleton;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;

//客户身份证信息查询

@RequestMapping("/identity")
@Controller
public class IdentityController {

	@Resource(name = "orderGetServiceImpl")
	private IOrderGetService orderGetService;

	// 通过条件查询订单信息，得到客户身份信息

	@RequestMapping("/get")
	public @ResponseBody PageBean getOrderPageByMap(HttpServletRequest request) {
		String contratorNum = request.getParameter("contratorNum");
		String borrower = request.getParameter("borrower");
		String loanStatus = request.getParameter("loanStatus");
		String page = request.getParameter("page");
		String rows = request.getParameter("rows");
		if(page==null) {
			page="1";
		}
		if(rows==null) {
			rows="5";
		}
		
		
		System.out.println(contratorNum + "进来了"+borrower+"+"+loanStatus);
		
		Map map=new HashMap<>();
		map.put("contractNumber", contratorNum);
		map.put("loanName", borrower);
		map.put("companyName", loanStatus);
		map.put("page", page);
		map.put("rows", rows);
		
		PageBean bean=	orderGetService.getOrderPageByMap(map);
		List<OrderBean> list =	(List<OrderBean>) bean.getRows();
		System.out.println(list);
		return bean;
	}

}
