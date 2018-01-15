<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信用信息录入</title>
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
</head>
<body>
	<div id="p" class="easyui-panel" title="当前位置：车贷管理>车贷录入业务"
				style="width: 100%; ">
				<center>
		<form id="vehicleInfo" method="post">
			<table class="table1" border="1">
				<caption class="caption1">资产信息</caption>
				<tr class="tr1">
					<td class="td1"><label>有无房产 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">有</option>
							<option value="1">无</option>
					</select></td>
					<td class="td1"><label>有无房贷 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">有</option>
							<option value="1">无</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无车产 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">有</option>
							<option value="1">无</option>
					</select></td>
					<td class="td1"><label>有无车贷 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">有</option>
							<option value="1">无</option>
					</select></td>
				</tr>
			</table>
			<table class="table1" border="1">
				<caption class="caption1">信用信息</caption>
				<tr class="tr1">
					<td class="td1"><label>信用卡、贷款最大逾期状况(24个月内)</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>信用卡、贷款最大逾期次数(24个月内)</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>信用卡额度使用率</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">信用卡、贷款审批查询次数(6个月内)</td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无其它信用贷款</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>有无信用卡</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
			</table>

		</form>
		<button class="btn btn-primary" onclick="Preservation()">保存</button>
		<button class="btn btn-primary" onclick="Submit()">提交</button>
		<button class="btn btn-primary" onclick="back()">返回</button>
		</center>
	</div>
<script type="text/javascript" src="static/js/loanInput.js"></script>
</body>
</html>