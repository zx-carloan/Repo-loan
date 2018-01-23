package com.third.autoloan.progress.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.ordermag.dao.IOrderDao;
import com.third.autoloan.ordermag.repository.OrderRepository;
import com.third.autoloan.progress.dao.IProgressDao;
import com.third.autoloan.progress.repository.ProgressRepository;
import com.third.autoloan.progress.service.IProgressGetService;
import com.third.autoloan.util.CTools;

@Service("progressGetServiceImpl")
public class ProgressGetServiceImpl implements IProgressGetService {

	@Resource(name = "progressDaoImpl")
	private IProgressDao progressDaoImpl;

	@Resource
	private ProgressRepository progressRepository;

	@Override
	public PageBean getOrderPageByMap(Map<String, String> map) {

		int pageNumber = Integer.parseInt(map.get("page"));
		int pageSize = Integer.parseInt(map.get("rows"));

		int total = progressDaoImpl.getTotalOrderNumByMap(map);

		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		map.put("index", pageBean.getIndex() + "");

		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);
		List<OrderBean> list = progressDaoImpl.getOrderListByMap(map);
		pageBean.setRows(list);
		return pageBean;
	}

	@Override
	public List<CarInfoBean> listCarInfo(long id) {

		return progressDaoImpl.listCarInfo(id);
	}

	@Override
	public ClientBean getClientInfoByOrderId(long id) {
		return progressDaoImpl.getClientInfoByOrderId(id);
	}

	@Override
	public OrderBean getOrderInfoById(long id) {
		return progressRepository.getOne(id);
	}

	@Override
	public PageBean getLoanPage(Map<String, String> map) {

		int pageNumber = Integer.parseInt(map.get("page"));
		int pageSize = Integer.parseInt(map.get("rows"));
		int total = progressDaoImpl.getSumLoanPage(map);

		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		map.put("index", pageBean.getIndex() + "");
		if (!CTools.checkStringNull(map.get("contractNumber")))
			map.put("contractNumber", null);
		if (!CTools.checkStringNull(map.get("loanName")))
			map.put("loanName", null);
		if (!CTools.checkStringNull(map.get("identity")))
			map.put("identity", null);
		if (!CTools.checkStringNull(map.get("productName")))
			map.put("productName", null);
		if (!CTools.checkStringNull(map.get("companyName")))
			map.put("companyName", null);
		if (!CTools.checkStringNull(map.get("loanStatus")))
			map.put("loanStatus", null);

		List<OrderBean> list = progressDaoImpl.getLoanPage(map);
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);

		return pageBean;
	}

	@Override
	public PageBean getSubmenuPage(Map<String, String> map) {

		int pageNumber = Integer.parseInt(map.get("page"));
		int pageSize = Integer.parseInt(map.get("rows"));
		int total = progressDaoImpl.getSumSubmenuPage(map);
		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));

		map.put("index", pageBean.getIndex() + "");

		if (!CTools.checkStringNull(map.get("contractNumber")))
			map.put("contractNumber", null);
		if (!CTools.checkStringNull(map.get("loanName")))
			map.put("loanName", null);
		if (!CTools.checkStringNull(map.get("submenuStatus")))
			map.put("submenuStatus", null);
		if (!CTools.checkStringNull(map.get("identity")))
			map.put("identity", null);

		System.out.println(map.get("submenuStatus"));

		List<OrderBean> list = progressDaoImpl.getSubmenuPage(map);
		System.out.println("底层" + list);
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);

		return pageBean;
	}

	@Override
	public PageBean getProcedurePageBean(Map<String, String> map) {

		int pageNumber = Integer.parseInt(map.get("page"));
		int pageSize = Integer.parseInt(map.get("rows"));
		int total = progressDaoImpl.getSumProcedure(map);
		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		map.put("index", pageBean.getIndex() + "");
		List<OrderBean> list = progressDaoImpl.getProcedurePageBean(map);

		if (!CTools.checkStringNull(map.get("contractNumber")))
			map.put("contractNumber", null);
		if (!CTools.checkStringNull(map.get("loanName")))
			map.put("loanName", null);
		if (!CTools.checkStringNull(map.get("timeStarting_1")))
			map.put("timeStarting_1", null);
		if (!CTools.checkStringNull(map.get("timeStarting_2")))
			map.put("timeStarting_2", null);
		if (!CTools.checkStringNull(map.get("getMoneyTime_1")))
			map.put("getMoneyTime_1", null);
		if (!CTools.checkStringNull(map.get("getMoneyTime_2")))
			map.put("getMoneyTime_2", null);
		if (!CTools.checkStringNull(map.get("productType")))
			map.put("productType", null);
		if (!CTools.checkStringNull(map.get("companyName")))
			map.put("companyName", null);
		if (!CTools.checkStringNull(map.get("reviewDate")))
			map.put("reviewDate", null);
//		if (!CTools.checkStringNull(map.get("payDate_1")))
//			map.put("payDate_1", null);
//		if (!CTools.checkStringNull(map.get("payDate_2")))
//			map.put("payDate_2", null);
		
		if (map.get("payDate_1")=="") {
			
			map.put("payDate_1", null);
			System.out.println(map.get("payDate_1")+"11111");
		}
		
		if (map.get("payDate_2")=="") {
			
			map.put("payDate_2", null);
			System.out.println(map.get("payDate_2")+"111W");
		}
		
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);

		return pageBean;
	}

	@Override
	public List<OrderBean> getSubmenuPageToAuditor(int number) {
		// TODO Auto-generated method stub
		return progressDaoImpl.getSubmenuPageToAuditor(number);
	}
}
