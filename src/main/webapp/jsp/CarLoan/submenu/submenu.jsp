<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审核分单</title>
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

	<div id="p" class="easyui-panel" title="当前位置：车贷管理>车贷审核分单业务"
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

					<td>身份证号码：</td>
					<td><input id="identity" class="easyui-textbox"
						data-options="prompt:'填写'"></td>

					<td>状态：</td>
					<td><select id="submenuStatus" class="easyui-combobox"
						name="submenuStatus" style="width: 150px;">
							<option value="">请选择</option>
							<option value="0">总公司信审</option>
							<option value="1">签约复核</option>
					</select></td>
					<td><a id="query" href="javascript:void(0)"
						class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
					</td>
				</tr>
			</table>
		</form>
	</div>


	<div id="p" class="easyui-panel" title="车贷审核分单列表"
		style="width: 99%; height: 340px;">
		<table id="tt" class="easyui-datagrid"
			style="width: auto; height: 100%"
			data-options="url:'submenu/page', rownumbers:true,striped:true,method:'GET',fitColumns:true,pagination:true,singleSelect:true,toolbar:'#tb'">
			<thead>
				<tr>
					<th id='orderId'
						data-options="field:'id',width:20,align:'center',sortable:'true' ,hidden:true" />
					<th data-options="field:'id',hidden:true,width:20,sortable:'true'"></th>
					<th
						data-options="field:'contractNumber',width:10,align:'center',sortable:'true'">合同编号</th>



					<th
						data-options="field:'client',width:10,align:'center',sortable:'true',
					formatter:function(value,row){
							return row.client.name;
						}">借款人</th>
					<th
						data-options="field:'client1',width:10,align:'center',
				formatter:function(value,row){
							return row.client.idCard;
						}">身份证号</th>
					<th
						data-options="field:'client2',width:10,align:'center',
					formatter:function(value,row){
							return row.client.cellphone;
						}">借款人手机号码</th>
					<th
						data-options="field:'manager',width:10,align:'center',sortable:'true'">业务经理</th>
					<th
						data-options="field:'company',width:10,align:'center',
							formatter:function(value,row){
							return row.company.name;
						}
						">分公司</th>
					<th
						data-options="field:'product',width:10,align:'center',
							formatter:function(value,row){
							return row.product.name;
						}
						">产品名称</th>
					<th
						data-options="field:'product2',width:10,align:'center',
							formatter:function(value,row){
							return row.product.periods;
						}
						">借款期数</th>
					<th
						data-options="field:'timeStarting',width:10,align:'center',
										formatter: function(timeStarting,row,index){
					var retVal = '';
					if(timeStarting != null){
						var date = new Date(timeStarting);
						retVal = date.Format('yyyy-MM-dd');
					}
				return retVal;
			}">进件时间</th>
					<th
						data-options="field:'submenuStatus',width:10,align:'center' ,
								formatter:function(submenuStatus){ if(submenuStatus==0) return '审核分单' ;else return '签约复核' 
				     }">状态</th>
					<th id="auditor" data-options="field:'auditor',width:10,align:'center',
					formatter:function(auditor){ if(auditor==null || auditor =='') return '无' ;else return auditor ;

				     }
					">审核人</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	</div>

	<div id="tb">
		<a id="automaticSingle" href="javascript:void(0)"
			class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true">自动分单</a> <a
			id="submenu" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true">指派分单</a> <a id="update"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true">修改审核人</a>
	</div>

	<div id="automaticSingle-dialog" class="easyui-dialog" title="自动派单"
		style="width: 800px; height: 180px;"
		data-options="iconCls:'icon-automaticSingle',resizable:true,modal:true,closed:true">
		<form id="automaticSingle-form" method="post">
			<table>
				<tr>
				</tr>
				<tr>
					<td>审核分单量：</td>
					<td><input id="auditlist" type="text" name="num1" /></td>
					<td>签约复核分单量：</td>
					<td><input id="contractcontract" type="text" name="num2" /></td>
				</tr>

				<tr>
					<td><a id="automaticSingle-save" href="javascript:void(0)"
						class="easyui-linkbutton"
						data-options="iconCls:'icon-save',plain:true">确认</a></td>
					<td><a
						href="javascript:$('#automaticSingle-dialog').dialog('close')"
						class="easyui-linkbutton"
						data-options="iconCls:'icon-cancel',plain:true">取消</a></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="submenu-dialog" class="easyui-dialog" title="请指定分配审单员"
		style="width: 400px; height: 150px;"
		data-options="iconCls:'icon-edit',resizable:true,modal:true,closed:true">
		<form id="submenu-form" method="post">
			<input type="hidden" name="id" id="submenu-form-id" />
			<table>
				<tr>
					<td>审核人：</td>
					<td  id="submenu-dialog1" style="display: none">
						<select  class="easyui-combobox"
						name="auditor" style="width: 150px"
						data-options="valueField:'text',textField:'text2',url:'submenu/getSubmenuName?submenuStatus=0',method:'get'">
						<option name="auditor" value="%"></option>
					</select>
					</td>
					<td  id="submenu-dialog2 " style="display: none;" >
						<select class="easyui-combobox"
						name="auditor" style="width: 150px"
						data-options="valueField:'text',textField:'text2',url:'submenu/getSubmenuName?submenuStatus=1',method:'get'">
						<option name="auditor" value="%"></option>
					</select>
					</td>
				</tr>
				<tr>
					<td><a id="submenu-save" href="javascript:void(0)"
						class="easyui-linkbutton"
						data-options="iconCls:'icon-save',plain:true">确认</a></td>
					<td><a href="javascript:$('#submenu-dialog').dialog('close')"
						class="easyui-linkbutton"
						data-options="iconCls:'icon-cancel',plain:true">取消</a></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="update-dialog" class="easyui-dialog" title="修改审单员"
		style="width: 400px; height: 150px;"
		data-options="iconCls:'icon-edit',resizable:true,modal:true,closed:true">
		<form id="submenu-form" method="post">
			<input type="hidden" name="id" id="update-form-id" />
			<table>
				<tr>
					<td>审核人：</td>
					<td id="update-dialog1" style="display: none">
						
						<select class="easyui-combobox"
						name="updateauditor" style="width: 150px"
						data-options="valueField:'text',textField:'text2',url:'submenu/getSubmenuName?submenuStatus=0',method:'get'">
						<option name="auditor" value="%"></option>							
					</select></td>
					<td id="update-dialog2" style="display: none;">
						<select class="easyui-combobox"
						name="updateauditor" style="width: 150px"
						data-options="valueField:'text',textField:'text2',url:'submenu/getSubmenuName?submenuStatus=1',method:'get'">
						<option name="auditor" value="%"></option>
					</select>
					</td>
					
				
				</tr>
				<tr>
					<td><a id="update-save" href="javascript:void(0)"
						class="easyui-linkbutton"
						data-options="iconCls:'icon-save',plain:true">确认</a></td>
					<td><a href="javascript:$('#update-dialog').dialog('close')"
						class="easyui-linkbutton"
						data-options="iconCls:'icon-cancel',plain:true">取消</a></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="jsp/CarLoan/submenu/submenu.js"></script>
</body>
</html>