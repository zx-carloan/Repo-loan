<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>车贷放款详细信息</title>
<!-- <style>
   table{
       cellspacing="0";
       background-color:#dfe2e2;
       margin-bottom:10px;
       
   }
   tr{
     width:100%;
     height:30px;
   }
   td{
      width:300px;
      height:30px;
   }
   caption{
     background-color:#cedcde;
      line-height:30px;
   }
   select{
      width:146px;
   }
   
</style> -->
</head>
<body>
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
					</select>
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
				<caption class="caption1">资产信息</caption>
				<tr class="tr1">
					<td class="td1"><label>有无房产</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">有无房贷</td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无车产</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">有无车贷</td>
					<td class="td1"><input type="text"></td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">信用信息</caption>
				<tr class="tr1">
					<td class="td1"><label>信用卡、贷款最大逾期状况（24个月内）</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">信用卡、贷款累计逾期状况（24个月内）</td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>信用卡额度使用率</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">信用卡、贷款审批查询次数（6个月内）</td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无其他信用贷款</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">有无信用卡</td>
					<td class="td1"><input type="text"></td>
				</tr>
			</table>


			<table class="table1" border="1">
				<caption class="caption1">家庭联系人信息</caption>
				<tr class="tr1">
					<td class="td1"><label>姓名</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>联系人类型</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">和本人关系</td>
					<td class="td1"><select id="relation" class="select1"
						name="relations">
							<option value="0">亲属</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位名称</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>家庭地址/单位地址</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">紧急联系人信息</caption>
				<tr class="tr1">
					<td class="td1"><label>姓名</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>联系人类型</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">和本人关系</td>
					<td class="td1"><select id="relation" class="select1"
						name="relations">
							<option value="0">亲属</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位名称</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>家庭地址/单位地址</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">借款需求</caption>
				<tr class="tr1">
					<td class="td1"><label>借款详细用途</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>月收入</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>可以承受的月还款额</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">希望申请最长还款期限</td>
					<td class="td1"><select id="relation" class="select1"
						name="relations">
							<option value="0">亲属</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>希望申请借款额度</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>希望申请借款额度</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>您从何处得知正合普惠</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>申请日期</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>业务员姓名</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>车贷专员</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">签约信息</caption>
				<tr class="tr1">
					<td class="td1"><label>借款总额</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>咨询服务费</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>月还款额</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">贷款期数</td>
					<td class="td1"><select id="period" class="select1"
						name="periods">
							<option value="0">亲属</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>产品名称</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>审批金额</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>约定放贷日</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>放款/还款银行</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>放款/还款账号</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>放款/还款开户银行(支行)</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">综合意见</caption>
				<tr class="tr1">
					<td class="td1"><label>产品类别 <span style="color: red;">*</span></label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>批准期数<span style="color: red;">*</span></label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>结论 <span style="color: red;">*</span></label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">审批额度 <span style="color: red;">*</span></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>分公司信审意见</label></td>
					<td class="td1" colspan="3"><textarea row="3" cols="60">
               </textarea></td>

				</tr>
				<tr class="tr1">
					<td class="td1"><label>总公司信审意见</label></td>
					<td class="td1" colspan="3"><textarea row="3" cols="60">
               
               </textarea></td>
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
				<caption class="caption1">签约附件列表</caption>
				<tr class="tr1">
					<td class="td1"><label>银行卡 <span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件1</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>机打申请表单 <span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件2</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>小额借款服务合同<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件3</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权扣款委托书<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件4</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权委托书<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件5</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>还款计划表<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件6</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>补充协议<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件7</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆买卖回购合同<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件8</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>授权委托书（车辆处理使用）<span
							style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 20px;">附件9</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆抵押照片<span style="color: red;">*</span></label></td>
					<td class="td1"><label style="margin-right: 13px;">附件10</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆入库照片</label></td>
					<td class="td1"><label style="margin-right: 13px;">附件11</label>
						<a href="#" download="文件名.txt"><button>下载</button></a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>
		</form>
		<button class="btn btn-primary" onclick="but()">返回</button>
	</div>
	<script type="text/javascript">
		function but() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/TrustManagement/loan/loanMoney.jsp"
			});
		}
	</script>
</body>
</html>