<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增身份证信息</title>
<base href="<%=basePath%>">
</head>
<body>
	<span style="margin-left: 10px;">当前位置：客户信息读取>身份证信息读取</span>
	<div class="easyui-panel" style="width: 100%; text-align: center">
		<form id="add" method="get" onsubmit="return submits()">
			<table class="table1" border="1">
				<tr class="tr1">
					<td class="td1"><label>姓名 <span style="color: red">*</span></label></td>
					<td class="td1"><input class="easyui-validatebox" id="name"
						type="text"><span id="nameSpan"
						style="color: red; position: absolute;"></span></td>
					<td class="td1"><label>性别 <span style="color: red">*</span></label></td>
					<td class="td1"><input class="gender" name="gender"
						type="radio" value="1">男 <span style="margin-left: 20px;"></span>
						<input class="gender" class="easyui-validatebox" name="gender"
						type="radio" value="0">女 <span id="genderSpan"
						style="color: red; position: absolute;"></span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>民族 <span style="color: red">*</span></label></td>
					<td class="td1"><select id="ethic" style="width: 140px;"
						name="">
							<option value="0">汉族</option>
							<option value="1">蒙古族</option>
							<option value="2">维吾尔族</option>
					</select> <span id="ethicSpan" style="color: red; position: absolute;"></span>
					</td>
					<td class="td1"><label>出生年月 <span style="color: red">*</span></label></td>
					<td class="td1"><input class="easyui-validatebox" id="birth"
						class="test" type="date"> <span id="birthSpan"
						style="color: red; position: absolute;"></span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>地址 <span style="color: red">*</span></label></td>
					<td class="td1" colspan="3"><input id="address" type="text"
						style="width: 500px;"> <span id="addressSpan"
						style="color: red; position: absolute;"></span></td>

				</tr>
				<tr class="tr1">
					<td class="td1"><label>身份证号 <span style="color: red">*</span></label></td>
					<td class="td1"><input id="identity" type="text"><span
						id="identitySpan" style="color: red; position: absolute;"></span></td>
					<td class="td1"><label>发证机关 <span style="color: red">*</span></label></td>
					<td class="td1"><input id="licenseIssuingAuthority"
						type="text"><span id="licenseIssuingAuthoritySpan"
						style="color: red; position: absolute;"></span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有效期开始 <span style="color: red">*</span></label></td>
					<td class="td1"><input id="dateBegin" type="date"> <span
						id="dateBeginSpan" style="color: red; position: absolute;"></span></td>
					<td class="td1"><label>有效期结束 <span style="color: red">*</span></label></td>
					<td class="td1"><input id="dateEnd" type="date"> <span
						id="dateEndSpan" style="color: red; position: absolute;"></span></td>
				</tr>
				<tr>
					<td class="td1"><label>产品类型</label></td>
					<td class="td1"><select id="productType" style="width: 140px;"
						id="" class="" name="">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
					</select> <span id="productTypeSpan" style="color: red; position: absolute;"></span>
					</td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
			</table>
			<input type="submit" value="提交"> <span
				style="margin-left: 30px">&nbsp;</span> <input id="back"
				type="button" value="返回">
		</form>
	</div>
	<script>
		var ifFalse_1 = false;
		var ifFalse_2 = false;
		var ifFalse_3 = false;
		var ifFalse_4 = false;
		var ifFalse_5 = false;
		var ifFalse_6 = false;
		var ifFalse_7 = false;
		var ifFalse_8 = false;
		var ifFalse_9 = false;
		var ifFalse_10 = false;
		$(function() {
			//名字判断
			$("#name").blur(function() {
				if ($(this).val() == '') {
					$("#nameSpan").text("不能为空");
					ifFalse_1 = false;
				} else {
					$("#nameSpan").text("");
					ifFalse_1 = true;
				}
				console.log(ifFalse_1);
			});
			//性别判断
			$(".gender").blur(function() {
				if ($(this).val() == '') {
					$("#genderSpan").text("不能为空");
					ifFalse_2 = false;
				} else {
					$("#genderSpan").text("");
					ifFalse_2 = true;
				}
				console.log(ifFalse_2);
			});
			//民族判断
			$("#ethic").blur(function() {
				if ($(this).val() == '') {
					$("#ethicSpan").text("不能为空");
					ifFalse_3 = false;
				} else {
					$("#ethicSpan").text("");
					ifFalse_3 = true;
				}
				console.log(ifFalse_3);
			});

			//出现年月判断
			$("#birth").blur(function() {
				if ($(this).val() == '') {
					$("#birthSpan").text("不能为空");
					ifFalse_4 = false;
				} else {
					$("#birthSpan").text("");
					ifFalse_4 = true;
				}
				console.log(ifFalse_4);
			});

			//地址判断
			$("#address").blur(function() {
				if ($(this).val() == '') {
					$("#addressSpan").text("不能为空");
					ifFalse_5 = false;
				} else {
					$("#addressSpan").text("");
					ifFalse_5 = true;
				}
				console.log(ifFalse_5);
			});

			//身份证号判断
			$("#identity").blur(function() {
				if ($(this).val() == '') {
					$("#identitySpan").text("不能为空");
					ifFalse_6 = false;
				} else {
					$("#identitySpan").text("");
					ifFalse_6 = true;
				}
				console.log(ifFalse_6);
			});

			//发证机关判断
			$("#licenseIssuingAuthority").blur(function() {
				if ($(this).val() == '') {
					$("#licenseIssuingAuthoritySpan").text("不能为空");
					ifFalse_7 = false;
				} else {
					$("#licenseIssuingAuthoritySpan").text("");
					ifFalse_7 = true;
				}
				console.log(ifFalse_7);
			});

			//开始有效期判断
			$("#dateBegin").blur(function() {
				if ($(this).val() == '') {
					$("#dateBeginSpan").text("不能为空");
					ifFalse_8 = false;
				} else {
					$("#dateBeginSpan").text("");
					ifFalse_8 = true;
				}
				console.log(ifFalse_8);
			});
			//结束有效期判断
			$("#dateEnd").blur(function() {
				if ($(this).val() == '') {
					$("#dateEndSpan").text("不能为空");

					ifFalse_9 = false;
				} else {
					$("#dateEndSpan").text("");
					ifFalse_9 = true;
				}
				console.log(ifFalse_9);
			});

			$("#back").click(function() {
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : "jsp/customService/informationEntry/IDinfoReadnig.jsp"
				});
			});

			/* //产品类型判断
			 $("#productType").blur(function(){
				 if($(this).val()==''){
					 $("productTypeSpan").text("不能为空");
					 ifFalse_10=false;
				 }else{
					 $("#productTypeSpan").text("");
					 ifFalse_10=true;
				 }
				 console.log(ifFalse_10);
			 }); */

			/*  $("#submitInfo").click(function(event){
				var isValid =ifFalse_1&&ifFalse_2&&ifFalse_3&&ifFalse_4&&ifFalse_5&&ifFalse_6&&ifFalse_7&&ifFalse_8&&ifFalse_8&&ifFalse_10;
				console.log("submit="+isValid);
				if(!isValid){
					console.log("submit1="+isValid);
					event.preventDefault();
				}else{
					$.ajax({
						
					})
				}
				
			});  */

			/*  function formSubmit(){
				var isValid =ifFalse_1&&ifFalse_2&&ifFalse_3&&ifFalse_4&&ifFalse_5&&ifFalse_6&&ifFalse_7&&ifFalse_8&&ifFalse_8&&ifFalse_10;
				return isValid;
			} 
			 */
			/*  $("#button_2").on("click",function(e){
			  var isValid =ifFalse_1&&ifFalse_2&&ifFalse_3&&ifFalse_4&&ifFalse_5&&ifFalse_6&&ifFalse_7&&ifFalse_8&&ifFalse_8&&ifFalse_10;
			  if(!isValid){
				  console.log("wwwww")
				  e.preventDefault()
			  }else{
				  $("#viewDiv").panel({
						iconCls : "icon-add",
						collapsible : true,
						minimizable : true,
						maximizable : true,
						closable : true,
						href : "jsp/customService/IDinfoReadnig.jsp"
					});
			  }
			 */

			/*  $('#submitInfo').form('submit', {
				onSubmit: function(){ 
					var isValid =ifFalse_1&&ifFalse_2&&ifFalse_3&&ifFalse_4&&ifFalse_5&&ifFalse_6&&ifFalse_7&&ifFalse_8&&ifFalse_8&&ifFalse_10;
					console.log("submit="+isValid);
					return isValid;	// 返回false将停止form提交 
				
				},
				success: function(){
					url:"jsp/customService/IDinfoReadnig.jsp";
						
				}
			}); 
			 */
		});
		//方法写在里面找不到
		function submits() {
			var isValid = ifFalse_1 && ifFalse_2 && ifFalse_3 && ifFalse_4
					&& ifFalse_5 && ifFalse_6 && ifFalse_7 && ifFalse_8
					&& ifFalse_9;
			console.log("submit1=" + isValid);
			if (!isValid) {
				$.messager.confirm('Confirm', '您还有未填项', function(r) {
					if (r) {
						// exit action;

					}
				});
			} else {

				$.ajax({
					type : "post",
					dataType : "json",
					url : "#",
					data : $("#add").serialize(),
					success : function(data) {
						console.log(data);
					}
				});

			}
			return isValid;
		}
	</script>
</body>
</html>