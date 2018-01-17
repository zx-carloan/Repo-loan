package com.third.autoloan.beans;

import java.io.Serializable;
import java.util.Date;

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
import org.hibernate.annotations.GenericGenerator;
//签约类
@Entity 
@Table(name="t_contract")
public class ContractBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5677637847066848501L;
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column
	private double amount;//审批金额
	@Column(columnDefinition="DATE")
	private Date payDate;//放贷日期
	@Column(length=30)
	private String bank;//放款/还款银行'
	@Column(length=30)
	private String bankAccount;//放款/还款账户',
	@Column(length=50)
	private String bankBranch;//'放款/还款银行支行',
	@Column(length=200)
	private String bankCard;//银行卡,
	@Column(length=200)
	private String loanContract;//小额借款服务合同（系统生成）
	@Column(length=200)
	private String authorizationDeductletter;//授权扣款委托书（系统生成）
	@Column(length=200)
	private String authorisationLetter;//授权委托书（系统生成）
	@Column(length=200)
	private String repaymentSchedule;//还款计划表（系统生成）
	@Column(length=200)
	private String supplementalAgreement;//补充协议（直接上传）
	@Column(length=200)
	private String repurchaseContracts;//车辆买卖回购合同（直接上传）
	@Column(length=200)
	private String carAuthorisationLetter;//授权委托书(车辆处理使用)（直接上传）
	@Column(length=200)
	private String carMortgagePic;//车辆抵押照片
	@Column(length=200)
	private String carParkingPic;//车辆入库照片（非必要）
	@Column(length=200)
	private String printedForm;//机打申请表
	
	@OneToOne(fetch=FetchType.LAZY,mappedBy="contract")
	@Cascade(value= {CascadeType.ALL})
	private OrderBean order;//订单表
	
	public ContractBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	public String getBankBranch() {
		return bankBranch;
	}
	public void setBankBranch(String bankBranch) {
		this.bankBranch = bankBranch;
	}
	
	public String getBankCard() {
		return bankCard;
	}
	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}
	public String getLoanContract() {
		return loanContract;
	}
	public void setLoanContract(String loanContract) {
		this.loanContract = loanContract;
	}
	public String getAuthorizationDeductletter() {
		return authorizationDeductletter;
	}
	public void setAuthorizationDeductletter(String authorizationDeductletter) {
		this.authorizationDeductletter = authorizationDeductletter;
	}
	public String getAuthorisationLetter() {
		return authorisationLetter;
	}
	public void setAuthorisationLetter(String authorisationLetter) {
		this.authorisationLetter = authorisationLetter;
	}
	public String getRepaymentSchedule() {
		return repaymentSchedule;
	}
	public void setRepaymentSchedule(String repaymentSchedule) {
		this.repaymentSchedule = repaymentSchedule;
	}
	public String getSupplementalAgreement() {
		return supplementalAgreement;
	}
	public void setSupplementalAgreement(String supplementalAgreement) {
		this.supplementalAgreement = supplementalAgreement;
	}
	public String getRepurchaseContracts() {
		return repurchaseContracts;
	}
	public void setRepurchaseContracts(String repurchaseContracts) {
		this.repurchaseContracts = repurchaseContracts;
	}
	public String getCarAuthorisationLetter() {
		return carAuthorisationLetter;
	}
	public void setCarAuthorisationLetter(String carAuthorisationLetter) {
		this.carAuthorisationLetter = carAuthorisationLetter;
	}
	public String getCarMortgagePic() {
		return carMortgagePic;
	}
	public void setCarMortgagePic(String carMortgagePic) {
		this.carMortgagePic = carMortgagePic;
	}
	public String getCarParkingPic() {
		return carParkingPic;
	}
	public void setCarParkingPic(String carParkingPic) {
		this.carParkingPic = carParkingPic;
	}
	public String getPrintedForm() {
		return printedForm;
	}
	public void setPrintedForm(String printedForm) {
		this.printedForm = printedForm;
	}
	public OrderBean getOrder() {
		return order;
	}
	public void setOrder(OrderBean order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "ContractBean [id=" + id + ", amount=" + amount + ", payDate=" + payDate + ", bank=" + bank
				+ ", bankAccount=" + bankAccount + ", bankBranch=" + bankBranch + "]";
	}
	
	
}
