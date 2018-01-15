<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--车贷管理>车贷业务  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷业务</title>
</head>
<body>
     <div id="viewDiv">
		<span>当前位置：车贷管理>车贷业务</span>
		<div id="p" class="easyui-panel" title="查询条件"
			style="width: 100%; height: 100px; font-weight: bold;">
			<span id="span1">&nbsp;</span>
			<form id="checkup" method="post" style="margin-top: -10px;">
				<span style="margin-right: 20px;" class="span1">合同编号</span><input
					id="contratorNum" class="easyui-textbox" data-options="prompt:'填写'"
					style="height: 20px"><span style="margin-right: 20px;"
					class="span1">&nbsp;</span> <span style="margin-right: 20px;"
					class="span1">借款人</span>
					<input id="borrower" class="easyui-textbox"
					data-options="prompt:'填写'" style="height: 20px">
					<span
					style="margin-right: 20px;" class="span1">&nbsp;</span>
					<span
					style="margin-right: 20px;" class="span1">分公司</span><input
					id="branch" class="easyui-combobox"
					data-options="valueField:'id',textField:'text',url:'#',method:'get',prompt:'-请选择-'"
					style="height: 20px"><span style="margin-right: 20px;"
					class="span1">&nbsp;</span>
				<button type="button" id="myButton" data-loading-text="Loading..."
					class="btn btn-primary" autocomplete="off"
					style="margin-top: -20px;">查&nbsp;&nbsp;询</button>
			</form>

		</div>
		<table class="easyui-datagrid" style="width: 100%; height: 200px"
			data-options="url:'#',method:'get',fitColumns:true,pagination:true,singleSelect:false">
			<thead>
				<tr>
					<th data-options="field:'id',checkbox:true,width:20,align:'center'">序号</th>
					<th data-options="field:'contractorNumber',width:20,align:'center'">合同编号</th>
					<th data-options="field:'borrower',width:20,align:'center'">借款人</th>
					<th data-options="field:'manager',width:20,align:'center'">业务经理</th>
					<th data-options="field:'branch',width:20,align:'center'">分公司</th>
				</tr>
			</thead>
			<tbody>
				<tr id="1">
					<td style="width: 25px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
				</tr>
				<tr id="2">
					<td style="width: 25px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
					<td style="width: 20px">123</td>
				</tr>
			</tbody>
		</table>
		<div style="text-align: center">
			<button id="cancel" class="btn btn-primary">撤销</button>
			<span style="margin-right: 50px"></span>
			<button id="loanApplication" class="btn btn-primary">车贷申请</button>
		</div>
	</div>
	<script type="text/javascript">
	    $(function(){
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
							// exit action;
						}
					});
				}
			});
			
			
			$("#loanApplication").click(function(){
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : "jsp/customService/informationEntry/VehicleLoanApplication.jsp"
				});
			});
	    });
	</script>
</body>
</html>