package com.third.autoloan.util;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;


import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//天气控件
@Controller
//@Component
@RequestMapping("/weather")
public class WeatherUtil {
	
	private static String weather;
	
	@Scheduled(cron="0/1800 * *  * * ? ")
	public static void getWeatherDate() throws Exception{
		//参数url化
		String city = java.net.URLEncoder.encode("成都", "utf-8");
		//拼地址
		String apiUrl = String.format("http://www.sojson.com/open/api/weather/json.shtml?city=%s",city);
		//开始请求
		URL url= new URL(apiUrl);
		URLConnection open = url.openConnection();
		InputStream input = open.getInputStream();
		//这里转换为String，带上包名，怕你们引错包
		weather = org.apache.commons.io.IOUtils.toString(input,"utf-8");
		//输出
		//System.out.println(weather);
	}
	
	@RequestMapping(value="/res",produces="text/html;charset=utf-8")
	public static @ResponseBody String conveyWeather() {
	
		System.out.println("1133"+weather);
		/*if(weather.length()<50||weather==null) {
			try {
				getWeatherDate();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}*/
		/*ModelAndView mv = new ModelAndView();
		mv.addObject("weather", weather);
		mv.setViewName("static/jsp/Interface");*/
		return weather;
	}
	
}
