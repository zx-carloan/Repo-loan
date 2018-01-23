<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<%@ page isELIgnored="false" %>
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
		<form id="creditInfo" method="post" >
		<input type="hidden" name="orderId" value="${order.id }">
			<table class="table1" border="1">
				<caption class="caption1">资产信息</caption>
				<tr class="tr1">
					<td class="td1"><label>有无房产 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="hasHouse" name="hasHouse">
							<option value="0">有</option>
							<option value="1">无</option>
					</select></td>
					<td class="td1"><label>有无房贷 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="hasHouseLoan" name="hasHouseLoan">
							<option value="0">有</option>
							<option value="1">无</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无车产 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="hasCar" name="hasCar">
							<option value="0">有</option>
							<option value="1">无</option>
					</select></td>
					<td class="td1"><label>有无车贷 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="hasCarLoan" name="hasCarLoan">
							<option value="0">有</option>
							<option value="1">无</option>
					</select></td>
				</tr>
			</table>
			<table class="table1" border="1">
				<caption class="caption1">信用信息</caption>
				<tr class="tr1">
					<td class="td1"><label>信用卡、贷款最大逾期状况(24个月内)</label></td>
					<td class="td1"><input type="text" id="maxOverdueMonth" name="maxOverdueMonth" placeholder="请按照要求录入数字">
					</td>
					<td class="td1"><label>信用卡、贷款最大逾期次数(24个月内)</label></td>
					<td class="td1"><input type="text" id="maxOverdueNum" name="maxOverdueNum" placeholder="请按照要求录入数字"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>信用卡额度使用率</label></td>
					<td class="td1"><input type="text" id="creditUsageRate" name="creditUsageRate" placeholder="请按照要求录入数字"></td>
					<td class="td1">信用卡、贷款审批查询次数(6个月内)</td>
					<td class="td1"><input type="text" id="enquiriesNumber" name="enquiriesNumber" placeholder="请按照要求录入数字"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无其它信用贷款</label></td>
					<td class="td1">
					<select class="select1" id="hasOtheLoan" name="hasOtheLoan">
							<option value="0">有</option>
							<option value="1">无</option>
					</select>
					</td>
					<td class="td1"><label>有无信用卡</label></td>
					<td class="td1">
					<select class="select1" id="hasCreditCard" name="hasCreditCard">
							<option value="0">有</option>
							<option value="1">无</option>
					</select>
					</td>
				</tr>
			</table>

		</form>
		<button class="btn btn-primary" onclick="Preservation()">保存</button>
		<button class="btn btn-primary"  id="SubmitCredit" onclick="SubmitCredit()" >提交</button>
		<button class="btn btn-primary" onclick="back()">返回</button>
		</center>
	</div>
<script type="text/javascript" src="static/js/loanInput.js"></script>
<script type="text/javascript">
	$(function(){
		var flag = null;
		var reg1 = new RegExp("^[1-2][0-5]$");
		var reg2 = new RegExp("^[1-9][0-9]*$");
		var reg3 = new RegExp("^[0-6]$");
		
		function check1(){
			$("#maxOverdueMonth").mouseout(function(){
				$("#SubmitCredit").attr("disabled",false);
			});
			if($("#maxOverdueMonth").val()==null||!reg1.test($("#maxOverdueMonth").val())){
				return false;
			}else{
				return true;
			}
		}
		
		function check2(){
			$("#maxOverdueNum").mouseout(function(){
				$("#SubmitCredit").attr("disabled",false);
			});
			if($("#maxOverdueNum").val()==null||!reg1.test($("#maxOverdueNum").val())){
				return false;
			}else{
				return true;
			}
		}

		function check3(){
			$("#creditUsageRate").mouseout(function(){
				$("#SubmitCredit").attr("disabled",false);
			});
			if($("#creditUsageRate").val()==null||!reg2.test($("#creditUsageRate").val())){
				return false;
			}else{
				return true;
			}
		}
		
		function check4(){
			$("#enquiriesNumber").mouseout(function(){
				$("#SubmitCredit").attr("disabled",false);
			});
			if($("#enquiriesNumber").val()==null||!reg3.test($("#enquiriesNumber").val())){
				return false;
			}else{
				return true;
			}
		}
		
		$("#SubmitCredit").mouseover(function(){
			flag = check1()&&check2()&&check3()&&check4();
			console.log(flag);
			if(!flag){
				$("#SubmitCredit").attr("disabled",true);
				alert("请按照要求输入");
				$("#maxOverdueMonth").text("");
				$("#maxOverdueNum").text("");
				$("#creditUsageRate").text("");
				$("#enquiriesNumber").text("");
				flag=true;
			}
		}); 
		
		
	});
</script>
</body>
</html>