package com.third.autoloan.progress.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;
import com.third.autoloan.progress.service.IProgressGetService;
import com.third.autoloan.progress.service.IProgressService;
import com.third.autoloan.progress.service.impl.ProgressGetServiceImpl;

@RequestMapping("/progress")
@Controller
public class ProgressController {

	@Resource(name = "progressGetServiceImpl")
	private IProgressGetService progressGetServiceImpl;

	@Resource(name = "progressServiceImpl")
	private IProgressService progressService;

	// 查询全部信息
	@RequestMapping(value = "/page", method = { RequestMethod.POST })
	public @ResponseBody PageBean ListProgressPage(@RequestParam Map<String, String> map) {
		map.put("page", "1");
		map.put("rows", "5");
		String contractNumber = map.get("contractNumber");
		String loanName = map.get("loanName");
		System.out.println(contractNumber + "========" + loanName);
		PageBean bean = progressGetServiceImpl.getProcedurePageBean(map);
		List<OrderBean> list = (List<OrderBean>) bean.getRows();
		System.out.println(list + "这是得到的进度表");
		return bean;
	}

	// 订单信息查询
	@RequestMapping(value = "/findOrderBean", method = { RequestMethod.POST })
	public String FindOrderBeanById(long id, ModelMap model) {
		System.out.println("进来了" + id);
		ClientBean bean = progressGetServiceImpl.getClientInfoByOrderId(id);

		model.addAttribute("ClientBean",bean);

		return "jsp/customService/progressQuery/progressQuery";
	}
}
