package com.third.autoloan.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import org.springframework.stereotype.Component;

import com.third.autoloan.beans.UserBean;

@Component
public class CreateOrderNum {
	private static Properties properties;

	public static String getCompanyName(String companyID) {
		properties = new Properties();
		try {
			FileInputStream in = new FileInputStream("src/main/resources/code.properties");
			properties.load(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return properties.getProperty(companyID);
	}

	public static String getCompanyID(String companyName) {
		properties = new Properties();
		try {
			FileInputStream in = new FileInputStream("src/main/resources/code.properties");
			properties.load(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
		String companyID = properties.getProperty(companyName);
		return companyID;
	}

	public static String createOrderNum(UserBean userBean,String companyName) {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		StringBuffer dateString = new StringBuffer(formatter.format(currentTime));
		StringBuffer order = new StringBuffer();
		order.append("320");
		order.append(getCompanyID(companyName));
		order.append(dateString);
		int num = (userBean.getId()+"").length();
		order.append((int)(Math.random()*100)+"");
		for(int i=0;i<4-num;i++) {
			order.append('0');
		}
		order.append(userBean.getId()+"");
		order.append((int)(Math.random()*100)+"");
		order.trimToSize();
		return order.toString();
	}
}
