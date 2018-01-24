package com.third.autoloan.contractmag.dao;


import java.util.Map;

import com.third.autoloan.beans.ContractBean;


public interface IContractDao {
/***
 * 根据订单id查询签约信息
 * @param orderId
 * @return
 */

public ContractBean getContractByOrderBean(Long orderId);

public void updateContractInfo(Map<String,Object> map);

}
