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
//意见类
@Entity 
@Table(name="t_opinion")
public class OpinionBean implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1923338609883998647L;
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column
	private int loanTime;//批准期数
	@Column(length=20)
	private String conclusion;//结论
	@Column
	private double loanAmount;//审批额度
	@Column(length=500)
	private String branchOpinion;//分公司意见
	@Column(length=500)
	private String HQOpinion;//总公司意见
	
	@OneToOne(fetch=FetchType.LAZY,mappedBy="opinion")
	@Cascade(value= {CascadeType.ALL})
	private OrderBean order;//订单对象
	
	public OpinionBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getLoanTime() {
		return loanTime;
	}
	public void setLoanTime(int loanTime) {
		this.loanTime = loanTime;
	}
	public String getConclusion() {
		return conclusion;
	}
	public void setConclusion(String conclusion) {
		this.conclusion = conclusion;
	}
	public double getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}
	public String getBranchOpinion() {
		return branchOpinion;
	}
	public void setBranchOpinion(String branchOpinion) {
		this.branchOpinion = branchOpinion;
	}
	public String getHQOpinion() {
		return HQOpinion;
	}
	public void setHQOpinion(String hQOpinion) {
		HQOpinion = hQOpinion;
	}
	public OrderBean getOrder() {
		return order;
	}
	public void setOrder(OrderBean order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "OpinionBean [id=" + id + ", loanTime=" + loanTime + ", conclusion=" + conclusion + ", loanAmount="
				+ loanAmount + ", branchOpinion=" + branchOpinion + ", HQOpinion=" + HQOpinion + "]";
	}
	
	
}
