package com.third.autoloan.putloanmag.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.PageBean;
import com.third.autoloan.putloanmag.service.IPutLoanGetService;

@RequestMapping(value="/putLoans")
@Controller
public class PutLoan {
	
	@Resource(name="PutLoanGetServiceImpl")
	private IPutLoanGetService  putLoanGetService;
	
	@RequestMapping(value="/page")
	
	public @ResponseBody PageBean findOrder(@RequestParam Map<String,String> map) {	
		System.out.println(map);
		PageBean page=	putLoanGetService.getLoanPage(map);
		return page;
	}

}
