<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
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
			<table class="table1" border="1">
				<caption class="caption1">车辆信息</caption>
				<tr class="tr1">
					<td class="td1"><label>机动车辆号牌</label></td>
					<td class="td1">111111</td>
					<td class="td1"><label>厂牌型号</label></td>
					<td class="td1">11111</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>发动机号</label></td>
					<td class="td1">11111</td>
					<td class="td1"><label>颜色</label></td>
					<td class="td1">11111</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>初次登录日期</label></td>
					<td class="td1">111111</td>
					<td class="td1"><label>年检有限期</label></td>
					<td class="td1">11111</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车架号</label></td>
					<td class="td1">11111</td>
					<td class="td1"><label>车辆评估价格</label></td>
					<td class="td1"><input type="text" ></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>目前已行驶里程</label></td>
					<td class="td1">11111</td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>身份证</label></td>
					<td class="td1"><label>交付</label>
					</td>
					<td class="td1"><label>车辆购置证/发票</label></td>
					<td class="td1"><label>交付</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>强交保险单</label></td>
					<td class="td1"><label>未交付</label></td>
					<td class="td1"><label>车辆钥匙</label></td>
					<td class="td1">交付2把</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆购置证/发票</label></td>
					<td class="td1"><label>交付</label></td>
					<td class="td1" ><label>车辆购置证/发票</label></td>
					<td class="td1" ><label>交付</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>机动车登记证</label></td>
					<td class="td1"><label>交付</label></td>
					<td class="td1"><label>商业保险单</label></td>
					<td class="td1"><label>交付</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆行驶证</label></td>
					<td class="td1"><label>交付</label></td>
					<td class="td1"><label>车辆原始发票</label></td>
					<td class="td1"><label>交付</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆完税证</label></td>
					<td class="td1"><label>交付</label></td>
					<td class="td1"><label>进口车辆证明</label></td>
					<td class="td1"><label>交付</label></td>
				</tr>
			</table>

			<table class="table1" border="1">
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

			<table class="table1" border="1">
				<caption class="caption1">车辆信息附件表</caption>
				<tr class="tr1">
					<td class="td1"><label>抵押车辆评估表</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件1</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆照片</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件2</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆登记证书（原件）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件3</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆行驶证正副本（原件）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件4</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>保单（交强险）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件5</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>保单（商业险）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件6</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>其他车辆附件</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件7</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>
		</form>

	<button class="btn btn-primary" onclick="Preservation()">保存</button>
		<button class="btn btn-primary" onclick="Submit()">提交</button>
		<button class="btn btn-primary" onclick="back()">返回</button>
			<button class="btn btn-primary" onclick="Fallback()">回退</button>
	</center>
		
	</div>
<script type="text/javascript" src="static/js/loanInput.js"></script>
</body>
</html>