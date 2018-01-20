<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<base href="<%=basePath%>">
<title>主界面</title>
<link rel="stylesheet" type="text/css"
	href="static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="static/easyui/themes/icon.css">
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="static/easyui/locale/easyui-lang-zh_CN.js"></script>
<!-- vehicleInfo.jsp样式 -->
<style type="text/css">
#bg{
	width: 400px;
	margin-top: -12px;
	text-align: center;
}

#bg td{
	width: 150px;
	height: 25px;
}

#btn {
	width: 140px;
}

.table1 {cellspacing ="0";
	background-color: #dfe2e2;
	margin-bottom: 10px;
}

.tr1 {
	width: 100%;
	height: 30px;
}

.td1 {
	width: 300px;
	height: 30px;
}

.caption1 {
	background-color: #cedcde;
	line-height: 30px;
}

.select1 {
	width: 146px;
}

</style>
</head>
<body style="height: 100%;">
	<div style="margin: 20px 0;"></div>
	<div class="easyui-layout" style="width: 100%; height: 600px;">
		<div data-options="region:'north'" style="height:70px;overflow: 'hidden'">
			
			<img alt="图片加载中" src="static/images/logo.jpg" style="width: 100px;float: left; ">
			<h1 style="float: left;">科技有限公司</h1>
			<b id="date" style="float:left;margin-left: 300px;margin-top:30px;"></b>
			<!-- 天气的图标 -->
			<img id="weatherpic" alt="图片加载中" src="" 
			style="float: left;width: 55px;height: 55px;margin-top: 10px;margin-left: 20px;">
			<div style="float: left;margin-left: 20px;margin-top:25px;">
			<!-- <span>天气预报</span> -->
			<table id="dg" style="width: 400px;margin-top: -12px;text-align: center;"
			>
			<thead>
			<tr>
			<th >高温</th>
			<th >低温</th>
			<th >天气</th>
			<th >湿度</th>
			<th >pm2.5</th>
			<th >空气质量</th>
			</tr>
			</thead>
			<tr>
			<td id="high" style="width: 150px;height: 25px;"></td>
			<td id="low" style="width: 150px;height: 25px;"></td>
			<td id="weather" style="width: 150px;height: 25px;"></td>
			<td id="humidity" style="width: 150px;height: 25px;"></td>
			<td id="pm25" style="width: 150px;height: 25px;"></td>
			<td id="quality" style="width: 150px;height: 25px;"></td>
			<td></td>
			</tr>
		</table>
			<!-- <p id="note" style="float: left;"></p> -->
			</div>
			<a style="float: right;margin-top: 45px;text-decoration: none;" href="#">退出</a>
		</div>
		<div data-options="region:'south',split:true" style="height: 50px;"></div>
		<div data-options="region:'west',split:true" title="菜单栏"
			style="width: 170px; background-image: url('static/images/123.jpg');">
			<div class="easyui-accordion" data-options="fit:false,border:false">
				<div title="客户信息管理" style="padding: 10px;">
					<a id="btn" class="easyui-linkbutton" onclick="IDinfoReadnig()">身份证信息读取</a><br>
					<br> <a id="btn" class="easyui-linkbutton" onclick="progress()">车贷申请进度查询</a>
				</div>
				<div title="信审业务管理" style="padding: 10px;">
					<a id="btn" class="easyui-linkbutton" onClick="TheLetter();">总公司信审</a><br>
					<br> <a id="btn" class="easyui-linkbutton" onclick="contractReview()">车贷签约复核</a><br>
					<br> <a id="btn" class="easyui-linkbutton" onClick="loan()">车贷放款</a><br>
					<br>
				</div>
				<div title="车贷管理" style="padding: 10px">
					<a id="btn" class="easyui-linkbutton" onclick="loanInput()">车贷录入</a><br>
					<br> <a id="btn" class="easyui-linkbutton" onclick="chuchaxun()">分公司信审</a><br>
					<br> <a id="btn" class="easyui-linkbutton" onclick="sign()">车贷签约</a><br>
					<br> <a id="btn" class="easyui-linkbutton" onclick="submenu()">审核分单</a><br>
					<br> <a id="btn" class="easyui-linkbutton" onclick="CustomerInformation()">客户身份证信息</a><br>
				
				</div>
			</div>

		</div>
		<div data-options="region:'center',title:'信息区域',iconCls:'icon-ok'">
			<div id="viewDiv" style="width: 100%;">
				<img alt="" src="static/images/111.jpg">
			</div>
		</div>
	</div>
	<script type="text/javascript">
	 $.ajax({
			type : "GET",
			url : "weather/res",
			async : true,
			//contentType:"application/json",
			//data : data,
			success : function(msg) {
				//console.info(msg);
				var json = JSON.parse(msg);
				//$("#myp").text(msg);
				var type = json.data.forecast[0].type;//获取天气状况
				var date = new Date();
				var hh = date.getHours();
				if(hh<10){
					hh = "0" + hh;
				}
				var currenttime = hh+':'+date.getMinutes();//获取当前时间
				var sunset = json.data.forecast[0].sunset;//获取当天的日落时间
				var sunrise = json.data.forecast[0].sunrise;//获取日出时间
				var notice = json.data.forecast[0].ganmao;								
				//console.info(json);
				//console.info(currenttime);
				//console.info(sunrise);
				//console.info(sunset);
				if(currenttime<sunset&&currenttime>sunrise){//判断是否是白天
					//console.info("是白天");
					if(type=="晴"){
						$("#weatherpic").attr("src","static/images/sunny.PNG");
					}
					if(type=="雨"){
						$("#weatherpic").attr("src","static/images/raining.PNG");
					}
					if(type=="阴"){
						$("#weatherpic").attr("src","static/images/gloomy.PNG");
					}
					if(type=="多云"){
						$("#weatherpic").attr("src","static/images/cloudy.PNG");
					}
				}else{
					//console.info("是夜间");
					if(type=="晴"){
						$("#weatherpic").attr("src","static/images/sunnynight.PNG");
					}
					if(type=="雨"){
						$("#weatherpic").attr("src","static/images/rainingnight.PNG");
					}
					if(type=="阴"){
						$("#weatherpic").attr("src","static/images/gloomynight.PNG");
					}
					if(type=="多云"){
						$("#weatherpic").attr("src","static/images/cloudynight.PNG");
					}
				}
				var high = json.data.forecast[0].high;
				var low = json.data.forecast[0].low;
				var pm25 = json.data.pm25;
				var humidity = json.data.shidu;
				var quality = json.data.quality;
				var weather = json.data.forecast[0].type;
				$("#low").text(low);
				$("#high").text(high);
				$("#pm25").text(pm25);
				$("#humidity").text(humidity);
				$("#quality").text(quality);
				$("#weather").text(weather);
				//$("#note").text(note);
				//$("notice").text(notice);
			}
		});
	</script>
	<script>
	/* */
		/* jQuery 定时局部刷新(setInterval)
		 */
		$(document).ready(function() {
			setInterval("startRequest()", 1000);
			setInterval("setWeather()",1000000);//半个小时刷新一次天气信息
		});
		
		//发送ajax请求，获取天气信息
		function setWeather(){
			
			$.ajax({
				type : "GET",
				url : "/autoloan/weather/res",
				async : true,
				//contentType:"application/json",
				//data : data,
				success : function(msg) {
					var json = JSON.parse(msg);
					//$("#myp").text(msg);
					var type = json.data.forecast[0].type;//获取天气状况
					var currenttime = (new Date().toLocaleString()).toString();//获取当前时间
					var sunset = json.data.forecast[0].sunset;//获取当天的日落时间
					var sunrise = json.data.forecast[0].sunrise;//获取日出时间
						
					//console.info(currenttime);
					//console.info(sunset);
					if(currenttime>sunrise||currenttime<sunset){//判断是否是白天
						if(type=="晴"){
							$("#weatherpic").attr("src","static/images/sunny.PNG");
						}
						if(type=="雨"){
							$("#weatherpic").attr("src","static/images/raining.PNG");
						}
						if(type=="阴"){
							$("#weatherpic").attr("src","static/images/gloomy.PNG");
						}
						if(type=="多云"){
							$("#weatherpic").attr("src","static/images/cloudy.PNG");
						}
					}else{
						if(type=="晴"){
							$("#weatherpic").attr("src","static/images/sunnynight.PNG");
						}
						if(type=="雨"){
							$("#weatherpic").attr("src","static/images/rainingnight.PNG");
						}
						if(type=="阴"){
							$("#weatherpic").attr("src","static/images/gloomynight.PNG");
						}
						if(type=="多云"){
							$("#weatherpic").attr("src","static/images/cloudynight.PNG");
						}
					}
					var notice = json.data.forecast[0].ganmao;
					var high = json.data.forecast[0].high;
					var low = json.data.forecast[0].low;
					var pm25 = json.data.pm25;
					var humidity = json.data.shidu;
					var quality = json.data.quality;
					var weather = json.data.forecast[0].type;
					$("#low").text(low);
					$("#high").text(high);
					$("#pm25").text(pm25);
					$("#humidity").text(humidity);
					$("#quality").text(quality);
					$("#weather").text(weather);
					$("#notice").text(notice);
				}
			});
		}
		
		
		function startRequest() {
			/*获取日期与时间 */
			$("#date").text((new Date().toLocaleString()).toString());
		}

		function loan() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/TrustManagement/loan/loanMoney.jsp"
			});
		}
		
		function TheLetter() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/TrustManagement/TheLetter/TheLetter.jsp"
			});
		}
		function CustomerInformation() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/CustomerInformation/CustomerInformation.jsp"
			});
		}
		function sign() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/signList/sign.jsp"
			});
		}
		function chuchaxun() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/branchOffice/chuchaxun.jsp"
			});
		}
		function submenu() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/submenu/submenu.jsp"
			});
		}
		
		function ranback() {
			window.location.href="static/html/login.html";
		}
		
		function progress() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/customService/progressQuery/progress.jsp"
			});
		}
		
		function IDinfoReadnig() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/customService/informationEntry/IDinfoReadnig.jsp"
			});
		}
		

		function contractReview() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/TrustManagement/contractReview/contractReview.jsp"
			});
		}
		
		function loanInput() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/loanInput/loanInput.jsp"
			});
		}
		
	</script>
</body>
</html>
