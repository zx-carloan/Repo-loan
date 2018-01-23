<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车辆价格评定</title>
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
</head>
<body>
		<div id="p" class="easyui-panel" title="当前位置：车贷管理>车贷录入业务"
				style="width: 100%; ">
		<center>
		<form id="vehicleInfo" method="post">
			<input type="hidden" name="id" value="${car.id }">
			<input type="hidden" name="orderId" value="${order.id }">
			<input type="hidden" name="version" value=50>
			<table class="table table-striped table-bordered" >
				<caption class="caption1">车辆信息</caption>
				<tr class="tr1">
					<td class="td1"><label>机动车辆号牌</label></td>
					<td class="td1">${car.carId }</td>
					<td class="td1"><label>厂牌型号</label></td>
					<td class="td1">${car.brand }</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>发动机号</label></td>
					<td class="td1">${car.engineId }</td>
					<td class="td1"><label>颜色</label></td>
					<td class="td1">${car.color }</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>初次登录日期</label></td>
					<td class="td1">${car.registerDate }</td>
					<td class="td1"><label>年检有限期</label></td>
					<td class="td1">${car.annualInspection }</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车架号</label></td>
					<td class="td1">${car.vin }</td>
					<td class="td1"><label>车辆评估价格</label></td>
					<td class="td1"><input type="text" id="valuePrice" name="valuePrice"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>目前已行驶里程</label></td>
					<td class="td1">${car.xkm }</td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>身份证</label></td>
					<td class="td1">
					<c:if test="${car.getID==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getID==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
					<td class="td1"><label>车辆购置证/发票</label></td>
					<td class="td1">
					<c:if test="${car.getAfford==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getAfford==1 }">
					    <label>未交付</label>
					</c:if>
					 </td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>强交保险单</label></td>
					<td class="td1">
					<c:if test="${car.getSali==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getSali==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
					<td class="td1"><label>车辆钥匙</label></td>
					<td class="td1">交付2把</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆购置证/发票</label></td>
					<td class="td1">
					<c:if test="${car.getAfford==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getAfford==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
					<td class="td1" ><label>车辆购置证/发票</label></td>
					<td class="td1" >
					<c:if test="${car.getAfford==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getAfford==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>机动车登记证</label></td>
					<td class="td1">
					<c:if test="${car.getRegisterLicense==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getRegisterLicense==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
					<td class="td1"><label>商业保险单</label></td>
					<td class="td1">
					<c:if test="${car.getInsurance==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getInsurance==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆行驶证</label></td>
					<td class="td1">
					<c:if test="${car.getDrivingLicense==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getDrivingLicense==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
					<td class="td1"><label>车辆原始发票</label></td>
					<td class="td1">

					<c:if test="${car.getOriginalInvoice==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getOriginalInvoice==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆完税证</label></td>
					<td class="td1">
					<c:if test="${car.getTaxCertificate==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getTaxCertificate==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
					<td class="td1"><label>进口车辆证明</label></td>
					<td class="td1">

					<c:if test="${car.getImportCertificate==0 }">
					    <label>交付</label>
					</c:if>
					<c:if test="${car.getImportCertificate==1 }">
					    <label>未交付</label>
					</c:if>
					</td>
				</tr>
			</table>

			<table class="table table-striped table-bordered" >
				<caption class="caption1">车辆物品祥单</caption>
				<tr class="tr1">
					<td class="td1"><label>物品名称</label></td>
					<td class="td1" style="width: 500px"><input type="text" style="width: 90px;">&nbsp;<input
						type="text" style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>物品数量</label></td>
					<td class="td1" ><input type="text" style="width: 90px;">&nbsp;<input
						type="text" style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;">&nbsp;<input type="text"
						style="width: 90px;"></td>
				</tr>
			</table>

			<table class="table table-striped table-bordered" >
				<caption class="caption1">车辆信息附件表</caption>
				<tr class="tr1">
					<td class="td1"><label>抵押车辆评估表</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件1</label>
						<c:if test="${car.carAsseceForm!=null}">
						<a href="carInfo/download?filename=${car.carAsseceForm}">
						下载
						</a>
						</c:if>
						</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆照片</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件2</label>
						<c:if test="${car.carPic!=null}">
						<a href="carInfo/download?filename=${car.carPic}">
						下载
						</a>
						</c:if>
						</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆登记证书（原件）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件3</label>
						<c:if test="${car.carRegisterForm!=null}">
						<a href="carInfo/download?filename=${car.carRegisterForm}">
						下载
						</a>
						</c:if>
						</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆行驶证正副本（原件）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件4</label>
						<c:if test="${car.drivingLisense!=null}">
						<a href="carInfo/download?filename=${car.drivingLisense}">
						下载
						</a>
						</c:if>
						</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>保单（交强险）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件5</label>
						<c:if test="${car.sali!=null}">
						<a href="carInfo/download?filename=${car.sali}">
						下载
						</a>
						</c:if>
						</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>保单（商业险）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件6</label>
						<c:if test="${car.commerceinsurance!=null}">
						<a href="carInfo/download?filename=${car.commerceinsurance}">
						下载
						</a>
						</c:if>
						</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>其他车辆附件</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件7</label>
						<c:if test="${car.otherAttachment!=null}">
						<a href="carInfo/download?filename=${car.otherAttachment}">
						下载
						</a>
						</c:if>
						</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>
		</form>
		<button class="btn btn-primary" onclick="Preservation()">保存</button>
		<button class="btn btn-primary" id="SubmitPrice" onclick="SubmitPrice()">提交</button>
		<button class="btn btn-primary" onclick="back()">返回</button>
		<button class="btn btn-primary" onclick="Fallback()">回退</button>
		<div id="rollbackBlock" style="border: 1px;width: 200px;height: 100px;background-color:aqua;display: none;">
			<form action="carInfo/rollback">
				<input type="hidden" id="rollbackCarId" value="${order.id }">
				<label style="margin-top: 100px;">请输入回退意见</label>
				<input type="text" id="rollbackOpinion">
				<button type="button" id="rollbackbtn">提交</button>
				<button type="button" id="closeRollback">关闭</button>
			</form>
		</div>
	</center>
		
	</div>
<script type="text/javascript" src="static/js/loanInput.js"></script>
<script type="text/javascript">
	$(function(){
		
		var flag = null;
		var reg1 = new RegExp("^[1-9][0-9]7$");
		function check1(){
			$("#valuePrice").mouseout(function(){
				$("#SubmitPrice").attr("disabled",false);
			});
			if($("#valuePrice").val()==null||!reg1.test($("#valuePrice").val())){
				return false;
			}else{
				return true;
			}
		}
		
		$("#SubmitPrice").mouseover(function(){
			flag = check1();
			console.log(flag);
			if(!flag){
				alert("请按照要求输入");
				$("#SubmitPrice").attr("disabled",true);
				$("#valuePrice").text("");
				flag=true;
			}
		}); 
	});
</script>
</body>
</html>