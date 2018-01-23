package com.third.autoloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

//客户信用信息类
@Entity 
@Table(name="t_creditinfo")
public class CreditInfoBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 10104863683329256L;
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	@Column
	private int hasHouse;// 有无房产
	@Column
	private int hasHouseLoan;// 有无房贷
	@Column
	private int hasCar;// 有无车产
	@Column
	private int hasCarLoan;// 有无车贷
	@Column
	private int maxOverdueMonth;// 信用卡、贷款最大逾期状况（24个月内）
	@Column
	private int maxOverdueNum;// 信用卡、贷款最大逾期次数（25个月内）
	@Column
	private int creditUsageRate;// 信用卡额度使用率
	@Column
	private int enquiriesNumber;// '信用卡/贷款审批查询次数（6个月内）',
	@Column
	private int hasOtheLoan;// 有无其他信用贷款
	@Column
	private int hasCreditCard;// 有无信用卡

	@OneToOne(fetch=FetchType.LAZY,mappedBy="creditInfo")
	@Cascade(value= {CascadeType.ALL})
	private OrderBean orderBean;
	
	public CreditInfoBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

	public long getId() {
		return id;
	}




	public void setId(long id) {
		this.id = id;
	}




	public int getHasHouse() {
		return hasHouse;
	}




	public void setHasHouse(int hasHouse) {
		this.hasHouse = hasHouse;
	}




	public int getHasHouseLoan() {
		return hasHouseLoan;
	}




	public void setHasHouseLoan(int hasHouseLoan) {
		this.hasHouseLoan = hasHouseLoan;
	}




	public int getHasCar() {
		return hasCar;
	}




	public void setHasCar(int hasCar) {
		this.hasCar = hasCar;
	}




	public int getHasCarLoan() {
		return hasCarLoan;
	}




	public void setHasCarLoan(int hasCarLoan) {
		this.hasCarLoan = hasCarLoan;
	}




	public int getMaxOverdueMonth() {
		return maxOverdueMonth;
	}




	public void setMaxOverdueMonth(int maxOverdueMonth) {
		this.maxOverdueMonth = maxOverdueMonth;
	}




	public int getMaxOverdueNum() {
		return maxOverdueNum;
	}




	public void setMaxOverdueNum(int maxOverdueNum) {
		this.maxOverdueNum = maxOverdueNum;
	}




	public int getCreditUsageRate() {
		return creditUsageRate;
	}




	public void setCreditUsageRate(int creditUsageRate) {
		this.creditUsageRate = creditUsageRate;
	}




	public int getEnquiriesNumber() {
		return enquiriesNumber;
	}




	public void setEnquiriesNumber(int enquiriesNumber) {
		this.enquiriesNumber = enquiriesNumber;
	}




	public int getHasOtheLoan() {
		return hasOtheLoan;
	}




	public void setHasOtheLoan(int hasOtheLoan) {
		this.hasOtheLoan = hasOtheLoan;
	}




	public int getHasCreditCard() {
		return hasCreditCard;
	}




	public void setHasCreditCard(int hasCreditCard) {
		this.hasCreditCard = hasCreditCard;
	}




	public OrderBean getOrderBean() {
		return orderBean;
	}




	public void setOrderBean(OrderBean orderBean) {
		this.orderBean = orderBean;
	}

	
}
