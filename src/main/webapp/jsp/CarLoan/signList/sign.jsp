<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷签约</title>
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
	<div id="p" class="easyui-panel" title="当前位置：车贷管理>车贷签约业务"
		style="width: 100%; height: 100px;">
		<div style="margin: 20px 0;"></div>
		<form id="queryForm">
			<table>
				<tr>
					<td>合同编号：</td>
					<td><input id="contractNumber" class="easyui-textbox"
						data-options="prompt:'填写'"></td>

					<td>借款人：</td>
					<td><input id="loanName" class="easyui-textbox"
						data-options="prompt:'填写'"></td>


					<td>分公司：</td>
					<td><select id="companyName" class="easyui-combobox"
						name="companyName" style="width: 150px"
						data-options="valueField:'text',textField:'text2',url:'company/getName',method:'get'">
						<option name="companyName" value="%"></option>
					</select>
					</td>
					<td><a id="query" href="javascript:void(0)" style="width: 70px"
						class="easyui-linkbutton" data-options="iconCls:'icon-search' ">查询</a>
					</td>
				</tr>
			</table>
		</form>
	</div>

	
	<div id="p" class="easyui-panel" title="车贷签约列表"
		style="width: 99%; height: 340px;">
		<table id="tt" class="easyui-datagrid"
			style="width: auto; height: 100%"
			data-options=" rownumbers:true,striped:true, url:'contract/query',method:'post',fitColumns:true,pagination:true,singleSelect:true,toolbar:'#tb'">
			<thead>
				<tr>
					<th id='orderId' data-options="field:'id',width:20,align:'center',sortable:'true' ,hidden:true"/>
					<th id='status' data-options="field:'status',width:20,align:'center',sortable:'true' ,hidden:true"/>
					<th id='rollback' data-options="field:'rollback',width:20,align:'center',sortable:'true' ,hidden:true"/>
					<th data-options="field:'contractNumber',width:20,align:'center',sortable:'true'">合同编号</th>
					<th data-options="field:'client',width:20,align:'center',sortable:'true',
						formatter: function(client){return client.name;}">借款人</th>
					<th data-options="field:'manager',width:20,align:'center',sortable:'true'">业务经理</th>
					<th data-options="field:'company',width:20,align:'center',sortable:'true',
					formatter: function(company){return company.name;}">分公司</th>
				</tr>
			</thead>
		</table>
	</div>

<div id="tb">
		<a id="signBtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true">签约</a> <a
			id="cancel" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true">撤销</a>
	</div>
	<script type="text/javascript" src="static/js/signPage/signPage.js"></script>
</body>
</html>