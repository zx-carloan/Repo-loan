package com.third.autoloan.ordermag.service;

import java.util.Map;

import com.third.autoloan.beans.CarInfoBean;
import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.ContractBean;
import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.beans.OpinionBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.beans.PageBean;

/**
 * @author 订单写
 * @version 1.0
 * @created 12-一月-2018 上午 9:58:17
 */
public interface IOrderService {

	/**
	 * 删除订单信息（即撤销操作）
	 * 
	 * @param id
	 */
	public void deleteOrderInfo(long id);


	/**
	 * 增加订单基本信息（合同编号、工作流程位置）
	 * @param orderBean 封装的订单对象
	 * @param id 关联身份证的id
	 */
	public void saveOrederInfo(OrderBean orderBean,long id);


	
	/**
	 * 修改订单信息
	 * 
	 * @param orderBean 
	 */
	public void updeteOrderInfo(OrderBean orderBean);

	/**
	 * 打印合同
	 * @param id 所对所对订单的id
	 */
	public void printContract(long id);
	/**
	 * 还款试算
	 * @param id 所对所对订单的id
	 */
	public Map countContract(long id);
	

}