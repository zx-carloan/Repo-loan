<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷进度查询</title>
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

		
	
		// 查询
		$("#myButton").click(function() {
			$('#tt').datagrid('load', datas());
			
		});

		function datas(orderId) {
			var contractNumber = $('#contractNumber').val();
			console.info(contractNumber);
			var loanName = $('#loanName').val();
			var timeStarting_1 = $('#timeStarting_1').val();// 进件时间
			var timeStarting_2 = $('#timeStarting_2').val();// 至
			var getMoneyTime_1 = $('#getMoneyTime_1').val();// 还款时间
			var getMoneyTime_2 = $('#getMoneyTime_2').val();// 至
			var productType = $("input[name='productType']").val();// 产品类型
			if(productType=="%"){
				productType=null;
			}
			
			console.info(productType)
			var companyName = $("input[name='companyName']").val();// 分公司
			if(companyName=="%"){
				companyName=null;
			}
			console.info(companyName)
			var reviewDate = $('#reviewDate').val();// 复审日期
			var payDate_1 = $('#payDate_1').val();// 放款日期
			var payDate_2 = $('#payDate_2').val();// 至
			var datas = {
				contractNumber : contractNumber,
				loanName : loanName,
				timeStarting_1 : timeStarting_1,
				timeStarting_2 : timeStarting_2,
				getMoneyTime_1 : getMoneyTime_1,
				getMoneyTime_2 : getMoneyTime_2,
				productType : productType,
				companyName : companyName,
				reviewDate : reviewDate,
				payDate_1 : payDate_1,
				payDate_2 : payDate_2,
				orderId : orderId
			};
			console.log(datas);
			return datas;
		}

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

			//详细信息点击事件
			$("#detail")
					.click(
							function() {
								if (id == "") {
									$.messager.confirm('Confirm', '请选择行',
											function(r) {
												if (r) {
													// exit action;
												}
											});
								} else {
									var id = $('#tt').datagrid('getSelected').id;// ：取得第一个选中行数据，如果没有选中行，则返回// null，否则返回记录。
									console.info(id)
									$("#viewDiv").panel({
										iconCls : "icon-add",
										collapsible : true,
										minimizable : true,
										maximizable : true,
										closable : true,
										href : "progress/findOrderBean/"+id
									});
								}
							});

		});
	</script>
	<!-- 	<div id="viewDiv"> -->
	<span>当前位置：车贷进度查询列表</span>
	<div id="p" class="easyui-panel" title="查询条件"
		style="width: 100%; font-weight: bold;">
		<span id="span1">&nbsp;</span>
		<form id="checkup" method="post" style="margin-top: -10px;">
			<span style="margin-right: 20px;" class="span1">合同编号</span><input
				id="contractNumber" class="easyui-textbox"
				data-options="prompt:'填写'" style="height: 20px"><span
				style="margin-right: 20px;" class="span1">&nbsp;</span> <span
				style="margin-right: 20px;" class="span1">借款人</span><input
				id="loanName" class="easyui-textbox" data-options="prompt:'填写'"
				style="height: 20px"><br> <span
				style="margin-right: 20px;" class="span1">进件时间</span><input
				id="timeStarting_1" type="text" class="easyui-datebox"
				required="required"> <span style="margin-right: 20px;"
				class="span1">至</span><input id="timeStarting_2" type="text"
				class="easyui-datebox" required="required"><br> <span
				style="margin-right: 20px;" class="span1">还款时间</span><input
				id="getMoneyTime_1" type="text" class="easyui-datebox"
				required="required"> <span style="margin-right: 20px;"
				class="span1">至</span><input id="getMoneyTime_2" type="text"
				class="easyui-datebox" required="required"> <span
				style="margin-right: 20px;" class="span1"></span> <br> <br>
			<span style="margin-right: 20px;" class="span1">产品类型</span><select
				id="productType" class="easyui-combobox" name="productType"
				style="width: 150px"
				data-options="valueField:'text',textField:'text2',url:'company/productType',method:'get'">
				<option name="productType" value="%"></option>
			</select> <span style="margin-right: 20px;" class="span1">&nbsp;</span> <span
				style="margin-right: 20px;" class="span1">分公司</span><select
				id="companyName" class="easyui-combobox" name="companyName"
				style="width: 150px"
				data-options="valueField:'text',textField:'text2',url:'company/getName',method:'get'">
				<option name="companyName" value="%"></option>
			</select> <span style="margin-right: 20px;" class="span1">复审日期</span><input
				id="reviewDate" type="text" class="easyui-datebox"
				required="required"><br> <span
				style="margin-right: 20px;" class="span1">放款时间</span><input
				id="payDate_1" type="text" class="easyui-datebox"
				required="required"> <span style="margin-right: 20px;"
				class="span1">至</span><input id="payDate_2" type="text"
				class="easyui-datebox" required="required"> <span
				style="margin-right: 20px;" class="span1">&nbsp;</span><span
				style="margin-right: 20px;" class="span1">&nbsp;</span><br> <br>
			<br>
			<td><a id="myButton" href="javascript:void(0)"
				class="easyui-linkbutton" data-options="iconCls:'icon-search'">查&nbsp;&nbsp;询</a>
			</td>
		</form>

	</div>
	<br>

	<table id="tt" class="easyui-datagrid"
		style="width: 100%; height: 200px"
		data-options="url:'progress/page', rownumbers:true,striped:true,method:'POST',fitColumns:true,pagination:true,singleSelect:false,toolbar:'#tb'">
		<thead>
			<tr>
				<th id='orderId'
					data-options="field:'id',width:20,align:'center',sortable:'true' ,hidden:true" />
				<th data-options="field:'id',hidden:true,width:20,sortable:'true'"></th>
				<th
					data-options="field:'contractNumber',width:20,align:'center',sortable:'true'">合同编号</th>
				<th
					data-options="field:'client',formatter:function(value,row){
							return row.client.name;
						},width:20,align:'center',sortable:'true'">借款人</th>
				<th
					data-options="field:'manager',width:20,align:'center',sortable:'true'">业务经理</th>
				<th
					data-options="field:'company',formatter:function(company){return company.name;
				     },width:20,align:'center',sortable:'true'">分公司</th>
				<th
					data-options="field:'timeStarting',width:20,align:'center',sortable:'true',
					formatter: function(timeStarting,row,index){
					var retVal = '';
					if(timeStarting != null){
						var date = new Date(timeStarting);
						retVal = date.Format('yyyy-MM-dd');
					}
					return retVal;
				}">进件时间</th>
				<th
					data-options="field:'review',width:20,align:'center',sortable:'true',
					formatter: function(review,row,index){
					var retVal = '';
					if(review != null){
						var date = new Date(review);
						retVal = date.Format('yyyy-MM-dd');
					}
					return retVal;
				}">复审日期</th>
				<th
					data-options="field:'capital',width:20,align:'center',sortable:'true',
					formatter:function(value,row){
							return row.product.capital;
						}">借款金额</th>
				<th
					data-options="field:'periods',width:20,align:'center',sortable:'true',
					formatter:function(value,row){
							return row.product.periods;
						}">借款期数</th>
				<th
					data-options="field:'getMoneyTime',width:20,align:'center',sortable:'true',
					formatter: function(getMoneyTime,row,index){
					var retVal = '';
					if(getMoneyTime != null){
						var date = new Date(getMoneyTime);
						retVal = date.Format('yyyy-MM-dd');
						}
					return retVal;
				}">还款时间</th>
				<th
					data-options="field:'submenuStatus',width:20,align:'center',sortable:'true'">状态</th>
			</tr>
		</thead>
		<tbody>

		</tbody>
	</table>
	<div style="text-align: center">
		<button id="detail" class="btn btn-primary">信息查看</button>
		<span style="margin-right: 50px"></span>

	</div>
	</div>
</body>
</html>