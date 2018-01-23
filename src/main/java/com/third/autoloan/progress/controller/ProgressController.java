package com.third.autoloan.progress.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.ContactorBean;
import com.third.autoloan.beans.ContractBean;
import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.beans.OpinionBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.beans.ProductBean;
import com.third.autoloan.contractmag.service.IContractGetService;
import com.third.autoloan.creditInfomag.service.ICreditGetService;
import com.third.autoloan.opinionmag.service.IOpinionGetService;
import com.third.autoloan.progress.service.IProgressGetService;
import com.third.autoloan.progress.service.IProgressService;

@RequestMapping("/progress")
@Controller
public class ProgressController {

	@Resource(name = "progressGetServiceImpl")
	private IProgressGetService progressGetServiceImpl;

	@Resource(name = "progressServiceImpl")
	private IProgressService progressService;

	// 客户信用信息
	@Resource(name = "creditGetServiceImpl")
	private ICreditGetService creditGetService;

	// 签约信息
	@Resource(name = "sb")
	private IContractGetService contractGetService;

	// 综合意见
	@Resource()
	private IOpinionGetService opinionGetService;

	// 查询全部信息
	@RequestMapping(value = "/page", method = { RequestMethod.POST })
	public @ResponseBody PageBean ListProgressPage(@RequestParam Map<String, String> map) {
		map.put("page", "1");
		map.put("rows", "6");
		PageBean bean = progressGetServiceImpl.getProcedurePageBean(map);
		List<OrderBean> list = (List<OrderBean>) bean.getRows();
		System.out.println(list + "这是得到的进度表");
		return bean;
	}

	// 订单信息查询
	@RequestMapping(value = "/findOrderBean/{id}")
	public String FindOrderBeanById(@PathVariable("id") Long id, ModelMap model) {
		System.out.println("进来了" + id);

		OrderBean orderBean = progressService.getOrderById(id);
		// 根据订单id得到客户id
		long ClientId = orderBean.getClient().getId();

		ClientBean bean = orderBean.getClient();

		// 得到产品类
		ProductBean productBean = orderBean.getProduct();

		// 得到联系人的信息
		// Set<ContactorBean> contactorBean = bean.getContactorList();
		ClientBean clientBean = progressGetServiceImpl.getContactor(ClientId);
		Set<ContactorBean> contactorBean = clientBean.getContactorList();

		// 得到客户信用信息
		CreditInfoBean creditInfoBean = creditGetService.getCreditInfoByOrderId(ClientId);

		// 得到签约信息
		ContractBean contractBean = contractGetService.getContractByOrderId(ClientId);

		// 综合意见
		OpinionBean opinionBean = opinionGetService.getOpinionByOrderId(ClientId);

		model.addAttribute("ClientBean", bean);
		model.addAttribute("creditInfoBean", creditInfoBean);
		model.addAttribute("contactorBean", contactorBean);
		// 得到签约信息
		model.addAttribute("contractBean", contractBean);

		model.addAttribute("productBean", productBean);
		// 综合意见
		model.addAttribute("opinionBean", opinionBean);

		return "jsp/customService/progressQuery/progressQuery";
	}
}
