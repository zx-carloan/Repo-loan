package com.third.autoloan.contractmag.controller;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.swing.filechooser.FileSystemView;

import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.DocumentEntry;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.contractmag.service.IContractGetService;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/contract")
@Controller
public class ContractController {
	
	private String bankCard_1=null;
	
	@Resource(name="orderGetServiceImpl")
	private IOrderGetService  orderServiceImpl;
	
	@Resource(name="orderServiceImpl")
	private IOrderService orderService;
	@Resource
	private IContractGetService contractGetServiceImpl;
	
	
	
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
		System.out.println(order);
		return order;
	}
	
	@RequestMapping(value="/signInfoSubmit")
	public ModelAndView submitSignInfo(String id,String amount,String bank,String bankBranch,String payDate,String bankAccount) {
		ModelAndView mv=new ModelAndView();
		try {
			String amount_1 = new String(amount.getBytes("utf-8"),"utf-8");
			String bank_1=new String(bank.getBytes("utf-8"),"utf-8");
			String bankBranch_1=new String(bankBranch.getBytes("utf-8"),"utf-8");
			String payDate_1=new String(payDate.getBytes("utf-8"),"utf-8");
			String bankAccount_1=new String(bankAccount.getBytes("utf-8"),"utf-8");
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("id", id);
			map.put("amount", amount_1);
			map.put("bank", bank_1);
			map.put("bankBranch", bankBranch_1);
			map.put("payDate", payDate_1);
			map.put("bankAccount", bankAccount_1);
			contractGetServiceImpl.updateContractorInfo(map);
			System.out.println("id="+id+",amount="+amount_1+",bank="+bank_1+",bankBranch="+bankBranch_1+",payDate="+payDate_1+",bankAccount="+bankAccount_1);
			
			mv.setViewName("jsp/CarLoan/signList/sign");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return mv;
	}
	
	@RequestMapping(value="/cancelOrder")
	public ModelAndView cancelOrder(Long id) {
		orderService.deleteOrderInfo(id);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("jsp/CarLoan/signList/sign");
		return mv;
	}
	
	 @RequestMapping(value="/returnAdvice")
	    public ModelAndView returnAdvice_1(String advice,long id) {
		 System.out.println("211241");
	    	ModelAndView mv=new ModelAndView();
	    	mv.addObject("advice", advice);
	    	Map<String,Object> map=new HashMap<String,Object>();
	    	map.put("returnAdvice", advice);
	    	map.put("id", id);
	    	System.out.println("returnInfo="+map);
	    	orderService.getReturnOpinion(map);
	    	mv.setViewName("jsp/CarLoan/signList/sign");
			return mv;
	    }
	
	@RequestMapping(value="/exportWord")
	@ResponseBody
	public Integer exportdisposetable(String id,String html,String fileName) {
		
		ContractController cc=new ContractController();
		try {
			System.out.println("------------------------------------");
			cc.createOutWord(id, html, fileName);
			return 1;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	public void createOutWord(String descode,String html,String fileName) throws IOException{
		fileName="demo.doc";
		File desktopDir=FileSystemView.getFileSystemView().getHomeDirectory();
		String desktopPath=desktopDir.getAbsolutePath();//得到桌面路径
		System.out.println("-----------------------------");
		try {
			if(!"".equals(desktopPath)) {
				System.out.println("------------------------------");
				//检查目录是否存在
				File fileDir= new File(desktopPath);
				if(fileDir.exists()) {
					//生成临时文件名称
					System.out.println("--------------------------------");
					String content="<html>"+html+"</html>";//一个完整的html
					byte b[]=content.getBytes();
					ByteArrayInputStream bais=new ByteArrayInputStream(b);
					POIFSFileSystem poifs=new POIFSFileSystem();
					DirectoryEntry directory=poifs.getRoot();
					//把html的内容转换为word格式
					DocumentEntry documentEntry=directory.createDocument("WordDocument", bais);
					System.out.println("路径"+desktopPath+"\\"+fileName+"_"+descode+".doc");
					FileOutputStream outputStream=new FileOutputStream(desktopPath+"\\"+fileName+"_"+descode+".doc");
					poifs.writeFilesystem(outputStream);
					bais.close();
					outputStream.close();
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/uploadBankCard", method = { RequestMethod.POST })
	public void uploadCarAsseceForm(@RequestParam("uploadBankCard")CommonsMultipartFile uploadBankCard) {
		String path = "c://files";//文件保存路径
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdir();
		}
		//保存抵押车辆评估表
		if(uploadBankCard!=null||uploadBankCard.getOriginalFilename().equals("")) {
			try {
				String carAsseceFormStr = uploadBankCard.getOriginalFilename();
				String path1 = path + File.separator + carAsseceFormStr;
				uploadBankCard.getFileItem().write(new File(path1));//这句话，根据文件名路径 ，创建一个空的文件，并且向该文件写入临时文件的内容
				bankCard_1 = path1;
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		//System.out.println(car);
	}
	
}
