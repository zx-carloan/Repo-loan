package com.third.autoloan.submenu;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.ComboboxData;
import com.third.autoloan.beans.CompanyBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.beans.UserBean;
import com.third.autoloan.submenu.service.ISubmenuService;

@RequestMapping("/submenu")
@Controller
public class SubmenuController {

	@Resource
	private ISubmenuService submenuSercvice;

	
	@RequestMapping(value = "/page", method = { RequestMethod.GET})
	public @ResponseBody PageBean getSubmenuPage(@RequestParam Map<String, String> map) {
		System.out.println(map);
		PageBean bean = submenuSercvice.getSubmenuPage(map);
		return bean;
	}

	// 指派、修改分单人员
	@RequestMapping(value = "/submenuSave", method = { RequestMethod.POST })
	public @ResponseBody  void submenuSave(@RequestParam String name, long id) {// name审核人姓名和id当前订单
		submenuSercvice.updateOrderInfo(name, id);
	}
 
	// 批量分单人员
	@RequestMapping(value = "/automaticSingleSave", method = { RequestMethod.GET })
	public  @ResponseBody void automaticSingleSave(Integer auditlister, Integer contractcontracter) {
	
		List<OrderBean> list = submenuSercvice.getSubmenuPageToAuditor(auditlister);
		String[] intArray = { "老王", "老蒋" };
		// 先随机产生一个下标再获取元素
		String random = "";
		for (OrderBean orderBean : list) {
			int index = (int) (Math.random() * intArray.length);
			random = intArray[index];
			this.submenuSave(random, orderBean.getId());
		}

	}
	
	@RequestMapping(value="/getSubmenuName",method= {RequestMethod.GET})
	public @ResponseBody List<ComboboxData> listCompanyName(Integer submenuStatus) {
		StringBuilder  submenu = new  StringBuilder();
		if(submenuStatus==0) {
			submenu.append("总公司");
		}else {
			submenu.append("签约");
		}
		List<ComboboxData>	 datas = new ArrayList<ComboboxData>();
		List<UserBean> list=submenuSercvice.listAuditorName(submenu.toString());
		datas.add(new ComboboxData("%","--------请选择--------"));
		if(list != null) {
			for (UserBean bean : list) {
				ComboboxData data = new ComboboxData(bean.getUserName(), bean.getUserName());
				datas.add(data);
			}
		}
		return datas;
	}  
}
