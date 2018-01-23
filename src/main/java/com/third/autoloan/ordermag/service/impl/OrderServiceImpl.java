package com.third.autoloan.ordermag.service.impl;


import java.util.Map;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.beans.OrderBean;
import com.third.autoloan.carmag.service.ICarService;
import com.third.autoloan.clientmag.service.IClientService;
import com.third.autoloan.companymag.service.ICompanyService;
import com.third.autoloan.contractmag.service.IContractService;
import com.third.autoloan.creditInfomag.service.ICreditService;
import com.third.autoloan.identitymag.service.IidentityService;
import com.third.autoloan.opinionmag.service.IOpinionService;
import com.third.autoloan.ordermag.dao.IOrderDao;
import com.third.autoloan.ordermag.repository.OrderRepository;
import com.third.autoloan.ordermag.service.IOrderService;

@Service("orderServiceImpl")
public class OrderServiceImpl implements IOrderService{
	
	@Resource
	private OrderRepository orderRepository;
	
	@Resource
	private IidentityService identityServiceImpl;
	
	@Resource
	private IOrderDao orderDaoImpl;
	
	
	@Resource
	private SessionFactory sessionFactory;
	@Resource(name="ClientServiceImpl")
	private IClientService clientServiceImpl;
	@Resource
	private ICarService carServiceImpl;
	@Resource
	private ICompanyService companyServiceImpl;
	@Resource(name="contractService")
	private IContractService contractServiceImpl;
	@Resource
	private ICreditService creditServiceImpl;
	@Resource
	private IOpinionService opinionServiceImpl;
	;
	@Override
	public void deleteOrderInfo(long id) {
		// TODO Auto-generated method stub
		OrderBean order=orderDaoImpl.getOrderInfo(id);
		/*if(order.getCarList()!=null) {
			carServiceImpl.deleteCarInfo(order.getCarList().get);
		}*/
		System.out.println("orderBean="+order);
		if(order.getClient()!=null) {
			/*clientServiceImpl.deleteClient(order.getClient().getId());*/
			orderDaoImpl.deleteClient(order.getClient().getId());
		}
		if(order.getCompany()!=null) {
			System.out.println("companyId="+order.getCompany().getId());
			/*companyServiceImpl.deleteCompany(3l);*/
			orderDaoImpl.deleteCompany(order.getCompany().getId());
		}
		if(order.getContract()!=null) {
			/*contractServiceImpl.deleteContractInfo(order.getContract().getId());*/
			orderDaoImpl.deleteContract(order.getContract().getId());
		}
		if(order.getCreditInfo()!=null) {
			/*creditServiceImpl.deleteCreditInfo(order.getCreditInfo().getId());*/
			orderDaoImpl.deleteCredit(order.getCreditInfo().getId());
		}
		if(order.getIdentity()!=null) {
			/*identityServiceImpl.deleteIdentityInfo(order.getIdentity().getId());*/
			orderDaoImpl.deleteIdentity(order.getIdentity().getId());
		}
		if(order.getOpinion()!=null) {
			/*opinionServiceImpl.deleteOpinionById(order.getOpinion().getId());*/
			orderDaoImpl.deleteOpinion(order.getOpinion().getId());
		}
		if(order.getProduct()!=null) {
			orderDaoImpl.deleteProduct(order.getProduct().getId());
		}
		orderDaoImpl.deleteOrderInfo(id);
	}

	@Override
	public void saveOrederInfo(OrderBean orderBean, long id) {
		// TODO Auto-generated method stub
		IdentityBean ib= identityServiceImpl.findIdentityById(id);
		OrderBean order=new OrderBean();
		order.setIdentity(ib);
		order.setAuditor("环湖");
		orderRepository.save(order);
		
		
		
		
	}

	@Override
	public void updateOrderInfo(Map<String,Object> map) {
		// TODO Auto-generated method stub
		orderDaoImpl.updateOrderInfo(map);
	}


	@Override
	public OrderBean getOrderById(long id) {
		// TODO Auto-generated method stub
		return orderDaoImpl.getOrderInfo(id);
	}

	@Override
	public void getReturnOpinion(Map<String, Object> map) {
		// TODO Auto-generated method stub
		orderDaoImpl.returnOpinion(map);
	}

	@Override
	public ClientBean getContactorInfo(long id) {
		// TODO Auto-generated method stub
		return orderDaoImpl.getContactorInfo(id);
	}

}
