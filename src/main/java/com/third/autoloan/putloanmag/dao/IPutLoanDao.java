package com.third.autoloan.putloanmag.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.OrderBean;

public interface IPutLoanDao {
	
	/**
	 *  得到放款业务列表
	 *  
	 * @param map 条件
	 * contractNumber合同编号
	 * name借款人 clientBean
	 * identity 身份证号 identityBean
	 * name 产品类型 ProductBean表
	 * name 分公司名
	 * loanStatus 放款状态
	 * @return
	 */
	public List<OrderBean> getLoanPage(Map<String, String> map);
	
	/***
	 *  得到放款业务列表总数
	 * @param map
	 * @return
	 */
	public int getSumLoanPage(Map<String, String> map);
	/***
	 * 根据id查找订单信息
	 * @param id
	 * @return
	 */
	public OrderBean getOrderInfo(long id);
	
	public void UpdateLoanStatus( Long id, String loanStatus);

}
