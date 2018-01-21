<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分公司信审</title>
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

			$("#examine").click(function() {

				if (id == "") {
					$.messager.confirm('Confirm', '请选择行', function(r) {
						if (r) {
							// exit action;
						}
					});

				} else if (id.length >= 2) {
					$.messager.confirm('Confirm', '只能选择一行进行初审');
				} else {
					$("#viewDiv").panel({
						iconCls : "icon-add",
						collapsible : true,
						minimizable : true,
						maximizable : true,
						closable : true,
						href : "branchCompany/detailInfo?id="+id 
					   
					});
				}
			});
		})
		$("#myButton").click(function(){
			 	var contratorNum= $("#contratorNum").val();
			 	var borrower=$("#borrower").val();
				var loanStatus=$("#loanStatus").val();
			 
				var data={ "contratorNum":contratorNum , "borrower":borrower,"loanStatus":loanStatus }
				console.log(data);
				$('#ta').datagrid('reload',{
					url: "branchCompany/page", 
					queryParams:data, 
					method: "post"
					});
			});
	</script>

	<span>当前位置：信审管理>分公司信审主页</span>

	<div id="p" class="easyui-panel" title="查询条件"
		style="width: 100%; height: 100px; font-weight: bold;">
		<span id="span1">&nbsp;</span>
		<form id="checkup" method="post"
			style="margin-top: -20px; margin-top: 10px;">
			<span class="span1">合同编号</span><input id="contratorNum" name="contractorNUm"
				class="easyui-textbox" data-options="prompt:'填写'"
				style="height: 20px"><span class="span1">&nbsp;</span> <span
				class="span1">借款人</span><input id="borrower" name="borrower" class="easyui-textbox"
				data-options="prompt:'填写'" style="height: 20px"><span
				class="span1">&nbsp;</span> <span class="span1">分公司</span><select
				id="loanStatus" class="easyui-combobox" name="status"
				placeholder="-请选择-" style="width: 190px; height: 22px;">
				<option value="">不选择</option>
				<option value="1">朗沃一部</option>
				<option value="2">朗沃二部</option>
				<option value="3">朗沃三部</option>
			</select> <span class="span1">&nbsp;</span><span class="span1">&nbsp;</span>
			<input  type="button" id="myButton" 
				 style="margin-left: 40px;" value="提交">
		</form>
	</div>

	<table id="ta" class="easyui-datagrid" style="width: 100%; height: 200px"
		data-options="url:'branchCompany/page',method:'get',fitColumns:true,pagination:true,singleSelect:false">
		<thead>
			<tr>
				<th data-options="field:'ids',checkbox:true,width:20,sortable:'true'"></th>
				<th data-options="field:'id',width:20,align:'center',sortable:'true'">序号</th>
				<th data-options="field:'contractNumber',width:20,align:'center',sortable:'true'">合同编号</th>
				<th data-options="field:'client',formatter: function(value,row,index){
                if (value.name){
                return value.name;
                } else {
                return value;
                }
               },width:20,align:'center',sortable:'true'">借款人</th>
				<th data-options="field:'manager',width:20,align:'center',sortable:'true'">业务经理</th>
				<th data-options="field:'company',formatter: function(value,row,index){
                if (value.name){
                return value.name;
                } else {
                return value;
                }
               },width:20,align:'center',sortable:'true'">分公司</th>
			</tr>
		</thead>
	</table>
	<div style="text-align: center">
		<button id="examine" class="btn btn-primary">初审</button>
		<span style="margin-right: 50px"></span>
		<button id="cancel" class="btn btn-primary">撤销</button>
		<span style="margin-right: 50px"></span>
	</div>

</body>
</html>