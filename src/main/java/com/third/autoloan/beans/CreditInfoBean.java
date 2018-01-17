package com.third.autoloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

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
	@GenericGenerator(name="id.strategy", strategy="identity")
	@GeneratedValue(generator="id.strategy")
	private long id;
	@Column
	private boolean hasHouse;// 有无房产
	@Column
	private boolean hasHouseLoan;// 有无房贷
	@Column
	private boolean hasCar;// 有无车产
	@Column
	private boolean hasCarLoan;// 有无车贷
	@Column
	private int maxOverdueMonth;// 信用卡、贷款最大逾期状况（24个月内）
	@Column
	private int maxOverdueNum;// 信用卡、贷款最大逾期次数（25个月内）
	@Column
	private int creditUsageRate;// 信用卡额度使用率
	@Column
	private int enquiriesNumber;// '信用卡/贷款审批查询次数（6个月内）',
	@Column
	private boolean hasOtheLoan;// 有无其他信用贷款
	@Column
	private boolean hasCreditCard;// 有无信用卡

	@OneToOne(fetch=FetchType.LAZY,mappedBy="creditinfo")
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

	public boolean isHasHouse() {
		return hasHouse;
	}

	public void setHasHouse(boolean hasHouse) {
		this.hasHouse = hasHouse;
	}

	public boolean isHasHouseLoan() {
		return hasHouseLoan;
	}

	public void setHasHouseLoan(boolean hasHouseLoan) {
		this.hasHouseLoan = hasHouseLoan;
	}

	public boolean isHasCar() {
		return hasCar;
	}

	public void setHasCar(boolean hasCar) {
		this.hasCar = hasCar;
	}

	public boolean isHasCarLoan() {
		return hasCarLoan;
	}

	public void setHasCarLoan(boolean hasCarLoan) {
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

	public boolean isHasOtheLoan() {
		return hasOtheLoan;
	}

	public void setHasOtheLoan(boolean hasOtheLoan) {
		this.hasOtheLoan = hasOtheLoan;
	}

	public boolean isHasCreditCard() {
		return hasCreditCard;
	}

	public void setHasCreditCard(boolean hasCreditCard) {
		this.hasCreditCard = hasCreditCard;
	}

	@Override
	public String toString() {
		return "CreditInfoBean [id=" + id + ", hasHouse=" + hasHouse + ", hasHouseLoan=" + hasHouseLoan + ", hasCar="
				+ hasCar + ", hasCarLoan=" + hasCarLoan + ", maxOverdueMonth=" + maxOverdueMonth + ", maxOverdueNum="
				+ maxOverdueNum + ", creditUsageRate=" + creditUsageRate + ", enquiriesNumber=" + enquiriesNumber
				+ ", hasOtheLoan=" + hasOtheLoan + ", hasCreditCard=" + hasCreditCard + "]";
	}

}
