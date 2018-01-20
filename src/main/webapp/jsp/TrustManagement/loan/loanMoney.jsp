<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷放款</title>
<link rel="stylesheet" type="text/css"
	href="static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="static/easyui/themes/icon.css">
<script type="text/javascript"
	src="static/easyui/locale/easyui-lang-zh_CN.js"></script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="static/easyui/jquery.easyui.min.js"></script>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="static/js/bootstrap.min.js"></script>


<style>
.span1 {
	margin-right: 20px;
}
</style>
</head>
<body>
	<script>
		$(function() {
			/* 定义一个数组用于接收得到的下标 */
			var id = new Array();
			$(".easyui-datagrid").datagrid({
				onClickRow : function(rowIndex, rowData) {
					id.push(rowIndex);
					for (var i = 0; i < id.length; i++) {
						for (var j = i + 1; j < id.length; j++) {
							if (id[i] == id[j]) {
								id.splice(j, 1);
								id.splice(i, 1);
							}
							;
						}
						console.log(id[i] + "<br />")
					}
					if (id == "") {

					} else {

					}

				}

			});

			$("#cancel").click(function() {

				if (id == "") {
					$.messager.confirm('Confirm', '请选择行', function(r) {
						if (r) {
							// exit action;

						}
					});

				} else {

					$.messager.confirm('Confirm', '是否撤销该客户?', function(r) {
						if (r) {
							// exit action;
						}
					});
				}
			});

			//详细信息点击事件
			$("#detail").click(function() {
				if (id == "") {
					$.messager.confirm('Confirm', '请选择行', function(r) {
						if (r) {
							// exit action;
						}
					});
				} else {
					$("#viewDiv").panel({
						iconCls : "icon-add",
						collapsible : true,
						minimizable : true,
						maximizable : true,
						closable : true,
						href : "jsp/TrustManagement/loan/vehicleInfo.jsp"
					});
					/* window.location.href="/autoloan/static/jsp/loan/vehicleInfo.jsp"; */
				}
			});
		});
	</script>
	<div id="viewDiv">
		<span>当前位置：信审业务管理>车贷放款列表</span>
		<div id="p" class="easyui-panel" title="查询条件"
			style="width: 100%; height: 100px; font-weight: bold;">
			<span id="span1">&nbsp;</span>
			<form id="checkup" method="post" style="margin-top: -10px;">
				<span style="margin-right: 20px;" class="span1">合同编号</span><input
					id="contractNumber" class="easyui-textbox" data-options="prompt:'填写'"
					style="height: 20px"><span style="margin-right: 20px;"
					class="span1">&nbsp;</span> <span style="margin-right: 20px;"
					class="span1">借款人</span><input id="loanName" class="easyui-textbox"
					data-options="prompt:'填写'" style="height: 20px"><span
					style="margin-right: 20px;" class="span1">&nbsp;</span> <span
					style="margin-right: 20px;" class="span1">身份证号</span><input
					id="identity" class="easyui-textbox"
					data-options="prompt:'填写'" style="height: 20px"><br> <br>
				<span style="margin-right: 20px;" class="span1">产品类型</span><input
					id="productName" class="easyui-combobox"
					data-options="valueField:'id',textField:'text',url:'###',method:'get',prompt:'-请选择-'"
					style="height: 20px; margin-top: -10px;"><span
					style="margin-right: 20px;" class="span1">&nbsp;</span> <span
					style="margin-right: 20px;" class="span1">分公司</span><input
					id="companyName" class="easyui-combobox"
					data-options="valueField:'id',textField:'text',url:'#',method:'get',prompt:'-请选择-'"
					style="height: 20px"><span style="margin-right: 20px;"
					class="span1">&nbsp;</span> <span style="margin-right: 20px;"
					class="span1">放款状态</span><select id="loanStatus"
					class="easyui-combobox" name="status" placeholder="-申请放款-"
					style="width: 150px; height: 22px;">
					<option value="0">待放款</option>
					<option value="1">放款中</option>
					<option value="2">已放款</option>
					<option value="3">提现失败</option>
				</select> <span style="margin-right: 20px;" class="span1">&nbsp;</span><span
					style="margin-right: 20px;" class="span1">&nbsp;</span>
				<button type="button" id="myButton" data-loading-text="Loading..."  id="query"
					class="btn btn-primary" autocomplete="off"
					style="margin-top: -20px;">查&nbsp;&nbsp;询</button>
			</form>

		</div>

		<table class="easyui-datagrid" style="width: 100%; height: 200px"
			data-options=" url:'putLoans/page',method:'get',rownumbers:true,fitColumns:true,pagination:true,singleSelect:false">
			<thead>
				<tr>
					<th data-options="field:'id',hidden:hidden,width:20,sortable:'true'"></th>
					<th data-options="field:'contractNumber',width:20,align:'center',sortable:'true'">合同编号</th>
					<th data-options="field:'identity.name',width:20,align:'center',sortable:'true'">借款人</th>
					<th data-options="field:'identity.identity',width:20,align:'center',sortable:'true'">身份证号</th>
					<th data-options="field:'contract.payDate',width:20,align:'center',sortable:'true'">约定放贷日</th>
					<th data-options="field:'contract.timeStarting',width:20,align:'center',sortable:'true'">签约日</th>
					<th data-options="field:'contract.capital',width:20,align:'center',sortable:'true'">合同额</th>
					<th data-options="field:'amount',width:20,align:'center',sortable:'true'">实际放款额</th>
					<th data-options="field:'contract.periods',width:20,align:'center',sortable:'true'">借款期数</th>
					<th data-options="field:'company.name',width:20,align:'center',sortable:'true'">分公司</th>
					<th data-options="field:'loanStatus',width:20,align:'center',sortable:'true'">放款状态</th>
				</tr>
			</thead>
		
		</table>
		<div style="text-align: center">
			<button id="detail" class="btn btn-primary">详细信息</button>
			<span style="margin-right: 50px"></span>
			<button id="cancel" class="btn btn-primary">撤销</button>
			<span style="margin-right: 50px"></span>
			<button class="btn btn-primary">提交放款</button>
		</div>
	</div>
</body>
</html>