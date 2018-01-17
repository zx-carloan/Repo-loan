package com.third.autoloan.beans;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

//订单类
@Entity 
@Table(name="t_order")
public class OrderBean {

	@Id
	@Column(name="id")
	/*@GenericGenerator(name="id.strategy", strategy="identity")*/
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	// 合同编号
	@Column(length=100)
	private String contractNumber;
	// 返回意见
	@Column(length=100)
	private String returnOpinion;
	// 客户信息类
	@OneToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_client_id")
	private ClientBean client;
	// 意见表对象
	@OneToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_opinion_id")
	private OpinionBean opinion;
	// 工作流程状态
	@Column(length=20)
	private String status;
	// 回退状态
	@Column(length=20)
	private String rollback;
	// 放款状态
	@Column
	private int loanStatus;
	//分单状态
	@Column
	private int submenuStatus;
	//业务经理
	@Column(length=20)
	private String manager;
	// 订单对应的产品
	@OneToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_product_id")
	private ProductBean product;
	//保存还是提交
	@Column
	private int submit;//0表示提交，1表示保存
	//订单对应的签约表
	@OneToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_contract_id")
	private ContractBean contract;
	//车辆的集合
	@OneToMany(fetch=FetchType.LAZY,mappedBy="order")
	@Cascade(value= {CascadeType.ALL})
	private Set<CarInfoBean> carList;
	
	//身份证信息对象
	@ManyToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_identiry_id")
	private IdentityBean identity;
	//客户信用信息
	@OneToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_credit_id")
	private CreditInfoBean creditInfo;
	//订单所属的公司
	@OneToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_company_id")
	private CompanyBean company;
	//审核人的用户名
	@Column(length=30)
	private String auditor;
	//签约日
	@Column(length=30)
	private Date signDate;
	//进件时间
	@Column
	private Date timeStarting;
	//还款时间
	@Column
	private Date getMoneyTime;
	//复审日期
	@Column
	private Date review;
	
	public OrderBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getContractNumber() {
		return contractNumber;
	}

	public void setContractNumber(String contractNumber) {
		this.contractNumber = contractNumber;
	}

	public String getReturnOpinion() {
		return returnOpinion;
	}

	public void setReturnOpinion(String returnOpinion) {
		this.returnOpinion = returnOpinion;
	}

	public ClientBean getClient() {
		return client;
	}

	public void setClient(ClientBean client) {
		this.client = client;
	}

	public OpinionBean getOpinion() {
		return opinion;
	}

	public void setOpinion(OpinionBean opinion) {
		this.opinion = opinion;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRollback() {
		return rollback;
	}

	public void setRollback(String rollback) {
		this.rollback = rollback;
	}

	public int getLoanStatus() {
		return loanStatus;
	}

	public void setLoanStatus(int loanStatus) {
		this.loanStatus = loanStatus;
	}

	public int getSubmenuStatus() {
		return submenuStatus;
	}

	public void setSubmenuStatus(int submenuStatus) {
		this.submenuStatus = submenuStatus;
	}

	public ProductBean getProduct() {
		return product;
	}

	public void setProduct(ProductBean product) {
		this.product = product;
	}
	
	public ContractBean getContract() {
		return contract;
	}
	public void setContract(ContractBean contract) {
		this.contract = contract;
	}
	public Set<CarInfoBean> getCarList() {
		return carList;
	}

	public void setCarList(Set<CarInfoBean> carList) {
		this.carList = carList;
	}
	
	public IdentityBean getIdentity() {
		return identity;
	}

	public void setIdentity(IdentityBean identity) {
		this.identity = identity;
	}
	public CreditInfoBean getCreditInfo() {
		return creditInfo;
	}

	public void setCreditInfo(CreditInfoBean creditInfo) {
		this.creditInfo = creditInfo;
	}

	public int getSubmit() {
		return submit;
	}

	public void setSubmit(int submit) {
		this.submit = submit;
	}

	public CompanyBean getCompany() {
		return company;
	}

	public void setCompany(CompanyBean company) {
		this.company = company;
	}
	
	public String getAuditor() {
		return auditor;
	}

	public void setAuditor(String auditor) {
		this.auditor = auditor;
	}
	

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public Date getSignDate() {
		return signDate;
	}

	public void setSignDate(Date signDate) {
		this.signDate = signDate;
	}
    
	public Date getTimeStarting() {
		return timeStarting;
	}

	public void setTimeStarting(Date timeStarting) {
		this.timeStarting = timeStarting;
	}
	
	

	public Date getGetMoneyTime() {
		return getMoneyTime;
	}

	public void setGetMoneyTime(Date getMoneyTime) {
		this.getMoneyTime = getMoneyTime;
	}

	public Date getReview() {
		return review;
	}

	public void setReview(Date review) {
		this.review = review;
	}

	@Override
	public String toString() {
		return "OrderBean [id=" + id + ", contractNumber=" + contractNumber + ", returnOpinion=" + returnOpinion
				+ ", client=" + client + ", opinion=" + opinion + ", status=" + status + ", rollback=" + rollback
				+ ", loanStatus=" + loanStatus + ", submenuStatus=" + submenuStatus + ", manager=" + manager
				+ ", product=" + product + ", submit=" + submit + ", contract=" + contract + ", carList=" + carList
				+ ", identity=" + identity + ", creditInfo=" + creditInfo + ", company=" + company + ", auditor="
				+ auditor + ", signDate=" + signDate + ", timeStarting=" + timeStarting + ", getMoneyTime="
				+ getMoneyTime + ", review=" + review + "]";
	}

	

	

	

	

	

}
