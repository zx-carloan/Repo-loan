<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 激活el表达式 -->
	<%@ page isELIgnored="false" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>车贷签约复核详细信息</title>

</head>
<body>
	<div class="easyui-panel" style="width: 100%; text-align: center">
		<form id="vehicleInfo" method="post">
			<table class="table1" border="1">
				<caption class="caption1">签约基本信息</caption>
				<tr class="tr1">
					<td class="td1"><label>借款合同编号</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="contractNumber" value="${order.contractNumber}"></td>
					<td class="td1"><label>借款人</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="client.loanName" value="${order.client.loanName }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>借款人手机</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="client.cellphone" value="${order.client.cellphone }"></td>
					<td class="td1"><label>业务经理</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="manager" value="${order.manager }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>借款用途</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="client.loanPurpose" value="${order.client.loanPurpose }"></td>
					<td class="td1"><label>职务</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="client.position" value="${order.client.position }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>身份证号</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="client.identity" value="${order.client.identity }"></td>
					<td class="td1"><label>所属分公司</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="company.name" value="${order.company.name }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>额度上限</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="product.capital" value="${order.product.capital }"></td>
					<td class="td1"><label>产品类别</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="product.name" value="${order.product.name }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>期数</label></td>
					<td class="td1"><input type="text" readonly="readonly" name="product.periods" value="${order.product.periods }"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>信审意见</label></td>
					<td class="td1" colspan="3"><textarea row="3" cols="60" readonly="readonly" name="" value="${order.product.periods }">
               </textarea ></td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">基本信息附件列表</caption>
				<tr class="tr1">
					<td class="td1"><label>身份证(原件) <span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车贷审请表 <span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>其它附件<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载 </a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>
			
			<table class="table1" border="1">
				<caption class="caption1">车辆信息附件列表</caption>
				<tr class="tr1">
					<td class="td1"><label>抵押车辆评估表 <span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载 </a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆照片 <span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆登记证书(原件)<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载 </a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆行驶证正副本(原件)<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr><tr class="tr1">
					<td class="td1"><label>保单(强交险)<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>保单(商业险)<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a> </td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>其它车辆附件<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载 </a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>
			
			<table class="table1" border="1">
				<caption class="caption1">签约附件列表</caption>
				<tr class="tr1">
					<td class="td1"><label>银行卡 <span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>机打申请表单 <span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>小额借款服务合同<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权扣款委托书<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权委托书<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>还款计划表<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>补充协议<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆买卖回购合同<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权委托书（车辆处理使用）<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆抵押照片<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 13px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆入库照片</label></td>
					<td class="td1"><label style="margin-right: 13px;"></label>
						<a href="#">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>
		</form>
		<div style="height: 80px;">
			<div id="div1"
				style="display: none; margin-left: 400px; width: 300px; background-color: gray;">
				<br> <label>回退意见</label> <input type="text" id="yijian"><br> <br>
				<button id="pueding" onclick="pueding()">确定</button>
			</div>
		</div>

		<button class="btn btn-primary" onclick="Preservation()">保存</button>
		<button class="btn btn-primary" onclick="Submit()">提交</button>
		<button class="btn btn-primary" onclick="back()">返回</button>
		<button class="btn btn-primary" onclick="Fallback()">回退</button>
	</div>


	<script type="text/javascript">
	
		function back() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/TrustManagement/contractReview/contractReview.jsp"
			});
		}

		function Fallback() {
			$("#div1").toggle();
		}
		function pueding() {
			var yijian = $('#yijian').val();
			$.ajax({
				type:'get',
				url:'fuhe/yijian'+order.id,
				success:function(data){ 
					$.messager.show({
						title:'提示信息',
						msg:data,
						timeout:5000,
						showType:'slide'
					});
			
			
			$("#div1").hide("slow");
		}
	</script>
</body>
</html>