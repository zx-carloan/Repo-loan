package com.third.autoloan.contractmag.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/contract")
@Controller
public class ContractController {
	
	
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService  orderServiceImpl;
	
	@Resource(name="orderServiceImpl")
	private IOrderService orderService;
	
	
	//查询操作
	@RequestMapping("/query" )
	public @ResponseBody PageBean getContractByQueryParams(@RequestParam Map<String,String> map) {
		 PageBean page=orderServiceImpl.getOrderPageByMap(map);
		 System.out.println(map);
	   return page;
		
	}
	//撤销操作
	@RequestMapping("/delect" )
	public @ResponseBody String deleteOrderInfoById (Long orderId) {
		orderService.deleteOrderInfo(orderId);
		return "Revocation of success";
		
	}
	
	//订单信息上传
	@RequestMapping("/upload")
	public @ResponseBody String fileUploadHandler(MultipartFile photo) {
		if (photo.isEmpty()) {
			return "null";
		}
		// 获取到上传文件的原始文件名
		String fileName = photo.getOriginalFilename();
		// 指定文件上传到服务端的路径
		 String path = "c:/loanfile/";
		File file = new File(path, System.currentTimeMillis() + fileName);
		// 完成文件上传
		try {
			photo.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "ok";
	}
	/**
	 * 
	 * @param map 订单的id 
	 * @return
	 */
	@RequestMapping("/signInfo")
	public @ResponseBody OrderBean signInfo(Long  orderId) {
		OrderBean order=orderService.getOrderById(orderId);
		System.out.println(order.getClient().getIdentity());
		return order;
	}
}
