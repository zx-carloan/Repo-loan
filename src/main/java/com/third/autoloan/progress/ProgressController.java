package com.third.autoloan.progress;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.service.IOrderGetService;

@RequestMapping("/progress")
@Controller
public class ProgressController {

	@Resource(name = "orderGetServiceImpl")
	private IOrderGetService orderGetService;
	
	// 查询全部信息
	@RequestMapping(value = "/page", method = { RequestMethod.POST })
	public @ResponseBody PageBean ListProgressPage(@RequestParam Map<String, String> map) {
//		String contractNumber = map.get("contractNumber");
//		String loanName = map.get("loanName");
//		System.out.println(contractNumber + "========" + loanName);
		PageBean bean = orderGetService.getProcedurePageBean(map);
		List<OrderBean> list = (List<OrderBean>) bean.getRows();
		System.out.println(list + "这是得到的");
		return bean;
	}
}
