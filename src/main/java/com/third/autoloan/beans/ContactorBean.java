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
import org.hibernate.annotations.GenericGenerator;
//联系人类
@Entity 
@Table(name="t_contactor")
public class ContactorBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4145093530157091120L;
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(length=20)
	private String name;//联系人姓名
	@Column
	private int type;//联系人类型
	@Column
	private int relation;//和本人关系
	@Column(length=20)
	private String company;//单位名称
	@Column(length=100)
	private String address;//家庭地址/单位地址',
	@Column(length=30)
	private String phone;//联系电话
	
	@ManyToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_client_id")
	private ClientBean clientBean;//客户信息
	public ContactorBean() {
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
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getRelation() {
		return relation;
	}
	public void setRelation(int relation) {
		this.relation = relation;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public ClientBean getClientBean() {
		return clientBean;
	}
	public void setClientBean(ClientBean clientBean) {
		this.clientBean = clientBean;
	}
	@Override
	public String toString() {
		return "ContactorBean [id=" + id + ", name=" + name + ", type=" + type + ", relation=" + relation + ", company="
				+ company + ", address=" + address + ", phone=" + phone + "]";
	}
	
	
}
