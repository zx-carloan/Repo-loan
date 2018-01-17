package com.third.autoloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

//用户类
@Entity 
@Table(name="t_user")
public class UserBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8642749152565278400L;
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;//id
	@Column(length=20)
	private String userName;//真实姓名
	@Column(length=20)
	private String loginName;//登录名
	@Column(length=30)
	private String password;//登录密码
	
	@ManyToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_branch_id")
	private CompanyBean company;//公司对象
	public UserBean() {
		super();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public CompanyBean getCompany() {
		return company;
	}
	public void setCompany(CompanyBean company) {
		this.company = company;
	}
	@Override
	public String toString() {
		return "UserBean [id=" + id + ", userName=" + userName + ", loginName=" + loginName + ", password=" + password
				+ "]";
	}
	
	
	
	
}
