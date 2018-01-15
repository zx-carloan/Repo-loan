package com.third.autoloan.beans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

//日志类
public class LogBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3397421640685680387L;
	private long id;
	private Date loginDate;//用户登陆时间
	private String userName;//登陆用户名
	private Date exitDate;//用户退出时间
	public LogBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getExitDate() {
		return exitDate;
	}
	public void setExitDate(Date exitDate) {
		this.exitDate = exitDate;
	}
	@Override
	public String toString() {
		return "LogBean [id=" + id + ", loginDate=" + loginDate + ", userName=" + userName + ", exitDate=" + exitDate
				+ "]";
	}
	
	
	
}
