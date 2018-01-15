package com.third.autoloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
//公司类
@Entity 
@Table(name="t_company")
public class CompanyBean implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8641077812198853583L;
	
	@Id
	@Column(name="id")
	@GenericGenerator(name="id.strategy", strategy="identity")
	@GeneratedValue(generator="id.strategy")
	private long id;
	
	@Column(length=20)
	private String name;//公司名
	
	@Column
	private int hq;//'0:代表总公司;1:代表分公司',
	public CompanyBean() {
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
	
	public int getHq() {
		return hq;
	}
	public void setHq(int hq) {
		this.hq = hq;
	}
	
	@Override
	public String toString() {
		return "Company [id=" + id + ", name=" + name + ", hq=" + hq + "]";
	}
	
	

}
