<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"   isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript"
	src="static/easyui/locale/easyui-lang-zh_CN.js"></script>
	<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="static/js/bootstrap.min.js"></script>

<style type="text/css">
</style>
</head>
<body style="height: 100%;">
	<div style="margin: 20px"></div>
	<input type="hidden" id="infomation" value=""></input>
	
		<div style="height: 110px; overflow: 'hidden'">
			<img alt="图片加载中" src="static/images/logo.jpg"
				style="width: 100px; float: left;">
			<h1 style="float: left;">科技有限公司</h1>
			<b id="date"
				style="float: left; margin-left: 300px; margin-top: 30px;"></b>
			<!-- 天气的图标 -->
			<img id="weatherpic" alt="图片加载中" src=""
				style="float: left; width: 55px; height: 55px; margin-top: 10px; margin-left: 20px;">
			<div style="float: left; margin-left: 20px; margin-top: 25px;">
				<!-- <span>天气预报</span> -->
				<table id="dg"
					style="width: 400px; margin-top: -12px; text-align: center;">
					<thead>
						<tr>
							<th>高温</th>
							<th>低温</th>
							<th>天气</th>
							<th>湿度</th>
							<th>pm2.5</th>
							<th>空气质量</th>
						</tr>
					</thead>
					<tr>
						<td id="high" style="width: 150px; height: 25px;"></td>
						<td id="low" style="width: 150px; height: 25px;"></td>
						<td id="weather" style="width: 150px; height: 25px;"></td>
						<td id="humidity" style="width: 150px; height: 25px;"></td>
						<td id="pm25" style="width: 150px; height: 25px;"></td>
						<td id="quality" style="width: 150px; height: 25px;"></td>
						<td></td>
					</tr>
				</table>
				<!-- <p id="note" style="float: left;"></p> -->
			</div>
			<a style="float: right; margin-top: 45px; text-decoration: none;"
				href="#">退出</a>
		</div>
		
		
<div  title="菜单栏" style="width: 15%;float: left; height: 100%">
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<a class="navbar-brand" href="#">车贷什么鬼哦</a>
	</div>
	<div class="collapse navbar-collapse" id="example-navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="dropdown">
				 <a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
					客户信息管理 <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
				</a>
			</li>
			<li>
			 <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
					<li><a role="menuitem"  style="cursor:pointer"  id="btn" onclick="IDinfoReadnig('jsp/customService/informationEntry/IDinfoReadnig.jsp')">身份证信息读取</a></li>
					<li><a style="cursor:pointer" id="btn"  onclick="CustomerInformation()">客户身份证信息</a></li>
				</ul>
			</li>
			
			<li class="dropdown">
				 <a href="#systemSetting2" class="nav-header collapsed" data-toggle="collapse">
					信审业务管理 <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
				</a>
					 <ul id="systemSetting2" class="nav nav-list collapse secondmenu" style="height: 0px;">
					<li><a style="cursor:pointer" id="btn" onClick="TheLetter();">总公司信审</a></li>
					<li><a style="cursor:pointer" id="btn"  onclick="contractReview()">车贷签约复核</a></li>
					<li><a style="cursor:pointer" id="btn" onClick="loan()">车贷放款</a></li>
				</ul>
			</li>
			
			
			<li class="dropdown">
					 <a href="#systemSetting3" class="nav-header collapsed" data-toggle="collapse">
					  车贷业务管理<span class="pull-right glyphicon glyphicon-chevron-toggle"></span>	</a>
			 <ul id="systemSetting3" class="nav nav-list collapse secondmenu" style="height: 0px;">
					<li><a style="cursor:pointer" id="btn" onclick="loanInput()">车贷录入</a></li>
					<li><a style="cursor:pointer" id="btn" onclick="chuchaxun()">分公司信审</a></li>
					<li><a style="cursor:pointer" id="btn" onclick="progress()">车贷申请进度查询</a></li>
					<li><a  style="cursor:pointer" id="btn" onclick="sign()">车贷签约</a></li>
					<li><a style="cursor:pointer"  id="btn" onclick="submenu()">审核分单</a></li>
				</ul>
			</li>
		</ul>
	</div>
	</div>
</nav>
</div>
	
		<div style="float: left;width: 85%">
			<div id="viewDiv" style="width: 100%;">
				<img alt="" src="static/images/111.jpg">
			</div>
		</div>
	
	<script type="text/javascript" src="jsp/TrustManagement/interface.js">
	
	</script>
	
</body>
</html>
