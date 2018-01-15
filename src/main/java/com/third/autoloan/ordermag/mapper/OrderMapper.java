package com.third.autoloan.ordermag.mapper;

import java.util.List;
import java.util.Map;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;

public interface OrderMapper {
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
	public List<OrderBean> getOrderListByMap(Map map);
	/**
	 * 查询车贷录入业务列表的总数 
	 * @param map
	 * contractNumber 合同编号
	 * loanName 借款人
	 * companyName 分公司名
	 * @return 车贷录入业务列表的总行数 
	 */
	public int getTotalOrderNumByMap(Map map);
	
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
	
}
