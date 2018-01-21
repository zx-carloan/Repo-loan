<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>总公司信审审核</title>
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>

</head>
<body>
	<div id="p" class="easyui-panel" title="当前位置：车贷管理>车贷录入业务"
		style="width: 100%;">

		<center>
			<form id="vehicleInfo" method="post">
				<input type="hidden" id="id" name="id" value="${order.id }">
				<table class="table1" border="1">
					<tr class="tr1">
						<td class="td1"><label>回退意见</label></td>
						<td class="td1" style="width: 900px"><span>${order.returnOpinion }</span></td>
					</tr>
				</table>
				<table class="table1" border="1">
					<caption class="caption1">车辆信息</caption>
					<tr class="tr1">
						<td class="td1"><label>机动车辆号牌</label></td>
						<td class="td1"><input name="carId" type="text"></td>
						<td class="td1"><label>厂牌型号</label></td>
						<td class="td1"><input name="brand" type="text"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>发动机号</label></td>
						<td class="td1"><input name="engineId" type="text"></td>
						<td class="td1"><label>颜色</label></td>
						<td class="td1"><input name="color" type="text"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>初次登录日期</label></td>
						<td class="td1"><input name="registerDate" type="text"></td>
						<td class="td1"><label>年检有限期</label></td>
						<td class="td1"><input name="annualInspection" type="text"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车架号</label></td>
						<td class="td1"><input name="vin" type="text"></td>
						<td class="td1"><label>车辆评估价格</label></td>
						<td class="td1"><input name="assessmentPrice" type="text" disabled="disabled"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>目前已行驶里程</label></td>
						<td class="td1"><input name="xkm" type="text"></td>
						<td class="td1">&nbsp;</td>
						<td class="td1">&nbsp;</td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>身份证</label></td>
						<td class="td1"><input type="radio" value=0 name="getID"><label>交付</label>
							<input type="radio" value=1 name="getID"> <label>未交付</label> <input
							type="radio" value=2 name="getID"><label>原件</label> <input
							type="radio" value=3 name="getID"><label>复印件</label></td>
						<td class="td1"><label>车辆购置证/发票</label></td>
						<td class="td1"><input type="radio" value=0 name="getAfford"><label>交付</label><input
							type="radio" value=1 name="getAfford"><label>未交付</label></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>强交保险单</label></td>
						<td class="td1"><input type="radio" value=0 name="getSali"><label>交付</label><input
							type="radio" value=1 name="getSali"><label>未交付</label></td>
						<td class="td1"><label>车辆钥匙</label></td>
						<td class="td1"><input type="radio" value=0 name="getKey"><label>交付</label><input
							type="radio" value=1 name="getKey"><label>未交付</label><input
							type="text" name="keyNumber" style="width: 30px;"><label>把</label></td>
					</tr>
					
					<tr class="tr1">
						<td class="td1"><label>机动车登记证</label></td>
						<td class="td1"><input type="radio" value=0 name="getRegisterLicense"><label>交付</label><input
							type="radio" value=1 name="getRegisterLicense"><label>未交付</label></td>
						<td class="td1"><label>商业保险单</label></td>
						<td class="td1"><input type="radio" value=0 name="getInsurance"><label>交付</label><input
							type="radio" value=1 name="getInsurance"><label>未交付</label></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆行驶证</label></td>
						<td class="td1"><input type="radio" value=0 name="getDrivingLicense"><label>交付</label><input
							type="radio" value=1 name="getDrivingLicense"><label>未交付</label></td>
						<td class="td1"><label>车辆原始发票</label></td>
						<td class="td1"><input type="radio" value=0 name="getOriginalInvoice"><label>交付</label><input
							type="radio" value=1 name="getOriginalInvoice"><label>未交付</label></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆完税证</label></td>
						<td class="td1"><input type="radio" value=0 name="getTaxCertificate"><label>交付</label><input
							type="radio" value=1 name="getTaxCertificate"><label>未交付</label></td>
						<td class="td1"><label>进口车辆证明</label></td>
						<td class="td1"><input type="radio" value=0 name="getImportCertificate"><label>交付</label><input
							type="radio" value=1 name="getImportCertificate"><label>未交付</label></td>
					</tr>
				</table>

				<table class="table1" border="1">
					<caption class="caption1">车辆物品祥单</caption>
					<tr class="tr1">
						<td class="td1"><label>物品名称</label></td>
						<td class="td1" style="width: 500px"><input name="item1" type="text"
							style="width: 90px;">&nbsp;<input name="item2" type="text"
							style="width: 90px;">&nbsp;<input name="item3" type="text"
							style="width: 90px;">&nbsp;<input name="item4" type="text"
							style="width: 90px;">&nbsp;<input name="item5" type="text"
							style="width: 90px;">&nbsp;<input name="item6" type="text"
							style="width: 90px;">&nbsp;<input name="item7" type="text"
							style="width: 90px;">&nbsp;<input name="item8" type="text"
							style="width: 90px;">&nbsp;<input name="item9" type="text"
							style="width: 90px;">&nbsp;<input name="item10" type="text"
							style="width: 90px;"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>物品数量</label></td>
						<td class="td1"><input name="number1" type="text" style="width: 90px;">&nbsp;<input name="number2"
							type="text" style="width: 90px;">&nbsp;<input name="number3" type="text"
							style="width: 90px;">&nbsp;<input name="number4" type="text"
							style="width: 90px;">&nbsp;<input name="number5" type="text"
							style="width: 90px;">&nbsp;<input name="number6" type="text"
							style="width: 90px;">&nbsp;<input name="number7" type="text"
							style="width: 90px;">&nbsp;<input name="number8" type="text"
							style="width: 90px;">&nbsp;<input name="number9" type="text"
							style="width: 90px;">&nbsp;<input name="number10" type="text"
							style="width: 90px;"></td>
					</tr>
				</table>

				
			</form>

			<table class="table1" border="1">
					<caption class="caption1">车辆信息附件表</caption>
					<tr class="tr1">
						<td class="td1"><label>抵押车辆评估表</label></td>
						<td class="td1">
							<form enctype="multipart/form-data" method="post"
								action="carInfo/carAsseceForm" id="uploadcarAsseceForm">
								<input type="file" name="carAsseceForm"
									style="width: 170px; margin-left: 20px;">
								<button type="button" id="carAsseceFormbtn">上传</button>
							</form>
						</td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>

					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆照片</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="carInfo/carPic" id="uploadcarPic">
								<input type="file" name="carPic"
									style="width: 170px; margin-left: 20px;">
								<button type="button" id="carPicbtn">上传</button>
								</form>
								</td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆登记证书（原件）</label></td>
						<td class="td1">
						<form enctype="multipart/form-data" id="uploadcarRegisterForm"
								method="post" action="carInfo/carRegisterForm">
								<input type="file" name="carRegisterForm"
									style="width: 170px; margin-left: 20px;"><button type="button" id="carRegisterFormbtn">上传</button>
								</form>
						</td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆行驶证正副本（原件）</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="carInfo/drivingLisense" id="uploadcardrivingLisense">
								<input type="file" name="drivingLisense"
									style="width: 170px; margin-left: 20px;"><button type="button" id="drivingLisensebtn">上传</button></form></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>保单（交强险）</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="carInfo/sali" id="uploadsali">
								<input type="file" name="sali"
									style="width: 170px; margin-left: 20px;"><button type="button" id="salibtn">上传</button></form></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>保单（商业险）</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="carInfo/commerceinsurance" id="uploadcommerceinsurance">
								<input type="file" name="commerceinsurance"
									style="width: 170px; margin-left: 20px;"><button type="button" id="commerceinsurancebtn">上传</button></form></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>其他车辆附件</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="carInfo/otherAttachment" id="uploadotherAttachment">
								<input type="file" name="otherAttachment"
									style="width: 170px; margin-left: 20px;"><button type="button" id="otherAttachmentbtn">上传</button></form></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
				</table>



			<button class="btn btn-primary" onclick="Preservation()">保存</button>
			<button id="submit" class="btn btn-primary" onclick="Submit()">提交</button>
			<button class="btn btn-primary" onclick="back()">返回</button>
		</center>

	</div>
	<script type="text/javascript" src="static/js/loanInput.js"></script>
</body>
</html>