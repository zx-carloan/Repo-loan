package com.third.autoloan.ordermag.controller;


import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.ContactorBean;
import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.beans.ItemBean;
import com.third.autoloan.beans.LoanHistoryBean;
import com.third.autoloan.beans.OpinionBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.carmag.service.ICarGetService;
import com.third.autoloan.clientmag.service.IClientGetService;
import com.third.autoloan.clientmag.service.IClientService;
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
	private IClientService clientServiceImpl;
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
		
		 map.put("contractNumber", map.get("queryParams[contratorNum]"));
		 map.put("loanName", map.get("queryParams[borrower]"));
		 map.put("companyName", map.get("queryParams[loanStatus]"));
		 page=orderGetServiceImpl.getOrderPageByMap(map);
	     System.out.println("pageBean="+page);
	 
	   return page;
	}
	@RequestMapping(value="/cancelOrder")
	public ModelAndView cancelOrder(Long id) {
		orderServiceImpl.deleteOrderInfo(id);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("jsp/CarLoan/branchOffice/chuchaxun");
		return mv;
	}
	@RequestMapping(value="/detailInfo")
	public ModelAndView getBranchCompanyInfo(Long id) {
		Long id_1=id;
		System.out.println("===================id="+id_1);
		OrderBean order=orderServiceImpl.getOrderById(id_1);
		System.out.println("order="+order);
		 List<CarInfoBean> list=carGetServiceImpl.getCarInfoByOrderId(id_1);
		 
		 List<ItemBean> item=null;
		 for (CarInfoBean carInfoBean : list) {
			 item=carInfoBean.getItemList();
			 System.out.println(carInfoBean.getId());
		}
		 
		 System.out.println("item="+item);
		 System.out.println("id_1="+id_1);
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
		mv.setViewName("jsp/CarLoan/branchOffice/ziliao");
		return mv;
	}
	
	
	
	@RequestMapping(value="/backchuchaxun")
    public ModelAndView submitInfo(String productType,String loanTime,String conclusion,
    		String branchOpinion,String loanAmount,String hasHouse,String hasHouseLoan,
    		String hasCar,String hasCarLoan,String maxOverdueMonth,String maxOverdueNum,
    		String creditUsageRate,String enquiriesNumber,String hasOtheLoan,String hasCreditCard,String id) {
    	
		Map<String,Object> map=new HashMap<String,Object>();
		OrderBean order=new OrderBean();
		OpinionBean opinion=new OpinionBean();
    	
    	map.put("branchOpinion", branchOpinion);
    	
    	map.put("conclusion", conclusion);
    	
    	if(!"undefined".equals(loanAmount)) {
    		
    		map.put("loanAmount", loanAmount);
    	}

	    CreditInfoBean credit=new CreditInfoBean();
	    if(!"undefined".equals(creditUsageRate)) {
	    
	    	map.put("creditUsageRate", creditUsageRate);
	    }
	    if(!"undefined".equals(enquiriesNumber)) {
	    	
	    	map.put("enquiriesNumber", enquiriesNumber);
	    }
	    if(!"undefined".equals(hasCar)) {

	    	map.put("hasCar", hasCar);
	    }
	    if(!"undefined".equals(hasCarLoan)) {
	  
	    	map.put("hasCarLoan", hasCarLoan);
	    }
	    if(!"undefined".equals(hasCreditCard)) {
	    	
	    	map.put("hasCreditCard", hasCreditCard);
	    }
	    if(!"undefined".equals(hasHouse)) {
	 
	    	map.put("hasHouse", hasHouse);
	    }
	    if(!"undefined".equals(hasHouseLoan)) {
	   
	    	map.put("hasHouseLoan", hasHouseLoan);
	    }
	    if(!"undefined".equals(hasOtheLoan)) {
	    	
	    	map.put("hasOtheLoan", hasOtheLoan);
	    }
	    if(maxOverdueMonth!=null) {
	   
	    	map.put("maxOverdueMonth", maxOverdueMonth);
	    }
	    if(maxOverdueNum!=null) {
	 
	    	map.put("maxOverdueNum", maxOverdueNum);
	    }
	
	    ModelAndView mv=new ModelAndView("jsp/CarLoan/branchOffice/chuchaxun");

	    map.put("id", id);
	    /*System.out.println("order="+order);*/
	   /* OrderBean orderBean=orderServiceImpl.getOrderById(Integer.parseInt(id));*/
	    /*orderServiceImpl.updateOrderInfo(orderBean);*/
	    /*CreditInfoBean creditInfo=orderBean.getCreditInfo();
	    creditServiceImpl.updeteCreditInfo(creditInfo, Long.parseLong(id));*/
	    
	   /* OpinionBean opinions=opinionGetServiceImpl.getOpinionByOrderId( Long.parseLong(id));
	    opinionServiceImpl.updateOpinionInfoById(opinions);*/
	    System.out.println(map);
	    orderServiceImpl.updateOrderInfo(map);
    	
		return mv;
    }
	
	
	//文件下载控制器
		@RequestMapping(value="/download")
	    public ResponseEntity<byte[]> download(HttpServletRequest request,
	            @RequestParam("filename") String filename,
	            Model model)throws Exception {
	    	System.out.println("进入下载器"+filename);
	       //下载文件路径
	       String path = "c://files";//文件保存路径
	       //String path = request.getServletContext().getRealPath("/images/");
	       File file = new File("c://files/"+filename);
	       HttpHeaders headers = new HttpHeaders();  
	       //下载显示的文件名，解决中文名称乱码问题  
	       String downloadFielName = new String(filename.getBytes("UTF-8"),"utf-8");
	       //通知浏览器以attachment（下载方式）打开图片
	       headers.setContentDispositionFormData("attachment", downloadFielName); 
	       //application/octet-stream ： 二进制流数据（最常见的文件下载）。
	       headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	       return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
	               headers, HttpStatus.CREATED);  
	    }
	    
	    @RequestMapping(value="/returnAdviceToClient")
	    public ModelAndView returnAdvice(String advice,long id) {
	    	ModelAndView mv=new ModelAndView();
	    	mv.addObject("advice", advice);
	    	Map<String,Object> map=new HashMap<String,Object>();
	    	map.put("returnAdvice", advice);
	    	map.put("id", id);
	    	System.out.println(map);
	    	orderServiceImpl.getReturnOpinion(map);
	    	mv.setViewName("jsp/CarLoan/CustomerInformation/CustomerInformation");
			return mv;
	    }
	    
	    @RequestMapping(value="/returnAdviceToVehicle")
	    public ModelAndView returnAdvice_1(String advice,long id) {
	    	ModelAndView mv=new ModelAndView();
	    	mv.addObject("advice", advice);
	    	Map<String,Object> map=new HashMap<String,Object>();
	    	map.put("returnAdvice", advice);
	    	map.put("id", id);
	    	System.out.println("returnInfo="+map);
	    	orderServiceImpl.getReturnOpinion(map);
	    	mv.setViewName("jsp/CarLoan/loanInput/valuer");
			return mv;
	    }

}
