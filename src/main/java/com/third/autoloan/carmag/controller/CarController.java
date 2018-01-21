package com.third.autoloan.carmag.controller;

import java.io.File;
import java.text.ParseException;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ItemBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.carmag.service.ICarService;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;
import com.third.autoloan.util.DateUtils;

@RequestMapping("/carInfo")
@RestController
public class CarController {

	private String carAsseceForm1 = null;
	private String carPic1 = null;
	private String carRegisterForm1 = null;
	private String drivingLisense1 = null;
	private String sali1 = null;
	private String commerceinsurance1 = null;
	private String otherAttachment1 = null;
	private CarInfoBean car = new CarInfoBean();
	@Resource
	private ICarService carServiceImpl;
	@Resource
	private IOrderGetService orderGetServiceImpl;
	@Resource
	private IOrderService orderServiceImpl;
	//通过页面传来的id查询订单信息
	@RequestMapping(value="/{id}",method= {RequestMethod.GET})
	public ModelAndView getOrderById(@PathVariable("id")Integer id) {
		//System.out.println("id是"+id);
		OrderBean order = orderServiceImpl.getOrderById(id);
		order.setReturnOpinion("车辆信息请重新录入");
		List<CarInfoBean> carList = order.getCarList();
		System.out.println(order);
		//查出order对象后将其存入MV对象中
		ModelAndView mv = new ModelAndView();
		mv.addObject("order", order);
		mv.addObject("userPower", "评估师");//将评估师角色存入mv对象中
		Map<String,Object> map = mv.getModel();
		String userPower = (String) map.get("userPower");
		System.out.println("userPower是"+userPower);
		//根据角色权限跳转对应的页面
		if(userPower.equals("评估师")) {
			mv.setViewName("jsp/CarLoan/loanInput/valuer");
		}else if(userPower.equals("估价师")) {
			mv.addObject("car", carList.get(0));
			mv.setViewName("jsp/CarLoan/loanInput/priced");
		}
		return mv;
	}
	
	@RequestMapping(value="/allData")
	public @ResponseBody PageBean getUsersByQueryParams(@RequestParam Map<String,String> map) {
		//System.out.println("map是"+map);
		/*Map<String,String> map1 = new HashMap<String,String>();
		map1.put("pageNumber", map.get("page"));
		map1.put("pageSize", map.get("rows"));*/
		
		map.put("contractNumber", map.get("queryParams[contractNum]"));
		map.put("loanName",map.get("queryParams[borrower]"));
		map.put("companyName",map.get("queryParams[company]"));
		System.out.println(map);
		PageBean pageBean = orderGetServiceImpl.getOrderPageByMap(map);
		//System.out.println(pageBean.getRows().get(0));
		return pageBean;
	}
	
	
	
	//通过页面传来的id查询订单信息，将表单中的参数封装到CarInfoBean中，再将carInfoBean存入OrderBean中
	@RequestMapping(value = "/{id}", method = { RequestMethod.POST })
	public ModelAndView getOrderById(@PathVariable("id") Integer id, @RequestParam Map<String,Object> map) throws ParseException {
		
		//CarInfoBean car = new CarInfoBean();
		
		//根据页面传输的id得到订单对象
		OrderBean order = orderServiceImpl.getOrderById(id);
		//System.out.println("首先得到的order是"+order);
		//首先封装物品对象存入车辆对象中
		StringBuilder sName = null;
		StringBuilder sNumber = null;
		Set<ItemBean> itemSet = null;
		for(int i=0; i < 10; i++) {
			sName = new StringBuilder("item");
			sNumber = new StringBuilder("number");
			sName.append(i);
			sNumber.append(i);
			if(map.get(sName)!=null&&map.get(sNumber)!=null) {
				ItemBean item = new ItemBean();
				item.setName((String) map.get(sName));
				item.setNumber((int) map.get(sNumber));
				itemSet.add(item);
			}
		}
		car.setItemList(itemSet);
		car.setAnnualInspection(Integer.parseInt((String)map.get("annualInspection")));
		car.setBrand((String) map.get("brand"));
		car.setCarAsseceForm((String) map.get("carAsseceForm"));
		car.setCarPic((String) map.get("carPic"));
		car.setCarRegisterForm((String) map.get("carRegisterForm"));
		car.setColor((String) map.get("color"));
		car.setCommerceinsurance((String) map.get("commerceinsurance"));
		car.setDrivingLisense((String) map.get("drivingLisense"));
		car.setEngineId((String) map.get("engineId"));
		car.setGetAfford(Integer.parseInt((String)map.get("getAfford")));
		car.setGetDrivingLicense(Integer.parseInt((String)map.get("getDrivingLicense")));
		car.setGetID(Integer.parseInt((String)map.get("getID")));
		car.setGetImportCertificate(Integer.parseInt((String)map.get("getImportCertificate")));
		car.setGetInsurance(Integer.parseInt((String)map.get("getInsurance")));//Integer.parseInt((String)map.get(""))
		car.setGetKey(Integer.parseInt((String)map.get("getKey")));
		car.setGetOriginalInvoice(Integer.parseInt((String)map.get("getOriginalInvoice")));
		car.setGetRegisterLicense(Integer.parseInt((String)map.get("getRegisterLicense")));
		car.setGetSali(Integer.parseInt((String)map.get("getSali")));
		car.setGetTaxCertificate(Integer.parseInt((String)map.get("getTaxCertificate")));
		car.setKeyNumber(Integer.parseInt((String)map.get("keyNumber")));
		car.setOtherAttachment((String) map.get("otherAttachment"));
		car.setRegisterDate(DateUtils.shortStr2Date((String)map.get("registerDate")));
		car.setSali((String) map.get("sali"));
		car.setVin((String) map.get("vin"));
		car.setXkm(Integer.parseInt((String)map.get("xkm")));
		car.setCarAsseceForm(carAsseceForm1);
		car.setCarPic(carPic1);
		car.setCarRegisterForm(carRegisterForm1);
		car.setDrivingLisense(drivingLisense1);
		car.setSali(sali1);
		car.setCommerceinsurance(commerceinsurance1);
		car.setOtherAttachment(otherAttachment1);
		/*Set<CarInfoBean> catList = new HashSet<CarInfoBean>(); 
		catList.add(car);
		order.setCarList(catList);*/
		System.out.println("carr是"+car);
		car.setOrder(order);
		carServiceImpl.addCarInfoByMybatis(car);
		//carServiceImpl.addCarInfo(car);
		//orderServiceImpl.updateOrderInfo(order);
		//保存完车辆信息后，跳转到主页面
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/CarLoan/loanInput/loanInput");
		return mv;
	}

	@RequestMapping(value = "/carAsseceForm", method = { RequestMethod.POST })
	public void uploadCarAsseceForm(@RequestParam("carAsseceForm")CommonsMultipartFile carAsseceForm) {
		String path = "C://carloan";//文件保存路径
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdir();
		}
		//保存抵押车辆评估表
		if(carAsseceForm!=null||carAsseceForm.getOriginalFilename().equals("")) {
			try {
				String carAsseceFormStr = carAsseceForm.getOriginalFilename();
				String path1 = path + File.separator + carAsseceFormStr;
				carAsseceForm.getFileItem().write(new File(path1));//这句话，根据文件名路径 ，创建一个空的文件，并且向该文件写入临时文件的内容
				carAsseceForm1 = path1;
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		//System.out.println(car);
	}
	
	
	@RequestMapping(value = "/carPic", method = { RequestMethod.POST })
	public void uploadCarPic(@RequestParam("carPic")CommonsMultipartFile carPic) {
		String path = "C://carloan";//文件保存路径
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdir();
		}
		//保存抵押车辆评估表
		if(carPic!=null||carPic.getOriginalFilename().equals("")) {
			try {
				String carPicStr = carPic.getOriginalFilename();
				String path1 = path + File.separator + carPicStr;
				carPic.getFileItem().write(new File(path1));//这句话，根据文件名路径 ，创建一个空的文件，并且向该文件写入临时文件的内容
				carPic1 = path1;
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value = "/carRegisterForm", method = { RequestMethod.POST })
	public void uploadCarRegisterForm(@RequestParam("carRegisterForm") CommonsMultipartFile carRegisterForm) {
		String path = "C://carloan";//文件保存路径
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdir();
		}
		//保存抵押车辆评估表
		if(carRegisterForm!=null||carRegisterForm.getOriginalFilename().equals("")) {
			try {
				String carPicStr = carRegisterForm.getOriginalFilename();
				String path1 = path + File.separator + carPicStr;
				carRegisterForm.getFileItem().write(new File(path1));//这句话，根据文件名路径 ，创建一个空的文件，并且向该文件写入临时文件的内容
				carRegisterForm1 = path1;
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value = "/drivingLisense", method = { RequestMethod.POST })
	public void uploadDrivingLisense(@RequestParam("drivingLisense")CommonsMultipartFile drivingLisense) {
		String path = "C://carloan";//文件保存路径
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdir();
		}
		//保存抵押车辆评估表
		if(drivingLisense!=null||drivingLisense.getOriginalFilename().equals("")) {
			try {
				String carPicStr = drivingLisense.getOriginalFilename();
				String path1 = path + File.separator + carPicStr;
				drivingLisense.getFileItem().write(new File(path1));//这句话，根据文件名路径 ，创建一个空的文件，并且向该文件写入临时文件的内容
				drivingLisense1 = path1;
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value = "/sali", method = { RequestMethod.POST })
	public void uploadSali(@RequestParam("sali")CommonsMultipartFile sali) {
		String path = "C://carloan";//文件保存路径
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdir();
		}
		//保存抵押车辆评估表
		if(sali!=null||sali.getOriginalFilename().equals("")) {
			try {
				String carPicStr = sali.getOriginalFilename();
				String path1 = path + File.separator + carPicStr;
				sali.getFileItem().write(new File(path1));//这句话，根据文件名路径 ，创建一个空的文件，并且向该文件写入临时文件的内容
				sali1 = path1;
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value = "/commerceinsurance", method = { RequestMethod.POST })
	public void uploadCommerceinsurance(@RequestParam("commerceinsurance")CommonsMultipartFile commerceinsurance) {
		String path = "C://carloan";//文件保存路径
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdir();
		}
		//保存抵押车辆评估表
		if(commerceinsurance!=null||commerceinsurance.getOriginalFilename().equals("")) {
			try {
				String carPicStr = commerceinsurance.getOriginalFilename();
				String path1 = path + File.separator + carPicStr;
				commerceinsurance.getFileItem().write(new File(path1));//这句话，根据文件名路径 ，创建一个空的文件，并且向该文件写入临时文件的内容
				commerceinsurance1 = path1;
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value = "/otherAttachment", method = { RequestMethod.POST })
	public void uploadOtherAttachment(@RequestParam("otherAttachment")CommonsMultipartFile otherAttachment) {
		String path = "C://carloan";//文件保存路径
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdir();
		}
		//保存抵押车辆评估表
		if(otherAttachment!=null||otherAttachment.getOriginalFilename().equals("")) {
			try {
				String carPicStr = otherAttachment.getOriginalFilename();
				String path1 = path + File.separator + carPicStr;
				otherAttachment.getFileItem().write(new File(path1));//这句话，根据文件名路径 ，创建一个空的文件，并且向该文件写入临时文件的内容
				otherAttachment1 = path1;
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
