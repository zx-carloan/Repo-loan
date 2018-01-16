package com.third.autoloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

//车内物品类
@Entity 
@Table(name="t_item")
public class ItemBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5791690366808603545L;
	@Id
	@Column(name="id")
	@GenericGenerator(name="id.strategy", strategy="identity")
	@GeneratedValue(generator="id.strategy")
	private long id;
	
	@Column(length=20)
	private String name;//物品名称
	@Column
	private int number;//物品数量
	
	//物品对象对应的汽车对象
	@ManyToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_carInfo_id")
	private CarInfoBean carInfo;
	
	
	public CarInfoBean getCarInfo() {
		return carInfo;
	}
	public void setCarInfo(CarInfoBean carInfo) {
		this.carInfo = carInfo;
	}
	public ItemBean() {
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
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "ItemBean [id=" + id + ", name=" + name + ", number=" + number + "]";
	}
	
	
}
