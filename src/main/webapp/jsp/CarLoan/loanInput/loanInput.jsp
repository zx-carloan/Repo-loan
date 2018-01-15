<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷录入</title>
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
</head>
<body>
	<div id="p" class="easyui-panel" title="当前位置：车贷管理>车贷录入业务"
		style="width: 100%; height: 100px;">
		<div style="margin: 20px 0;"></div>
		<form id="queryForm">
			<table>
				<tr>
					<td>合同编号：</td>
					<td><input id="contratorNum" class="easyui-textbox"
						data-options="prompt:'填写'"></td>

					<td>借款人：</td>
					<td><input id="borrower" class="easyui-textbox"
						data-options="prompt:'填写'"></td>


					<td>分公司：</td>
					<td><select id="loanStatus" class="easyui-combobox"
						name="status" style="width: 150px;">
							<option value="0">阿里</option>
							<option value="1">腾讯</option>
					</select></td>
					<td><a id="query" href="javascript:void(0)"
						class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
					</td>
				</tr>
			</table>
		</form>
	</div>


	<div id="p" class="easyui-panel" title="车贷录入列表"
		style="width: 99%; height: 340px;">
		<table id="tt" class="easyui-datagrid"
			style="width: auto; height: 100%"
			data-options="url:'#',method:'post',fitColumns:true,pagination:true,singleSelect:false,toolbar:'#tb'">
			<thead>
				<tr>
					<th data-options="field:'id',checkbox:true,width:20"></th>
					<th data-options="field:'order',width:20,align:'center'">序号</th>
					<th data-options="field:'contractorNumber',width:20,align:'center'">合同编号</th>
					<th data-options="field:'borrower',width:20,align:'center'">借款人</th>
					<th data-options="field:'manager',width:20,align:'center'">业务经理</th>
					<th data-options="field:'company.name',width:20,align:'center'">分公司</th>

				</tr>
			</thead>
			<tbody>
				<tr id="1">

					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
				</tr>
				<tr id="2">

					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div id="tb">
		<a id="infoInput" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true">申请信息录入</a> <a
			id="delete" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true">撤销</a>
	</div>

	<script type="text/javascript" src="static/js/loanInput.js"></script>
</body>
</html>