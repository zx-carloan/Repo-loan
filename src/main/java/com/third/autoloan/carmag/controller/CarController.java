package com.third.autoloan.carmag.controller;

import java.io.File;
import java.text.ParseException;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
import com.third.autoloan.carmag.service.ICarGetService;
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
	private ICarGetService carGetServiceImpl;
	@Resource
	private IOrderGetService orderGetServiceImpl;
	@Resource
	private IOrderService orderServiceImpl;
	//通过页面传来的id查询订单信息
	@RequestMapping(value="/{id}",method= {RequestMethod.GET})
	public ModelAndView getOrderById(@PathVariable("id")Long id) {
		//System.out.println("id是"+id);
		List<CarInfoBean> carList = carGetServiceImpl.getCarInfoByOrderId(id);
		
		OrderBean order = orderServiceImpl.getOrderById(id);
		order.setReturnOpinion("车辆信息请重新录入");
		//List<CarInfoBean> carList = order.getCarList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("order", order);
		mv.addObject("userPower", "估价师");//将评估师角色存入mv对象中
		Map<String,Object> map = mv.getModel();
		String userPower = (String) map.get("userPower");
		System.out.println("userPower是"+userPower);
		if(carList.size()!=0) {
			System.out.println("查到的车辆信息是"+carList.get(0));
			try {
				Date newDateFormat = DateUtils.shortStr2Date(DateUtils.date2ShortString(carList.get(0).getRegisterDate()));
				System.out.println("newDateFormat"+newDateFormat);
				carList.get(0).setRegisterDate(newDateFormat);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			mv.addObject("car", carList.get(0));
		}
		//System.out.println(order.getCarList());
		//查出order对象后将其存入MV对象中
		//根据角色权限跳转对应的页面
		if(userPower.equals("评估师")) {
			mv.setViewName("jsp/CarLoan/loanInput/valuer");
		}else if(userPower.equals("估价师")) {
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
		List<ItemBean> itemList = null;
		for(int i=0; i < 10; i++) {
			sName = new StringBuilder("item");
			sNumber = new StringBuilder("number");
			sName.append(i);
			sNumber.append(i);
			if(map.get(sName)!=null&&map.get(sNumber)!=null) {
				ItemBean item = new ItemBean();
				item.setName((String) map.get(sName));
				item.setNumber((int) map.get(sNumber));
				itemList.add(item);
			}
		}
		car.setItemList(itemList);
		car.setCarId((String)map.get("carId"));
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
		String path = "D://files";//文件保存路径
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
		String path = "D://files";//文件保存路径
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
		String path = "D://files";//文件保存路径
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
		String path = "D://files";//文件保存路径
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
		String path = "D://files";//文件保存路径
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
		String path = "D://files";//文件保存路径
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
		String path = "D://files";//文件保存路径
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
	
	//文件下载控制器
	@RequestMapping(value="/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request,
            @RequestParam("filename") String filename,
            Model model)throws Exception {
    	System.out.println("进入下载器"+filename);
       //下载文件路径
       String path = "D://files";//文件保存路径
       //String path = request.getServletContext().getRealPath("/images/");
       File file = new File(filename);
       HttpHeaders headers = new HttpHeaders();  
       //下载显示的文件名，解决中文名称乱码问题  
       String downloadFielName = new String(filename.getBytes("UTF-8"),"iso-8859-1");
       //通知浏览器以attachment（下载方式）打开图片
       headers.setContentDispositionFormData("attachment", downloadFielName); 
       //application/octet-stream ： 二进制流数据（最常见的文件下载）。
       headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
       return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
               headers, HttpStatus.CREATED);  
    }
    
    @RequestMapping(value = "/updatePrice", method = { RequestMethod.POST })
	public void uploadCarPrice(@RequestParam Map<String,Object> map) {
    	System.out.println("进入控制器！");
//    	System.out.println("id"+id);
//    	System.out.println("valuePrice"+valuePrice);
    	OrderBean order = orderServiceImpl.getOrderById(Long.parseLong((String)map.get("orderId")));
    	//order.setVersion(Integer.parseInt((String)map.get("version")));
    	CarInfoBean carInfo = carGetServiceImpl.getCarInfoById(Long.parseLong((String)map.get("id")));
    	carInfo.setAssessmentPrice(Double.parseDouble((String)map.get("valuePrice")));
    	carInfo.setOrder(order);
    	System.out.println(carInfo);
    	carServiceImpl.updateCarInfoBeanByMybatis(carInfo);
    }
    
    //撤销订单控制器
    @RequestMapping(value="delete/{id}",method= {RequestMethod.GET})
	public ModelAndView deleteOrderByOrder(@PathVariable("id")Long id) {
    	System.out.println("需要删除的订单id是"+id);
    	orderServiceImpl.deleteOrderInfo(id);
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("jsp/CarLoan/loanInput/loanInput");
    	return mv;
    }
    
    //提交回退意见控制器
    @RequestMapping(value="/rollback",method= {RequestMethod.POST})
    public ModelAndView submitRollBackOpinion(@RequestParam Map<String,Object> map) {
    	orderServiceImpl.getReturnOpinion(map);
    	System.out.println("进入控制器"+map);
    	return null;
    }
}
