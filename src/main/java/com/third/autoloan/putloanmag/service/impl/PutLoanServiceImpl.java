package com.third.autoloan.putloanmag.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;
import com.third.autoloan.putloanmag.dao.IPutLoanDao;
import com.third.autoloan.putloanmag.service.IPutLoanGetService;
import com.third.autoloan.util.CTools;

@Service("PutLoanGetServiceImpl")
public class PutLoanServiceImpl implements IPutLoanGetService {

	@Resource(name="putLoanDaoImpl")
	private IPutLoanDao putLoanImpl;
	@Override
	public PageBean getLoanPage(Map<String,String> map) {
		
		
		int	pageNumber=Integer.parseInt(map.get("page"));
		int pageSize =Integer.parseInt(map.get("rows"));
		int	total = putLoanImpl.getSumLoanPage(map);
		
		PageBean pageBean = new PageBean(pageNumber, pageSize, map.get("sort"), map.get("order"));
		map.put("index", pageBean.getIndex()+"");
	 if( ! CTools.checkStringNull(map.get("contractNumber")))   map.put("contractNumber", null);
	 if( ! CTools.checkStringNull(map.get("loanName")))   map.put("loanName", null);
	 if( ! CTools.checkStringNull(map.get("identity")))   map.put("identity", null);
	 if( ! CTools.checkStringNull(map.get("productName")))   map.put("productName", null);
	 if( ! CTools.checkStringNull(map.get("companyName")))   map.put("companyName", null);
	 if( ! CTools.checkStringNull(map.get("loanStatus")))   map.put("loanStatus", null);
	 
	
		List<OrderBean> list =putLoanImpl.getLoanPage(map);
		pageBean.setRows(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotal(total);
        
		return pageBean;
	}
	@Override
	public OrderBean getOrderInfoById(long id) {
		return putLoanImpl.getOrderInfo(id);
	}
	@Override
	public void UpdateLoanStatus(Long id, String loanStatus) {
		putLoanImpl.UpdateLoanStatus(id, loanStatus);
		
	}
}
