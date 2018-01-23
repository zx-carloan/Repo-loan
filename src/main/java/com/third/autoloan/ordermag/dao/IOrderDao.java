package com.third.autoloan.ordermag.dao;

import java.util.List;
import java.util.Map;


import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.beans.LoanHistoryBean;
import com.third.autoloan.beans.OrderBean;

public interface IOrderDao {
	
	/**
	 * 车贷录入业务列表的分页查询
	 * @param map
	 * 	 contractNumber 合同编号
	 * loanName 借款人
	 * companyName 分公司名
	 * status 订单流程到那步
	 * index 起始位置
	 * pageSize 每页显示多少行
	 * sort  排序条件
	 * order按照谁排序
	 * 
	 * @return contractNumber 合同编号
	 * 			 loanName 借款人
	 * 			companyName 分公司名
	 * 			
	 */

	
	public List<OrderBean> getOrderListByMap(Map<String, String> map);
	/**
	 * 查询车贷录入业务列表的总数 
	 * @param map
	 * contractNumber 合同编号
	 * loanName 借款人
	 * companyName 分公司名
	 * @return 车贷录入业务列表的总行数 
	 */
	public int getTotalOrderNumByMap(Map<String,String> map);
	
	/**
	 * 得到订单车辆信息
	 * @param id 所对订单的ID
	 * @return 返回订单车辆信息集合
	 */
	public List<CarInfoBean> listCarInfo(long id);
	
	/**
	 * 得到客户基本信息
	 * @param id 所对订单的ID
	 * @return 返回客户基本信息
	 */
	public ClientBean getClientInfoByOrderId(long id);
	
	
		
	
	

	
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
	
	
	/**
	 *得到 分单业务列表
	 * @param map
	 * @return
	 */
	public List<OrderBean> getSubmenuPage(Map<String, String> map);
	
	/**
	 * 得到车贷进度业务列表
	 * @param map
	 * @return
	 */
	public List<OrderBean> getProcedurePageBean(Map<String, String> map);
	
	   /***
     * 得到车贷进度业务列表总数
     * @param map
     * @return
     */
	public int getSumProcedure(Map<String, String> map);
	
	/***
	 * 得到 分单业务列表总数
	 * @param map
	 * @return
	 */
	public int getSumSubmenuPage(Map<String, String> map);
	
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
	/***
	 * 修改订单信息
	 * @param order
	 */
	public void updateOrderInfo(Map<String,Object> map);
	/***
	 * 删除订单信息
	 * @param id
	 */
	public void deleteOrderInfo(long id);
	/***
	 * 删除产品信息
	 * @param id
	 */
	public void deleteProduct(long id);
	/***
	 * 删除客户信息
	 * @param id
	 */
	public void deleteClient(long id);
	/***
	 * 删除公司信息
	 * @param id
	 */
	public void deleteCompany(long id);
	/***
	 * 删除合同信息
	 * @param id
	 */
	public void deleteContract(long id);
	/***
	 * 删除信用信息
	 * @param id
	 */
	public void deleteCredit(long id);
	/***
	 * 删除身份信息
	 * @param id
	 */
	public void deleteIdentity(long id);
	/***
	 * 删除身份信息
	 * @param id
	 */
	public void deleteOpinion(long id);
	/***
	 * 修改回退意见
	 * @param map
	 */
	public void returnOpinion(Map<String,Object> map);
	/***
	 * 查联系人信息
	 * @param id
	 */
	public ClientBean getContactorInfo(long id);
	/***
	 * 
	 * @param id 为loanhistory类的外键
	 * @return
	 */
	public LoanHistoryBean getLoanHistoryInfo(long id);
}
