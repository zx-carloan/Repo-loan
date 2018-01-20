package com.third.autoloan.carmag.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;

@RequestMapping("/carInfo")
@Controller
public class CarController {

	@Resource
	private IOrderGetService orderGetServiceImpl;
	
	@RequestMapping(value="/page",method= {RequestMethod.GET})
	public @ResponseBody PageBean getUsersByQueryParams(String contractNum,String borrower,Integer company) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("contractNum", contractNum);
		map.put("borrower", borrower); 
		map.put("company", company);
		System.out.println(map);
		return null;
	}
	
	@RequestMapping(value="/allData")
	public @ResponseBody PageBean getUsersByQueryParams(@RequestParam Map<String,String> map) {
		System.out.println("map是"+map);
		/*Map<String,String> map1 = new HashMap<String,String>();
		map1.put("pageNumber", map.get("page"));
		map1.put("pageSize", map.get("rows"));*/
		PageBean pageBean = orderGetServiceImpl.getOrderPageByMap(map);
		System.out.println(pageBean.getRows().get(0));
		return pageBean;
	}
}
