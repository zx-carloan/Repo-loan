<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="static/js/bootstrap.min.js"></script>
<title>车贷签约详细信息</title>
</head>
<body>

	<div class="easyui-panel" style="width: 100%; text-align: center">
		<!--<form id="vehicleInfo" method="post">  -->
			<table class="table1" border="1">
				<caption class="caption1">签约基本信息</caption>
				<tr class="tr1">
					<td class="td1"><label>借款合同编号</label></td>
					<td class="td1"><input type="text" name="contractNumber"  readonly="readonly" value="hhh"></td>
					<td class="td1"><label>借款人</label></td>
					<td class="td1"><input type="text"  name="client.loanName" readonly="readonly" value="hhhhhh"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>借款人手机号</label></td>
					<td class="td1"><input type="text" name="client.cellphone"   readonly="readonly" value="hhhhhh"></td>
					<td class="td1"><label>业务经理</label></td>
					<td class="td1"><input type="text"  name="manager"  readonly="readonly" value="hhhhhh"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>身份证号</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="client.identity"  value="hhhhhh"></td>
					<td class="td1"><label>借款总额</label></td>
					<td class="td1"><input type="text" readonly="readonly"  name="product.capital" value="hhhhhh"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>额度上限</label></td>
					<td class="td1"><input type="text" readonly="readonly"  name="product.capital"  value="hhhhhh"></td>
					<td class="td1"><label>产品名称</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="product.name"  value="hhhhhh"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>贷款期数</label></td>
					<td class="td1"><input type="text" readonly="readonly"  name="product.periods" value="hhhhhh"></td>
					<td class="td1"><label>借款用途</label></td>
					<td class="td1"><input type="text" readonly="readonly"  value="飘飘乐"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>审批金额</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>约定放贷日</label></td>
					<td class="td1"><input type="date"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>放款/还款银行</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>放款/还款账号</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">

					<td class="td1"><label>放款/还款开户银行(支行)</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
			</table>
		<!-- </form> -->
		
			<table class="table1" border="1">
				<caption class="caption1">签约附件列表</caption>
				<tr class="tr1">
					<td class="td1"><label>银行卡 <span style="color: red;">*</span></label></td>
					<td class="td1">
						<label style="margin-right: 13px;"></label>
						<form  id="bankCard" enctype="multipart/form-data" method="post"  >
						<label>选择文件：</label>	<input type="file" name="bankCard" /><br>
						<input type="submit" value="上传" /> </form>
					</td>
						
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>机打申请表单 <span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<form enctype="multipart/form-data" method="post">
						<label>选择文件：</label>	<input type="file" name="file1" /><br /> 
						<input type="submit" value="上传" /> </form> 
	
					</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>小额借款服务合同<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<form enctype="multipart/form-data" method="post">
						<label>选择文件：</label>	<input type="file" name="file1" /><br>
						<input type="submit" value="上传" /> </form> 
								
					</td>
						
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权扣款委托书<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<form enctype="multipart/form-data" method="post"
							>
						<label>选择文件：</label>	<input type="file" name="file1" /><br /> <input
								type="submit" value="上传" /> </form> </td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权委托书<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<form enctype="multipart/form-data" method="post" >
						<label>选择文件：</label>	<input type="file" name="file1" /><br />
							 <input 	type="submit" value="上传" /> </form> </td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>还款计划表<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<form enctype="multipart/form-data" method="post"
							>
						<label>选择文件：</label>	<input type="file" name="file1" /><br /> <input
								type="submit" value="上传" /> </form> </td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>补充协议<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<form enctype="multipart/form-data" method="post">
						<label>选择文件：</label>	<input type="file" name="file1" /><br /> <input
								type="submit" value="上传" /> </form> </td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆买卖回购合同<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<form enctype="multipart/form-data" method="post"
							>
						<label>选择文件：</label>	<input type="file" name="file1" /><br /> <input
								type="submit" value="上传" /> </form> </td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权委托书（车辆处理使用）<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<form enctype="multipart/form-data" method="post"
							>
						<label>选择文件：</label>	<input type="file" name="file1" /><br /> <input
								type="submit" value="上传" /> </form> </td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆抵押照片<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 13px;"></label>
						<form enctype="multipart/form-data" method="post" >
						<label>选择文件：</label>	<input type="file" name="file1" /><br /> 
						<input type="submit" value="上传" /> 
						</form>
					 </td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆入库照片</label></td>
					<td class="td1"><label style="margin-right: 13px;"></label>
						<form enctype="multipart/form-data" method="post">
						<label>选择文件：</label><input type="file" name="file1" /> <br>
										<input type="submit" value="上传" />
						</form>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>

		<div style="height: 80px;">
			<div id="div1"
				style="display: none; margin-left: 400px; width: 300px; background-color: gray;">
				<br> <label>回退意见</label> <input type="text"><br>
				<br>
				<button id="pueding" onclick="pueding()">确定</button>
			</div>
		</div>

		<button class="btn btn-primary" onclick="but()">还款试算</button>
		<button class="btn btn-primary" onclick="but()">打印签约合同</button>
		<button class="btn btn-primary" onclick="Preservation()">保存</button>
		<button class="btn btn-primary" onclick="Submit()">提交</button>
		<button class="btn btn-primary" onclick="back()">返回</button>
		<button class="btn btn-primary" onclick="Fallback()">回退</button>
	</div>


	<table class="easyui-datagrid" style="width: 100%; height: 200px"
		data-options="url:'#',method:'get',fitColumns:true,pagination:true,singleSelect:false">
		<thead>
			<tr>

				<th data-options="field:'order',width:20,align:'center',sortable:'true'">序号</th>
				<th data-options="field:'contractorNumber',width:20,align:'center',sortable:'true'">合同编号</th>
				<th data-options="field:'borrower',width:20,align:'center',sortable:'true'">借款人</th>
				<th data-options="field:'identityNumber',width:20,align:'center',sortable:'true'">期数</th>
				<th data-options="field:'loanDate',width:20,align:'center',sortable:'true'">期初本金</th>
				<th data-options="field:'SignDate',width:20,align:'center',sortable:'true'">剩余本金</th>
				<th data-options="field:'sumPrice',width:20,align:'center',sortable:'true'">结清还服务费</th>
				<th data-options="field:'actualPrice',width:20,align:'center',sortable:'true'">提前结清金额</th>

			</tr>
		</thead>
		<tbody>
			<tr id="1">
				<td style="width: 25px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
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
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
				<td style="width: 20px">123</td>
			</tr>
		</tbody>
	</table>
	<script type="text/javascript" src="static/js/signPage/signMessage.js"></script>
</body>
</html>