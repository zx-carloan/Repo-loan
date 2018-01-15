package com.third.autoloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

//角色表
@Entity 
@Table(name="t_role")
public class RoleBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2941354728433124977L;

	@Id
	@Column(name="id")
	@GenericGenerator(name="id.strategy", strategy="identity")
	@GeneratedValue(generator="id.strategy")
	private long id;//id
	
	@Column(length=20)
	private String role;//角色名
	public RoleBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "RoleBean [id=" + id + ", role=" + role + "]";
	}
	
	
}
