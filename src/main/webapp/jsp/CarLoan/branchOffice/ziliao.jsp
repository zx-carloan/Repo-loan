<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分公司初审</title>
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
</head>
<body>

	<span>当前位置：信审管理>分公司信审</span>

	<div class="easyui-panel" style="width: 100%; text-align: center">
		<form id="vehicleInfo" method="post">
			<table class="table1" border="1">
				<caption class="caption1">个人基本信息</caption>
				<tr class="tr1">
					<td class="td1"><label>申请人姓名</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>身份证号码</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>最高学历</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>申请人手机号码</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>户籍地址</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>申请人电话号码</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>婚姻状态</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>有无子女</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>房产状态</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>共同居住者</label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">配偶及其子女</option>
					</select></td>
				</tr>
				<tr>
					<td class="td1"><label>现住址</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>客户类型</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">工作信息</caption>
				<tr class="tr1">
					<td class="td1"><label>工作单位全称</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>工作单位地址</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位电话</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>邮政编码</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>进入该单位时间</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>所在部门</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>担任职务</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>公司规模</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>行业类别</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>单位性质</label></td>
					<td class="td1"><select id="property" class="select1"
						name="unit">
							<option value="0">个体户</option>
					</select></td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">借款需求</caption>
				<tr class="tr1">
					<td class="td1"><label>借款祥细用途</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">用收入</td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>可以承受的月还款额</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">希望申请还款最长期限</td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">一个月</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1">希望申请借款额度</td>
					<td class="td1"><input type="text"></td>
					<td class="td1">您从何得知正在普惠</td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1">申请日期</td>
					<td class="td1"><input type="date"></td>
					<td class="td1">业务员姓名</td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1">车贷专员</td>
					<td class="td1"><input type="text"></td>
				</tr>
			</table>

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
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>目前已行驶里程</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>身份证</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label><input type="checkbox"><label>原件</label><input
						type="checkbox"><label>复印件</label></td>
					<td class="td1"><label>车辆购置证/发票</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>强交保险单</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
					<td class="td1"><label>车辆钥匙</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label><input type="text"
						style="width: 30px;"><label>把</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆购置证/发票</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
					<td class="td1"><label>车辆购置证/发票</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>机动车登记证</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
					<td class="td1"><label>商业保险单</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆行驶证</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
					<td class="td1"><label>车辆原始发票</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆完税证</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
					<td class="td1"><label>进口车辆证明</label></td>
					<td class="td1"><input type="checkbox"><label>交付</label><input
						type="checkbox"><label>未交付</label></td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">车辆物品祥单</caption>
				<tr class="tr1">
					<td class="td1"><label>物品名称</label></td>
					<td class="td1"><input type="text" style="width: 90px;">&nbsp;<input
						type="text" style="width: 90px;">&nbsp;<input type="text"
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
						style="width: 90px;"></td>
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

			<table class="table1" border="1">
				<caption class="caption1">联系人信息(信息不能重复)</caption>
				<tr class="tr1">
					<td class="td1"><label>姓名</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>联系电话</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>联系是类型</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">和本人关系</td>
					<td class="td1"><select id="period" class="select1"
						name="periods">
							<option value="0">亲属</option>
							<option value="1">亲人</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位名姓</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>家庭住址/单位地址</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">电话核查列表</caption>
				<tr class="tr1">
					<td class="td1"><label>姓名<span style="color: red;">*</span></label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">和客户关系</td>
					<td class="td1"><select id="period" class="select1"
						name="periods">
							<option value="0">亲属</option>
							<option value="1">亲人</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>否是知晓贷款</label></td>
					<td class="td1"><input type="checkbox"><label>是</label><input
						type="checkbox"><label>否</label></td>
					<td class="td1">联系电话<span style="color: red;">*</span></td>
					<td class="td1"><label>区号</label><input type="text"
						style="width: 50px;">&nbsp;&nbsp;<input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>家庭地址</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
			</table>


			<table class="table1" border="1">
				<caption class="caption1">基本信息附件表</caption>
				<tr class="tr1">
					<td class="td1"><label>身份证（原件）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件1</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车贷申请表</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件2</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>其他附件</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件3</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
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

			<table class="table1" border="1">
				<caption class="caption1">综合意见</caption>
				<tr class="tr1">
					<td class="td1"><label>产品类型 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">-请选择</option>
							<option value="0">1</option>
					</select></td>
					<td class="td1"><label>批准期数 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">-请选择</option>
							<option value="0">1</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>结论 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">-请选择</option>
							<option value="0">1</option>
					</select></td>
					<td class="td1"><label>审批额度</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>分公司初审意见<span
							style="color: red;">*</span></label></td>
					<td class="td1" colspan="3"><textarea row="3" cols="60">
               </textarea></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>分公司初审意见<span
							style="color: red;">*</span></label></td>
					<td class="td1" colspan="3"><textarea row="3" cols="60">
               </textarea></td>
				</tr>
			</table>

		</form>
		<div style="height: 80px;">
			<div id="div1"
				style="display: none; margin-left: 400px;width: 300px;background-color:gray ;"><br>
				<label>回退意见</label>
				<input type="text"><br><br>
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
				href : "jsp/CarLoan/branchOffice/chuchaxun.jsp"
			});
		}
		

		function Fallback() {
			$("#div1").toggle();
		}
		function pueding() {
			$("#div1").hide("slow");
		}
		
	</script>
</body>
</html>