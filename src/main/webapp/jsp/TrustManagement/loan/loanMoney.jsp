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
		<div id="p" class="easyui-panel" title="当前位置：信审业务管理>车贷放款列表" style="width: 95%; ">
		<div style="margin: 20px 0;"></div>
			<input type="hidden"  name="status" value="8">
			<table>
			
				<tr>
					<td>合同编号：</td>
					<td><input id="contractNumber" class="easyui-textbox"
						data-options="prompt:'填写'"></td>
			
					<td>借款人：</td>
					<td><input id="loanName" class="easyui-textbox"
						data-options="prompt:'填写'"></td>
						
						<td>身份证号：</td>
						<td><input id="identity" class="easyui-textbox"
						data-options="prompt:'填写'"></td>
					<tr>	
						<td>产品类型：</td>
					<td><select id="productName" class="easyui-combobox"
						name="productName" style="width: 150px"
						data-options="valueField:'text',textField:'text2',url:'company/productType',method:'get'">
						<option name="productName" value="%"></option>
					</select>
					</td>
			
						<td>分公司：</td>
					<td><select id="companyName" class="easyui-combobox"
						name="companyName" style="width: 150px"
						data-options="valueField:'text',textField:'text2',url:'company/getName',method:'get'">
						<option name="companyName" value="%"></option>
					</select>
				</td>
						
					<td>	放款状态：</td>
					<td><select id="loanStatus"
					class="easyui-combobox" name="status" 
					style="width: 150px; height: 22px;">
					<option value="0">待放款</option>
					<option value="1">放款中</option>
					<option value="2">已放款</option>
					<option value="3">提现失败</option>
				</select>
				</td>
				
		

			<td><a id="query" href="javascript:void(0)"
						class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a><span style="margin-right: 50px">
					</td>
			<td>	<button id="detail" class="btn btn-primary">详细信息</button><span style="margin-right: 50px"></td>
			<td><button class="btn btn-primary"  id="loan">提交放款</button><span style="margin-right: 50px"></td>
		</tr>
		</table>
</div>

		<table id="tt" class="easyui-datagrid" style="width: 100%;height: 400px;" data-options=" url:'putLoans/page',method:'post',rownumbers:true,fitColumns:true,pagination:true,singleSelect:true">
			<thead>
				<tr>
					<th data-options="field:'id',hidden:true,width:20,sortable:'true'"></th>
					<th data-options="field:'contractNumber',width:120,align:'center',sortable:'true'">合同编号</th>
							<th data-options="field:'name',width:100,align:'center',sortable:'true',
					formatter:function(value,row){
							return row.client.name;
						}">借款人</th>
				   		<th
						data-options="field:'idCard',width:120,align:'center',
				formatter:function(value,row){
							return row.client.idCard;
						}">身份证号</th>
				     
					<th data-options="field:'signDate',width:120,align:'center',sortable:'true',
								formatter: function(contract,row,index){
					var retVal = '';
					if(row.contract != null){
						var date = new Date(row.contract.signDate);
						retVal = date.Format('yyyy-MM-dd');
					}
				return retVal;
			}">约定放贷日</th>
						     
					<th data-options="field:'signDate',width:120,align:'center',sortable:'true',
									formatter: function(contract,row,index){
					var retVal = '';
					if(row.contract != null){
						var date = new Date(row.contract.signDate);
						retVal = date.Format('yyyy-MM-dd');
					}
				return retVal;
			}">签约日</th>
			
					<th data-options="field:'capital',width:120,align:'center',sortable:'true',
						formatter: function(product,row){return row.product.capital
						}">合同额</th>
						
					<th data-options="field:'amount',width:120,align:'center',sortable:'true',
					formatter: function(contract,row){ if(row.contract !=null) return  row.contract.amount ;else return 1
						}">实际放款额</th>
						
					<th data-options="field:'periods',width:120,align:'center',sortable:'true',
						formatter: function(product,row){return row.product.periods}
					">借款期数</th>
					
					<th data-options="field:'name1',width:120,align:'center',sortable:'true',
						formatter: function(company,row){return  row.company.name}
					">分公司</th>
						<th data-options="field:'loanStatus',width:120,align:'center',sortable:'true',
					formatter: function(loanStatus){
					if(loanStatus ==0)return '未放款';
					if(loanStatus ==1)return '放款中';	
					if(loanStatus ==2)return '已放款';
					if(loanStatus ==3)return '取款失败';
					}
					">放款状态</th>
				</tr>
			</thead>
		</table>
	
	<script type="text/javascript" src="jsp/TrustManagement/loan/loanMoney.js"> </script>
</body>
</html>