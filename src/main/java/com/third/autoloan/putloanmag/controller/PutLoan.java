package com.third.autoloan.putloanmag.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.ContactorBean;
import com.third.autoloan.beans.ItemBean;
import com.third.autoloan.beans.LoanHistoryBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.carmag.service.ICarGetService;
import com.third.autoloan.ordermag.service.IOrderService;
import com.third.autoloan.putloanmag.service.IPutLoanGetService;

@RequestMapping(value="/putLoans")
@Controller
public class PutLoan {
	
	@Resource(name="PutLoanGetServiceImpl")
	private IPutLoanGetService  putLoanGetService;
	
	@Resource
	private IOrderService orderServiceImpl;
	
	@Resource
	private ICarGetService carGetServiceImpl;
	
	@RequestMapping(value="/page")
	
	public @ResponseBody PageBean findOrder(@RequestParam Map<String,String> map) {	
		System.out.println(map);
		PageBean page=	putLoanGetService.getLoanPage(map);
		return page;
	}
	public@ResponseBody String getMoney(Long orderId) {
		return null;
		
	} 
	/**
	 * 查询订单
	 */
	@RequestMapping(value="/detailInfo")
	public ModelAndView getBranchCompanyInfo(Long id) {
		Long id_1=id;
		OrderBean order=orderServiceImpl.getOrderById(id_1);
		 List<CarInfoBean> list=carGetServiceImpl.getCarInfoByOrderId(id_1);
		 
		 List<ItemBean> item=null;
		 for (CarInfoBean carInfoBean : list) {
			 item=carInfoBean.getItemList();
			 System.out.println(carInfoBean.getId());
		}
		 
		//得到联系人信息
		ClientBean client=orderServiceImpl.getContactorInfo(order.getClient().getId());
		Set<ContactorBean> Contactor=client.getContactorList();
		//得到借款历史信息
		LoanHistoryBean loanHistory=orderServiceImpl.getLoanHistoryInfo(order.getIdentity().getId());
		System.out.println("identityBean="+order.getIdentity().getId()+",loanHistory="+loanHistory);
		ModelAndView mv=new ModelAndView();
		mv.addObject("order", order);
		mv.addObject("item", item);
		mv.addObject("list", list);
		mv.addObject("Conta ctor", Contactor);
		mv.addObject("loanHistory", loanHistory);
		mv.setViewName("jsp/TrustManagement/loan/vehicleInfo");
		return mv;
	}
	
	
	
}
