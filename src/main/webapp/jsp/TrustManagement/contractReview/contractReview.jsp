<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷签约复核</title>
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

</head>
<body>
	<script>
		$(function() {
			/* 定义一个数组用于接收得到的下标 */
			var id = new Array();
			$("table").datagrid({
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
			
			$("#sign").click(function() {

				if (id == "") {
					$.messager.confirm('Confirm', '请选择行', function(r) {
						if (r) {
							// exit action;
						}
					});

				} else if (id.length >= 2) {
					$.messager.confirm('Confirm', '只能选择一行进行复核 ');
				} else {
					$("#viewDiv").panel({
						iconCls : "icon-add",
						collapsible : true,
						minimizable : true,
						maximizable : true,
						closable : true,
						href : "jsp/TrustManagement/contractReview/ToReview.jsp"
					});
				}
			});
		})
	</script>

	<span>当前位置：信审业务管理>签约复核列表</span>

	<div id="p" class="easyui-panel" title="查询条件"
		style="width: 100%; height: 100px; font-weight: bold;">
		<span id="span1">&nbsp;</span>
		<form id="checkup" method="post"
			style="margin-top: -20px; margin-top: 10px;">
			<span class="span1">合同编号</span><input id="contratorNum"
				class="easyui-textbox" data-options="prompt:'填写'"
				style="height: 20px"><span class="span1">&nbsp;</span> <span
				class="span1">借款人</span><input id="borrower" class="easyui-textbox"
				data-options="prompt:'填写'" style="height: 20px"><span
				class="span1">&nbsp;</span> <span class="span1">分公司</span><select
				id="loanStatus" class="easyui-combobox" name="status"
				placeholder="-1111-" style="width: 190px; height: 22px;">
				<option value="0">123</option>
				<option value="1">456</option>
				<option value="2">789</option>
				<option value="3">192</option>
			</select> <span class="span1">&nbsp;</span><span class="span1">&nbsp;</span>
			<button type="button" id="myButton" data-loading-text="Loading..."
				class="btn btn-primary" autocomplete="off"
				style="margin-left: 40px;">查&nbsp;&nbsp;询</button>
		</form>
	</div>

	<table class="easyui-datagrid" style="width: 100%; height: 200px"
		data-options="url:'#',method:'get',fitColumns:true,pagination:true,singleSelect:false">
		<thead>
			<tr>
				<th data-options="field:'id',checkbox:true,width:20"></th>
				<th data-options="field:'order',width:20,align:'center'">序号</th>
				<th data-options="field:'contractorNumber',width:20,align:'center'">合同编号</th>
				<th data-options="field:'borrower',width:20,align:'center'">借款人</th>
				<th data-options="field:'identityNumber',width:20,align:'center'">业务经理</th>
				<th data-options="field:'loanDate',width:20,align:'center'">分公司</th>
			</tr>
		</thead>
		<tbody>
			<tr id="1">
				<td style="width: 20px">123</td>
				<td style="width: 25px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
			</tr>
			<tr id="2">

				<td style="width: 20px">123</td>
				<td style="width: 25px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
			</tr>
		</tbody>
	</table>
	<div style="text-align: center">
		<button id="sign" class="btn btn-primary">复核</button>
		<span style="margin-right: 50px"></span>
		<button id="cancel" class="btn btn-primary">撤销</button>
		<span style="margin-right: 50px"></span>
	</div>
</body>
</html>