package com.third.autoloan.fuhecontroller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/fuhe")
@Controller
public class FuHeController {

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
	
	/**
	 * 
	 * @param map 订单的id 
	 * @return
	 */
	@RequestMapping("/signInfo")
	public @ResponseBody OrderBean signInfo(Long  orderId) {
		OrderBean order=orderService.getOrderById(orderId);
		System.out.println(order);
		return order;
	}
	
	
}
