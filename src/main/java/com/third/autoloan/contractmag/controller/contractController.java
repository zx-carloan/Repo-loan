package com.third.autoloan.contractmag.controller;

import java.io.File;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/contract")
@Controller
public class contractController {
	
	
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService  orderServiceImpl;
	
	@Resource(name="orderServiceImpl")
	private IOrderService orderService;
	
	
	@RequestMapping("/query" )
	public @ResponseBody PageBean getContractByQueryParams(@RequestParam Map<String,String> map) {
		 PageBean page=orderServiceImpl.getOrderPageByMap(map);
		 System.out.println(page);
	   return page;
		
	}
	@RequestMapping("/delect" )
	public @ResponseBody String deleteOrderInfoById (Long orderId) {
		orderService.deleteOrderInfo(orderId);
		return "Revocation of success";
		
	}
	
	@RequestMapping("/upload")
	public @ResponseBody String fileUploadHandler(MultipartFile photo, HttpSession session) throws Exception{
		if (photo.isEmpty()) {
			return "null";
		}
		// 获取到上传文件的原始文件名
		String fileName = photo.getOriginalFilename();
		if(!(fileName.endsWith("jpg") || fileName.endsWith("png"))) {
			return "errry";
		}
		
		// 指定文件上传到服务端的路径
		 String path = "c:/loanfile/";
		File file = new File(path, System.currentTimeMillis() + fileName);
		// 完成文件上传
		photo.transferTo(file);
		return "ok";
	}
	
	
}
