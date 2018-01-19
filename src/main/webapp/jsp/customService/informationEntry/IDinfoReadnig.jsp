<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>身份信息读取</title>
<link rel="stylesheet" type="text/css"
	href="static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="static/easyui/themes/icon.css">
<script type="text/javascript"
	src="static/easyui/locale/easyui-lang-zh_CN.js"></script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="static/js/identity.js"></script>


<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="static/js/bootstrap.min.js"></script>
<style type="text/css">
	
</style>
</head>
<body>

	<div id="viewDiv">
		<span>当前位置：客户信息管理>身份信息读取</span>
		<div id="p" class="easyui-panel" title="查询条件"
			style="width: 100%; height: 70px; font-weight: bold;">
			<span id="span1">&nbsp;</span>
			<form id="checkup" method="post" style="margin-top: -5px;">
				<span style="margin-right: 20px;" class="span1">身份证号</span>
				 <input  
					id="contratorNum" class="easyui-textbox" data-options="prompt:'填写'"
					style="height: 20px"> <span style="margin-right: 20px;"
					class="span1">&nbsp;</span> <span style="margin-right: 20px;"
					class="span1">&nbsp;</span>

				<button type="button" id="query" data-loading-text="Loading..."
					class="btn btn-primary" autocomplete="false"
					style="margin-top: -20px;">查&nbsp;&nbsp;询</button>

				<button type="button" id="addInfo" data-loading-text="Loading..."
					class="btn btn-primary" autocomplete="off"
					style="margin-top: -20px; margin-left: 10px;">新增身份信息</button>
			</form>

		</div>
		<table id="tt" class="easyui-datagrid" style="width: 100%; height: 200px"
			data-options="fitColumns:true,pagination:true,singleSelect:false">
			<thead>
				<tr>
					<th data-options="field:'ck',checkbox:true"></th>
					<th data-options="field:'s',width:20,align:'center'">序号</th>
					<th data-options="field:'name',width:20,align:'center'">姓名</th>
					<th data-options="field:'gender',width:20,align:'center'">性别</th>
					<th data-options="field:'identity',width:20,align:'center'">身份证号</th>
					<th data-options="field:'id',width:20,align:'center'"></th>
				</tr>
			</thead>
			<tbody id="tb">
				<tr >
					<td  style="width: 25px"></td>
					<td  style="width: 25px"><span id="num"></span></td>
					<td  style="width: 20px"><span id="name"></span ></td>
					<td  style="width: 20px"><span id="gender"></span></td>
					<td  style="width: 20px"><span id="identity"></span></td>
				</tr>
			</tbody>
		</table>
		<div style="text-align: center">
			<button id="cancel" class="btn btn-primary">撤销</button>
			<span style="margin-right: 50px"></span>
			<button id="addBusiness" class="btn btn-primary">车贷业务</button>
		</div>
	</div>
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
						}
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
							var ids = [];
							for(var i = 0 ; i < length; i ++){
								ids.push(rows[i].id);
							}
							$.ajax({
								   type: "DELETE",
								   url: "identitys/"+ids,
								   async:true,
								   success: function(msg){
									   $.messager.show({
											title:'提示信息',
											msg:msg,
											timeout:5000,
											showType:'slide'
										});
									   $('#tt').datagrid('reload');
								   }
								});
							}
						});
					}
				});

			$("#addInfo").click(function() {
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : "jsp/customService/informationEntry/addIDInfo.jsp"
				});
			});
			$("#addBusiness").click(
				function() {
					$("#viewDiv")
						.panel(
							{
								iconCls : "icon-add",
								collapsible : true,
								minimizable : true,
								maximizable : true,
								closable : true,
								href : "jsp/customService/informationEntry/vehicleLoanManagement.jsp"
							});
				});
		});
	</script>
</body>
</html>