	package com.third.autoloan.ordermag.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.beans.ItemBean;
import com.third.autoloan.beans.OpinionBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.carmag.service.ICarGetService;
import com.third.autoloan.clientmag.service.IClientGetService;
import com.third.autoloan.creditInfomag.service.ICreditService;
import com.third.autoloan.opinionmag.service.IOpinionGetService;
import com.third.autoloan.opinionmag.service.IOpinionService;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/branchCompany")
@Controller
public class branchCompanyCheckController {
	
	//如果不加会报错
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService orderGetServiceImpl;
	@Resource
	private IOrderService orderServiceImpl;
	@Resource
	private ICarGetService carGetServiceImpl;
	@Resource
	private IClientGetService clientGetServiceImpl;
	@Resource
	private IOpinionGetService opinionGetServiceImpl;
	@Resource
	private IOpinionService opinionServiceImpl;
	@Resource(name="creditServiceImpl")
	private ICreditService creditServiceImpl;
	private Logger log=Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/page")
	public @ResponseBody PageBean getBranchCompanyDate(@RequestParam Map<String,String> map) {
		 System.out.println("map="+map);
		 
		 PageBean page=null;
		/* System.out.println("map="+map);
	     Map<String,String> map1=new HashMap<String,String>();
	     map1.put("index", map.get("page"));
	     map1.put("pageSize", map.get("rows"));*/
		 map.put("contractNumber", map.get("queryParams[contratorNum]"));
		 map.put("loanName", map.get("queryParams[borrower]"));
		 map.put("companyName", map.get("queryParams[loanStatus]"));
		 page=orderGetServiceImpl.getOrderPageByMap(map);
	     System.out.println("pageBean="+page);
	 
	   return page;
	}
	
	
	@RequestMapping(value="/detailInfo")
	public ModelAndView getBranchCompanyInfo(Long id) {
		Long id_1=id+1;
		System.out.println("===================id="+id_1);
		OrderBean order=orderServiceImpl.getOrderById(id_1);
		System.out.println("order="+order);
		 List<CarInfoBean> list=carGetServiceImpl.getCarInfoByOrderId(id_1);
		 Set<ItemBean> item=null;
		 for (CarInfoBean carInfoBean : list) {
			 item=carInfoBean.getItemList();
		}
		 
		 System.out.println("item="+item);
		 System.out.println("id_1="+id_1);
		 ClientBean orderClient=clientGetServiceImpl.getClientInfoByOrderId(id);
		 System.out.println("orderClient="+orderClient);
		ModelAndView mv=new ModelAndView();
		mv.addObject("order", order);
		mv.addObject("item", item);
		mv.addObject("list", list);
		mv.addObject("orderClient", orderClient);
		mv.setViewName("jsp/CarLoan/branchOffice/ziliao");
		return mv;
	}
	
	/*@RequestMapping(value="/checkupCredit",produces="application/json;charset=utf-8")
	public @ResponseBody PageBean checkUpOrderInfo(@RequestBody String str) {
		
		String contratorNum=null;
		String  borrower=null;
		String loanStatus=null;
	    String[] i=str.split("&");
	    
	   for(int j=0;j<i.length;j++) {
		   if(j==0) {
			   contratorNum=i[j].split("=")[1];  
		   }
		   if(j==1) {
			   borrower=i[j].split("=")[1];  
		   }
		   if(j==2) {
			   loanStatus=i[j].split("=")[1];  
		   }
	   }
		   
	  System.out.println("contratorNum="+contratorNum+",borrower="+borrower+",loanStatus="+loanStatus);
	  Map<String,String> map=new HashMap<String,String>();
	  map.put("contractNumber", "21313");
	  map.put("loanName", borrower);
	  //这个是分公司名
	  map.put("companyName", "1244");
	  map.put("page", 1+"");
	  map.put("rows", 10+"");
	  PageBean list=orderGetServiceImpl.getOrderPageByMap(map);
		
		return list;
		
	}*/
	
	@RequestMapping(value="/backchuchaxun")
    public ModelAndView submitInfo(String productType,String loanTime,String conclusion,
    		String branchOpinion,String loanAmount,String hasHouse,String hasHouseLoan,
    		String hasCar,String hasCarLoan,String maxOverdueMonth,String maxOverdueNum,
    		String creditUsageRate,String enquiriesNumber,String hasOtheLoan,String hasCreditCard,String id) {
    	
		OrderBean order=new OrderBean();
		OpinionBean opinion=new OpinionBean();
    	opinion.setBranchOpinion(branchOpinion);
    	opinion.setConclusion(conclusion);
    	
    	if(!"undefined".equals(loanAmount)) {
    		opinion.setLoanAmount(Double.parseDouble(loanAmount));
    	}
	    order.setOpinion(opinion);
	    CreditInfoBean credit=new CreditInfoBean();
	    if(!"undefined".equals(creditUsageRate)) {
	    	credit.setCreditUsageRate(Integer.parseInt(creditUsageRate));
	    }
	    if(!"undefined".equals(enquiriesNumber)) {
	    	credit.setEnquiriesNumber(Integer.parseInt(enquiriesNumber));	
	    }
	    if(!"undefined".equals(hasCar)) {
	    	credit.setHasCar(Boolean.getBoolean(hasCar));
	    }
	    if(!"undefined".equals(hasCarLoan)) {
	    	 credit.setHasCarLoan(Boolean.getBoolean(hasCarLoan));
	    }
	    if(!"undefined".equals(hasCreditCard)) {
	    	credit.setHasCreditCard(Boolean.getBoolean(hasCreditCard));
	    }
	    if(!"undefined".equals(hasHouse)) {
	    	credit.setHasHouse(Boolean.getBoolean(hasHouse));	
	    }
	    if(!"undefined".equals(hasHouseLoan)) {
	    	credit.setHasHouseLoan(Boolean.getBoolean(hasHouseLoan));
	    }
	    if(!"undefined".equals(hasOtheLoan)) {
	    	credit.setHasOtheLoan(Boolean.getBoolean(hasOtheLoan));
	    }
	    if(maxOverdueMonth!=null) {
	    	credit.setMaxOverdueMonth(Integer.parseInt(maxOverdueMonth));
	    }
	    if(maxOverdueMonth!=null) {
	    	credit.setMaxOverdueNum(Integer.parseInt(maxOverdueNum));
	    }
	    order.setCreditInfo(credit);
	    ModelAndView mv=new ModelAndView("jsp/CarLoan/branchOffice/chuchaxun");
	    order.setId(Integer.parseInt(id));
	    System.out.println("order="+order);
	    OrderBean orderBean=orderServiceImpl.getOrderById(Integer.parseInt(id));
	    /*orderServiceImpl.updateOrderInfo(orderBean);*/
	    /*CreditInfoBean creditInfo=orderBean.getCreditInfo();
	    creditServiceImpl.updeteCreditInfo(creditInfo, Long.parseLong(id));*/
	    
	   /* OpinionBean opinions=opinionGetServiceImpl.getOpinionByOrderId( Long.parseLong(id));
	    opinionServiceImpl.updateOpinionInfoById(opinions);*/
    	System.out.println(order);
		return mv;
    }
}
