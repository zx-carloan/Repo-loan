package com.third.autoloan.contractmag.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.third.autoloan.beans.PageBean;

@RequestMapping("/contract")
@Controller
public class contractController {

	@RequestMapping("/query")
	public PageBean getContractByQueryParams() {
		return null;
		
	}
}
