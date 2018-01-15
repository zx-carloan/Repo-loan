<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<table class="table1" border="1">
					<tr class="tr1">
						<td class="td1"><label>回退意见</label></td>
						<td class="td1" style="width: 900px"><span>12222222222222222222222222222</span></td>
					</tr>
				</table>
				<table class="table1" border="1">
					<caption class="caption1">车辆信息</caption>
					<tr class="tr1">
						<td class="td1"><label>机动车辆号牌</label></td>
						<td class="td1"><input type="text"></td>
						<td class="td1"><label>厂牌型号</label></td>
						<td class="td1"><input type="text"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>发动机号</label></td>
						<td class="td1"><input type="text"></td>
						<td class="td1"><label>颜色</label></td>
						<td class="td1"><input type="text"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>初次登录日期</label></td>
						<td class="td1"><input type="text"></td>
						<td class="td1"><label>年检有限期</label></td>
						<td class="td1"><input type="text"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车架号</label></td>
						<td class="td1"><input type="text"></td>
						<td class="td1"><label>车辆评估价格</label></td>
						<td class="td1"><input type="text" disabled="disabled"></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>目前已行驶里程</label></td>
						<td class="td1"><input type="text"></td>
						<td class="td1">&nbsp;</td>
						<td class="td1">&nbsp;</td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>身份证</label></td>
						<td class="td1"><input type="radio" name="1"><label>交付</label>
							<input type="radio" name="1"> <label>未交付</label> <input
							type="radio" name="1"><label>原件</label> <input
							type="radio" name="1"><label>复印件</label></td>
						<td class="td1"><label>车辆购置证/发票</label></td>
						<td class="td1"><input type="radio" name="2"><label>交付</label><input
							type="radio" name="2"><label>未交付</label></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>强交保险单</label></td>
						<td class="td1"><input type="radio" name="3"><label>交付</label><input
							type="radio" name="3"><label>未交付</label></td>
						<td class="td1"><label>车辆钥匙</label></td>
						<td class="td1"><input type="radio" name="4"><label>交付</label><input
							type="radio" name="4"><label>未交付</label><input
							type="text" style="width: 30px;"><label>把</label></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆购置证/发票</label></td>
						<td class="td1"><input type="radio" name="5"><label>交付</label><input
							type="radio" name="5"><label>未交付</label></td>
						<td class="td1"><label>车辆购置证/发票</label></td>
						<td class="td1"><input type="radio" name="6"><label>交付</label><input
							type="radio" name="6"><label>未交付</label></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>机动车登记证</label></td>
						<td class="td1"><input type="radio" name="7"><label>交付</label><input
							type="radio" name="7"><label>未交付</label></td>
						<td class="td1"><label>商业保险单</label></td>
						<td class="td1"><input type="radio" name="8"><label>交付</label><input
							type="radio" name="8"><label>未交付</label></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆行驶证</label></td>
						<td class="td1"><input type="radio" name="9"><label>交付</label><input
							type="radio" name="9"><label>未交付</label></td>
						<td class="td1"><label>车辆原始发票</label></td>
						<td class="td1"><input type="radio" name="10"><label>交付</label><input
							type="radio" name="10"><label>未交付</label></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆完税证</label></td>
						<td class="td1"><input type="radio" name="11"><label>交付</label><input
							type="radio" name="11"><label>未交付</label></td>
						<td class="td1"><label>进口车辆证明</label></td>
						<td class="td1"><input type="radio" name="12"><label>交付</label><input
							type="radio" name="12"><label>未交付</label></td>
					</tr>
				</table>

				<table class="table1" border="1">
					<caption class="caption1">车辆物品祥单</caption>
					<tr class="tr1">
						<td class="td1"><label>物品名称</label></td>
						<td class="td1" style="width: 500px"><input type="text"
							style="width: 90px;">&nbsp;<input type="text"
							style="width: 90px;">&nbsp;<input type="text"
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
						<td class="td1"><input type="text" style="width: 90px;">&nbsp;<input
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

				<table class="table1" border="1">
					<caption class="caption1">车辆信息附件表</caption>
					<tr class="tr1">
						<td class="td1"><label>抵押车辆评估表</label></td>
						<td class="td1">
							<form enctype="multipart/form-data" method="post"
								action="servlet/FileUploadServlet">
								<input type="file" name="file1"
									style="width: 170px; margin-left: 20px;"><input
									type="submit" value="上传" />
						</td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>

					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆照片</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="servlet/FileUploadServlet">
								<input type="file" name="file2"
									style="width: 170px; margin-left: 20px;"><input
									type="submit" value="上传" /></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆登记证书（原件）</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="servlet/FileUploadServlet">
								<input type="file" name="file33"
									style="width: 170px; margin-left: 20px;"><input
									type="submit" value="上传" /></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>车辆行驶证正副本（原件）</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="servlet/FileUploadServlet">
								<input type="file" name="file31"
									style="width: 170px; margin-left: 20px;"><input
									type="submit" value="上传" /></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>保单（交强险）</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="servlet/FileUploadServlet">
								<input type="file" name="file4"
									style="width: 170px; margin-left: 20px;"><input
									type="submit" value="上传" /></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>保单（商业险）</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="servlet/FileUploadServlet">
								<input type="file" name="file5"
									style="width: 170px; margin-left: 20px;"><input
									type="submit" value="上传" /></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>其他车辆附件</label></td>
						<td class="td1"><form enctype="multipart/form-data"
								method="post" action="servlet/FileUploadServlet">
								<input type="file" name="file6"
									style="width: 170px; margin-left: 20px;"><input
									type="submit" value="上传" /></td>
						<td class="td1"><label>附件大小：</label><span>111</span></td>
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