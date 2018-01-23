package com.third.autoloan.fuhecontroller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		return "撤销成功！";
		
	}
	

//根据订单ID查询订单详细信息	
	@RequestMapping("/info")
	public  ModelAndView orderInfo(Long id) {
		
		System.out.println("id是这个************"+id);
		
		OrderBean order=orderService.getOrderById(id);
		
		System.out.println("order是："+order);
		
		ModelAndView mv=new ModelAndView();
		mv.addObject(order);
		mv.setViewName("jsp/TrustManagement/contractReview/ToReview");
		return mv;
	}
}