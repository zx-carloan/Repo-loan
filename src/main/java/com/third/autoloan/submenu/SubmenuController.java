package com.third.autoloan.submenu;

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
import com.third.autoloan.ordermag.service.IOrderService;

@RequestMapping("/submenu")
@Controller
public class SubmenuController {

	@Resource(name = "orderGetServiceImpl")
	private IOrderGetService orderGetService;

	@Resource(name = "orderServiceImpl")
	private IOrderService orderService;

	@RequestMapping(value = "/page", method = { RequestMethod.GET})
	public @ResponseBody PageBean getSubmenuPage(@RequestParam Map<String, String> map) {
		System.out.println(map);
		PageBean bean = orderGetService.getSubmenuPage(map);
		return bean;
	}

	// 指派、修改分单人员
	@RequestMapping(value = "/submenuSave", method = { RequestMethod.POST })
	public @ResponseBody  void submenuSave(@RequestParam String name, long id) {// name审核人姓名和id当前订单
		System.out.println("");
		orderService.updateOrderInfo(name, id);
	}
 
	// 批量分单人员
	@RequestMapping(value = "/automaticSingleSave", method = { RequestMethod.GET })
	public  @ResponseBody void automaticSingleSave(String Auditlister, String Contractcontracter) {
		System.out.println(Auditlister);
		System.out.println(Contractcontracter);
		int Auditlist = Integer.parseInt(Auditlister);// 审核分单量
		int Contractcontract = Integer.parseInt(Contractcontracter);// 签约复核分单量

		List<OrderBean> list = orderGetService.getSubmenuPageToAuditor(Auditlist);
		String[] intArray = { "老王", "老蒋" };
		// 先随机产生一个下标再获取元素
		String random = "";
		for (OrderBean orderBean : list) {
			int index = (int) (Math.random() * intArray.length);
			random = intArray[index];
			System.out.println(random + "aaaaaaaaaaaa");
			this.submenuSave(random, orderBean.getId());
		}

	}
}
