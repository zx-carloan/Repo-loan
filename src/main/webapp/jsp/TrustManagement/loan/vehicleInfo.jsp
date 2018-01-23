<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ include file="../../header.jsp"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

</head>
<body>
	<div class="easyui-panel" style="width: 100%; text-align: center">
		<form id="vehicleInfo" method="post">
			<table class="table1" border="1">
				<caption class="caption1">个人基本信息</caption>
				<tr class="tr1">
					<td class="td1"><label>申请人姓名</label></td>
					<td class="td1">
					<input type="hidden" id="id" name="id" value="${order.id }">
					<input type="text" name="applicationName" value= "${order.client.name}" readonly="readonly"></td>
					<td class="td1"><label>身份证号码</label></td>
					<td class="td1"><input type="text" name="identity" value="${order.identity.identity }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>最高学历</label></td>
					<td class="td1"><input type="text" name="education" value="${order.client.education }" readonly="readonly"></td>
					<td class="td1"><label>申请人手机号码</label></td>
					<td class="td1"><input type="text" name="cellphone" value="${order.client.cellphone }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>户籍地址</label></td>
					<td class="td1"><input type="text" name="address" value="${order.client.address }" readonly="readonly"></td>
					<td class="td1"><label>申请人电话号码</label></td>
					<td class="td1"><input type="text" name="tel" value="${order.client.tel }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>婚姻状态</label></td>
					<td class="td1"><input type="text" name="marriage" value="${order.client.marriage }" readonly="readonly"></td>
					<td class="td1"><label>有无子女</label></td>
					<td class="td1"><input type="text" name="child" value="${order.client.child }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>房产状态</label></td>
					<td class="td1"><input type="text" name="house" value="${order.client.house }" readonly="readonly"></td>
					<td class="td1"><label>共同居住者</label></td>
					<td class="td1"><input type="text" id="partner" name="partner" value="${order.client.partner }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td class="td1"><label>现住址</label></td>
					<td class="td1"><input type="text" name="currentAddress" value="${order.client.currentAddress }" readonly="readonly"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>客户类型</label></td>
					<td class="td1"><input type="text" name="clientType" value="${order.client.clientType }" readonly="readonly"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">工作信息</caption>
				<tr class="tr1">
					<td class="td1"><label>工作单位全称</label></td>
					<td class="td1"><input type="text" name="companyName" value="${order.client.companyName }" readonly="readonly"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>工作单位地址</label></td>
					<td class="td1"><input type="text" name="companyAddress" value="${order.client.companyAddress }" readonly="readonly"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位电话</label></td>
					<td class="td1"><input type="text" name="companyTel" value="${order.client.companyTel }" readonly="readonly"></td>
					<td class="td1"><label>邮政编码</label></td>
					<td class="td1"><input type="text" name="postcode" value="${order.client.postcode }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>进入该单位时间</label></td>
					<td class="td1"><input type="text" name="preTime" value="<fmt:formatDate value='${order.client.preTime }' pattern='yyyy-MM-dd' />"  readonly="readonly"></td>
					<td class="td1"><label>所在部门</label></td>
					<td class="td1"><input type="text" name="department" value="${order.client.department }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>担任职务</label></td>
					<td class="td1"><input type="text" name="position" value="${order.client.position }" readonly="readonly"></td>
					<td class="td1"><label>公司规模</label></td>
					<td class="td1"><input type="text" name="companySize" value="${order.client.companySize }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>行业类别</label></td>
					<td class="td1"><input type="text" name="industryType" value="${order.client.industryType }" readonly="readonly"></td>
					<td class="td1"><label>单位性质</label></td>
					<td class="td1"><input type="text" name="industryType" id="industryType" value="${order.client.industryType }" readonly="readonly"></td>
				</tr>
			</table>

    	<table class="table1" border="1">
				<caption class="caption1">资产信息</caption>
				<tr class="tr1">
					<td class="td1"><label>有无房产 </label></td>
					
					<td  class="td1">有 </td>
					 
					<td class="td1"><label>有无房贷 </label></td>
					<td class="td1">有</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无车产 </label></td>
					<td>
						有
					</td>
					<td class="td1"><label>有无车贷 <span style="color: red;">*</span></label></td>
					<td>
					有
					</td>
				</tr>
			</table>
			
			
			<table class="table1" border="1">
				<caption class="caption1">信用信息</caption>
				<tr class="tr1">
					<td class="td1"><label>信用卡、贷款最大逾期状况(24个月内)</label></td>
					<td class="td1"><input type="text" id="maxOverdueMonth" name="maxOverdueMonth" value="${order.creditInfo.maxOverdueMonth }"></td>
					<td class="td1"><label>信用卡、贷款最大逾期次数(24个月内)</label></td>
					<td class="td1"><input type="text" id="maxOverdueNum" name="maxOverdueNum" value="${order.creditInfo.maxOverdueNum }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>信用卡额度使用率</label></td>
					<td class="td1"><input type="text" id="creditUsageRate" name="creditUsageRate" value="${order.creditInfo.creditUsageRate }"></td>
					<td class="td1">信用卡、贷款审批查询次数(6个月内)</td>
					<td class="td1"><input type="text" id="enquiriesNumber" name="enquiriesNumber" value="${order.creditInfo.enquiriesNumber }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无其它信用贷款</label></td>
					<td class="td1"><input type="text" id="hasOtheLoan" name="hasOtheLoan" value="${order.creditInfo.hasOtheLoan }"></td>
					<td class="td1"><label>有无信用卡</label></td>
					<td class="td1"><input type="text" id="hasCreditCard" name="hasCreditCard" value="${order.creditInfo.hasCreditCard }"></td>
				</tr>
			</table>


		    <c:forEach items="${contactor}" var="contactorList">
			<table class="table1" border="1">
				<caption class="caption1">联系人信息(信息不能重复)</caption>
				<tr class="tr1">
					<td class="td1"><label>姓名</label></td>
					<td class="td1"><input type="text" name="contractorName" value="${contactorList.name }" readonly="readonly"></td>
					<td class="td1"><label>联系电话</label></td>
					<td class="td1"><input type="text" name="phone" value=" ${contactorList.phone }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>联系人类型</label></td>
					<td class="td1"><input type="text" name="type" value="${contactorList.type }" readonly="readonly"></td>
					<td class="td1">和本人关系</td>
					<td class="td1"><input type="text" name="relation" value="${contactorList.relation }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位名字</label></td>
					<td class="td1"><input type="text" name="company" value="${contactorList.company }" readonly="readonly"></td>
					<td class="td1"><label>家庭住址/单位地址</label></td>
					<td class="td1"><input type="text" name="address" value="${contactorList.address }" readonly="readonly"></td>
				</tr>
			</table>
            </c:forEach>


			<table class="table1" border="1">
				<caption class="caption1">借款需求</caption>
				<tr class="tr1">
					<td class="td1"><label>借款详细用途</label></td>
					<td class="td1"><input type="text" name="loanPurpose" value="${order.client.loanPurpose }" readonly="readonly"></td>
					<td class="td1">月收入</td>
					<td class="td1"><input type="text" name="salary" value="${order.client.salary }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>可以承受的月还款额</label></td>
					<td class="td1"><input type="text" name="maxAffordable"  value="${order.client.maxAffordable }" readonly="readonly"></td>
					<td class="td1">希望申请还款最长期限</td>
					<td><input type="text" name="maxPaybackTime"  value="${order.client.maxPaybackTime }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1">希望申请借款额度</td>
					<td class="td1"><input type="text" name="minLoan" value="${order.client.minLoan }" readonly="readonly"></td>
					<td class="td1">您从何得知正在普惠</td>
					<td class="td1"><input type="text" name="sourceOfInfo" value="${order.client.sourceOfInfo }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1">申请日期</td> 
					<td class="td1">
						
					<input type="text" name="applyDate" value="<fmt:formatDate value='${order.client.applyDate }' pattern='yyyy-MM-dd' />" readonly="readonly">
					</td>
					<td class="td1">业务员姓名</td>
					<td class="td1"><input type="text" name="saler" value="${order.client.saler }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1">车贷专员</td>
					<td class="td1"><input type="text" name="valuer" value="${order.client.valuer }" readonly="readonly"></td>
				</tr>
			</table>

			<table class="table1" border="1">
				<caption class="caption1">签约信息</caption>
				<tr class="tr1">
					<td class="td1"><label>借款总额</label></td>
					<td class="td1"><input type="text" name="client.minLoan"  readonly="${order.client.maxLoan}" value="hhh"></td>
					<td class="td1"><label>咨询服务费</label></td>
					<td class="td1"><input type="text" name="contract.amount2"  readonly="readonly" value="200"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>月还款额</label></td>
					<td class="td1"><input type="text" name="client.salary"  readonly="readonly" value="${ order.client.salary}"></td>
					<td class="td1">贷款期数</td>
					<td class="td1"><input type="text" name="product.periods"  readonly="readonly" value="${order.product.periods }">></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>产品名称</label></td>
					<td class="td1"><input type="text" name="product.name"  readonly="readonly" value="${order.product.name }"></td>
					<td class="td1"><label>审批金额</label></td>
					<td class="td1"><input type="text" name="contract.amount"  readonly="readonly" value="${order.contract.amount }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>约定放贷日</label></td>
					<td class="td1"><input type="text" name="contract.payDate"  readonly="readonly" value="<fmt:formatDate value='${order.contract.payDate }'  pattern='yyyy-MM-dd' />"></td>
					<td class="td1"><label>放款/还款银行</label></td>
					<td class="td1"><input type="text" name="creditinfo.bank"  readonly="readonly" value="${order.contract.bank }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>放款/还款账号</label></td>
					<td class="td1"><input type="text" name="creditinfo.bankAccount"  readonly="readonly" value="${order.contract.bankAccount }"></td>
					<td class="td1"><label>放款/还款开户银行(支行)</label></td>
					<td class="td1"><input type="text" name="creditinfo.bankBranch"  readonly="readonly" value="${order.contract.bankBranch }"></td>
				</tr>
			</table>


			<table class="table1" border="1">
				<caption class="caption1">综合意见</caption>
				<tr class="tr1">
					<td class="td1"><label>产品类别 <span style="color: red;">*</span></label></td>
					<td class="td1"><input type="text" name="creditinfo.hasCreditCard"  readonly="readonly" value="${ order.product.name}"></td>
					<td class="td1"><label>批准期数<span style="color: red;">*</span></label></td>
					<td class="td1"><input type="text" name="creditinfo.hasCreditCard"  readonly="readonly" value="${order.opinion.loanTime }"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>结论 <span style="color: red;">*</span></label></td>
					<td class="td1"><input type="text" name="creditinfo.hasCreditCard"  readonly="readonly" value="${order.opinion.loanTime }"></td>
					<td class="td1">审批额度 <span style="color: red;">*</span></td>
					<td class="td1"><input type="text" name="creditinfo.hasCreditCard"  readonly="readonly" value="${ order.opinion.loanAmount}"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>分公司信审意见</label></td>
					<td class="td1" colspan="3"><textarea row="3" cols="60" >
					${ order.opinion.branchOpinion}
               </textarea></td>

				</tr>
				<tr class="tr1">
					<td class="td1"><label>总公司信审意见</label></td>
					<td class="td1" colspan="3"><textarea row="3" cols="60">
               ${ order.opinion.HQOpinion}
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
		<button class="btn btn-primary" onclick="back()">返回</button>
	</div>
	<script type="text/javascript">
	function back() {
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