package com.third.autoloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

//历史信贷类
@Entity 
@Table(name="t_loanhistory")
public class LoanHistoryBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5570199603063790960L;
	@Id
	@Column(name="id")
	@GenericGenerator(name="id.strategy", strategy="identity")
	@GeneratedValue(generator="id.strategy")
	private long id;
	
	@Column(length=20)
	private String loanType;//贷款类型
	
	@OneToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_indentity_id")
	private IdentityBean identityBean;//身份信息
	public LoanHistoryBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	
	public IdentityBean getIdentityBean() {
		return identityBean;
	}
	public void setIdentityBean(IdentityBean identityBean) {
		this.identityBean = identityBean;
	}
	@Override
	public String toString() {
		return "LoanHistoryBean [id=" + id + ", loanType=" + loanType + ", identityBean=" + identityBean + "]";
	}
	
	
}
