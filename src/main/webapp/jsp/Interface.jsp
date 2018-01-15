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
		<div data-options="region:'north'" style="height: 65px;">
			<img alt="" src="static/images/logo.jpg"
				style="width: 100px; float: left;">
			<h1 style="float: left;">科技有限公司</h1>
			<a id="date"
				style="float: left; margin-left: 200px; margin-top: 25px;"></a>
			<div style="float: left; margin-left: 100px; margin-top: 25px;">天气预报</div>
			<a style="float: right; margin-top: 45px; text-decoration: none;"
				href="#" onclick="ranback()">退出</a>
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
	<script>
		/* jQuery 定时局部刷新(setInterval)
		 */
		$(document).ready(function() {
			setInterval("startRequest()", 1000);
		});
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
