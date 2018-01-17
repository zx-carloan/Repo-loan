package com.third.autoloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


//产品类
@Entity 
@Table(name="t_product")
public class ProductBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8642837018440388332L;
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(length=20)
	private String name;//产品名
	@Column(length=50)
	private String periods;//期数
	@Column(length=50)
	private String accrual;//利息
	
	public ProductBean() {
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
	public String getPeriods() {
		return periods;
	}
	public void setPeriods(String periods) {
		this.periods = periods;
	}
	public String getAccrual() {
		return accrual;
	}
	public void setAccrual(String accrual) {
		this.accrual = accrual;
	}
	@Override
	public String toString() {
		return "ProductBean [id=" + id + ", name=" + name + ", periods=" + periods + ", accrual=" + accrual + "]";
	}
	
}
