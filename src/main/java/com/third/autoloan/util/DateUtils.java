package com.third.autoloan.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

	/**
	 * 将日期转换为yyyy-MM-dd的字符串
	 * @param date
	 * @return
	 */
	public static String date2ShortString(Date date) {
		SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd");
		return sfd.format(date);
	}
	
	
	
	/**
	 * 将符合yyyy-MM-dd的字符串，转换为时间
	 * @param str
	 * @return
	 * @throws ParseException 
	 */
	public static Date shortStr2Date(String str) throws ParseException {
		SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd");
		return sfd.parse(str);
	}
}
