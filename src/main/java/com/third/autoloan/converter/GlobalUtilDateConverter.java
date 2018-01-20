package com.third.autoloan.converter;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;
/**
 * 全局类型转换器
 * @author pu
 *
 */
public class GlobalUtilDateConverter implements Converter<String, Date> {

	@Override 
	public Date convert(String text) {
		// TODO Auto-generated method stub
		Date date = null;
		SimpleDateFormat sdf = null;
		if(StringUtils.hasLength(text)) {
		//System.out.println("text是"+text);
			try {
				int lenth = text.length();
				if(lenth == 10) {
					sdf = new SimpleDateFormat("yyyy-MM-dd");
//					sdf = new SimpleDateFormat("MM/dd/yyyy");
				}else {
					sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
				}
				date = sdf.parse(text);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return date;
	}

}
