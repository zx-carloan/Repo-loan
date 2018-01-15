package com.third.autoloan.ordermag.service;

import java.util.List;
import java.util.Map;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.ContractBean;
import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;


public interface IOrderGetService {

	
	/**
	 * 拿到车贷录入分页表格
	 * @param map
	 * 	contractNumber 合同编号
	 * loanName 借款人
	 * companyName 分的公司名
	 * status 订单流程到那步
	 * @param pageBean 页面约束
	 * pageNumber 当前页码
	 * pageSize 每页显示多少行
	 * sort  排序条件
	 * order按照谁排序
	 */
	public PageBean getOrderPageByMap(Map map,PageBean pageBean);

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
	 * 得到客户信用信息
	 *
	 * @param id 所对订单的ID
	 * @return 返回客户信用信息
	 */
	public ClientBean getCreditInfoByOrderId(long id);
	

	
	
	/**
	 * 获取订单信息
	 * @param id 所对订单的ID
	 */
	public OrderBean getOrderInfoById(long id);
	
	/**
	 * 判读当前订单信息是提交还是保留状态
	 * @param id 所对订单的ID
	 * @return 返回 0 表示保留  ;1 表示提交
	 */
	public  int  getSubmitInfoByOrderId(long id);
		
	
	/**
	 *  
	 * @param id 所对订单的ID
	 * @return 查到的签约信息
	 */
	public ContractBean getContractInfoByOrderId(long id);
	

	
	/**
	 *  得到放款业务列表
	 * @param map 条件
	 * @return
	 */
	public PageBean getLoanPage(Map map);
	
	/**
	 *得到 分单业务列表
	 * @param map
	 * @return
	 */
	public PageBean getSubmenuPage(Map map);
	
	/**
	 * 得到车贷进度业务列表
	 * @param map
	 * @return
	 */
	public PageBean getProcedurePageBean(Map map);
 }