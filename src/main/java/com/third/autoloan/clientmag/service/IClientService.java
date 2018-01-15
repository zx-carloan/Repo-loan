package com.third.autoloan.clientmag.service;

import com.third.autoloan.beans.ClientBean;

//客户基本信息增删改业务层
public interface IClientService {

	/***
	 * 添加客户信息
	 * @param client
	 */
	public void addClient(ClientBean client);
	
	/***
	 * 删除客户信息
	 * @param id
	 */
	public void deleteClient(Long id);
	/**
	 * 修改客户信息
	 * @param client
	 */
	public void updateClient(ClientBean client);
}
