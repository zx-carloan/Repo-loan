package com.third.autoloan.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

//身份信息类
@Entity 
@Table(name="t_identity")
public class IdentityBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="id")
	//@GenericGenerator(name="id.strategy", strategy="identity")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	@Column(length=20)
	private String name;//姓名
	@Column
	private int gender;//性别  0 女 1 男',
	@Column(length=20)
	private String ethnic;//民族
	@Column(columnDefinition="DATE")
	private Date birthday;//出生年月 yyyy-MM-dd
	@Column(length=100)
	private String address;//地址
	@Column(length=30)
	private String identity;//身份证号限18位,最后可以以数字或者字母x
	@Column(length=30)
	private String administration;//发证机关
	@Column(columnDefinition="DATE")
	private Date issueDate;//有效期开始
	@Column(columnDefinition="DATE")
	private Date expireDate;//有效期结束
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="identity")
	@Cascade(value= {CascadeType.ALL})
	private Set<OrderBean> orderList;//该身份证信息下的客户订单集合
	public IdentityBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String identityt_name) {
		this.name = identityt_name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getEthnic() {
		return ethnic;
	}
	public void setEthnic(String ethnic) {
		this.ethnic = ethnic;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getAdministration() {
		return administration;
	}
	public void setAdministration(String administration) {
		this.administration = administration;
	}
	public Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	public Date getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}
	public Set<OrderBean> getOrderList() {
		return orderList;
	}
	public void setOrderList(Set<OrderBean> orderList) {
		this.orderList = orderList;
	}
	@Override
	public String toString() {
		return "IdentityBean [id=" + id + ", name=" + name + ", gender=" + gender + ", ethnic=" + ethnic + ", birthday="
				+ birthday + ", address=" + address + ", identity=" + identity + ", administration=" + administration
				+ ", issueDate=" + issueDate + ", expireDate=" + expireDate + "]";
	}

	
}
