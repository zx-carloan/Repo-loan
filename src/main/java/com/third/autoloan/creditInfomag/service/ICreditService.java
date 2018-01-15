package com.third.autoloan.creditInfomag.service;

import com.third.autoloan.beans.CreditInfoBean;

//信用信息增删改业务层
public interface ICreditService {
	 /**
	  * 添加客户信用信息
	  * @param creditInfo 封装客户信用信息
	  * @param id 所对订单的id
	 */
		public void saveCreditInfo(CreditInfoBean creditInfo,long id );
		
		/**
		 * 修改客户信用信息
		 * 
		 * @param creditInfo  客户信用封装对象
		 * @param id 所对订单的id
		 */
		public void updeteCreditInfo(CreditInfoBean creditInfo,long id);
}
