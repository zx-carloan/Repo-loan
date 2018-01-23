<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
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
		 <c:forEach items="${list }" var="carLists">
			<table class="table1" border="1">
				<caption class="caption1">车辆信息</caption>
				<tr class="tr1">
					<td class="td1"><label>机动车辆号牌</label></td>
					<td class="td1"><input type="text" name="carId" value="${carLists.carId }" readonly="readonly"></td>
					<td class="td1"><label>厂牌型号</label></td>
					<td class="td1"><input type="text" name="brand" value="${carLists.brand}" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>发动机号</label></td>
					<td class="td1"><input type="text" name="engineId" value="${carLists.engineId }" readonly="readonly"></td>
					<td class="td1"><label>颜色</label></td>
					<td class="td1"><input type="text" name="color" value="${carLists.color }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>初次登录日期</label></td>
					<td class="td1"><input type="text" name="registerDate" value="<fmt:formatDate value='${carLists.registerDate }' pattern='yyyy-MM-dd' />" readonly="readonly"></td>
					<td class="td1"><label>年检有限期</label></td>
					<td class="td1"><input type="text" name="annualInspection" value="${carLists.annualInspection }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车架号</label></td>
					<td class="td1"><input type="text" name="vin" value="${carLists.vin }" readonly="readonly"></td>
					<td class="td1"><label>车辆评估价格</label></td>
					<td class="td1"><input type="text" name="assessmentPrice" value="${carLists.assessmentPrice }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>目前已行驶里程</label></td>
					<td class="td1"><input type="text" name="xkm" value="${carLists.xkm }" readonly="readonly"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>身份证</label></td>
					<td class="td1">
					<c:if test="${carLists.getID==1 }">
					   <label>未交付</label><label>原件</label>
					</c:if>
					<c:if test="${carLists.getID==0 }">
					    <label>交付</label>
					</c:if>
					</td>
					<td class="td1"><label>车辆购置证/发票</label></td>
					<td class="td1">
					<c:if test="${carLists.getAfford==1 }">
					<label>交付</label>
				    </c:if>
				    <c:if test="${carLists.getAfford==0 }">
					<label>未交付</label>
				    </c:if>
					</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>强交保险单</label></td>
					<td class="td1">
					<c:if test="${carLists.getSali==1 }">
					   <label>交付</label>
					</c:if>
					<c:if test="${carLists.getSali==0 }">
						<label>未交付</label>
					</c:if>
				   </td>
				   
					<td class="td1"><label>车辆钥匙</label></td>
					<td class="td1">
					<c:if test="${carLists.getKey==1 }">
					<label>未交付</label><input type="text"
					   value="${carLists.keyNumber }" name="keyNumber"	readonly="readonly" style="width: 30px;"><label>把</label>
					</c:if>	
					<c:if test="${carLists.getKey==0 }">
		            <label>交付</label>
					<input type="text" name="keyNumber" value="${carLists.keyNumber }"
					readonly="readonly"	style="width: 30px;"><label>把</label>
					</c:if>
						</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>机动车登记证</label></td>
					<td class="td1">
					<c:if test="${carLists.getRegisterLicense==1 }">
				   <label>交付</label>
					</c:if>
					<c:if test="${carLists.getRegisterLicense==0 }">
					<label>未交付</label>
					</c:if>
					</td>
					<td class="td1"><label>商业保险单</label></td>
					<td class="td1">
					<c:if test="${carLists.getInsurance==0 }">
					<label>未交付</label>
					</c:if>
					<c:if test="${carLists.getInsurance==1 }">
					<label>交付</label>
					</c:if>
					</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆行驶证</label></td>
					<td class="td1">
					<c:if test="${carLists.getDrivingLicense==0 }">
				     <label>未交付</label>
					</c:if>
					<c:if test="${carLists.getDrivingLicense==1 }">
					<label>交付</label>
					</c:if>
					</td>
					<td class="td1"><label>车辆原始发票</label></td>
					<td class="td1">
					<c:if test="${carLists.getOriginalInvoice==0 }">
				     <label>未交付</label>
					</c:if>
					<c:if test="${carLists.getOriginalInvoice==1 }">
					<label>交付</label>
					</c:if>
					</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆完税证</label></td>
					<td class="td1">
					<c:if test="${carLists.getTaxCertificate==0}">
				     <label>未交付</label>
					</c:if>
					<c:if test="${carLists.getTaxCertificate==1 }">
					<label>交付</label>
					</c:if>
					</td>
					<td class="td1"><label>进口车辆证明</label></td>
					<td class="td1">
					<c:if test="${carLists.getImportCertificate==1 }">
					<label>交付</label>
					</c:if>
					<c:if test="${carLists.getImportCertificate==0 }">
					<label>未交付</label>
					</c:if>
					</td>
				</tr>
			</table>
            </c:forEach>
			<table class="table1" border="1">
				<caption class="caption1">车辆物品详单</caption>
				<tr class="tr1">
					<td class="td1"><label>物品名称</label></td>
					<td colspan="6">
					
					<c:forEach items="${item}" var="itemList">
					<input type="text" value="${itemList.name }" readonly="readonly" style="width: 90px;">&nbsp;
					</c:forEach>
					</td>
					
				</tr>
				<tr class="tr1">
					<td class="td1"><label>物品数量</label></td>
					<td class="td1" colspan="3">
					<c:forEach items="${item}" var="itemList">
					<input type="text" readonly="readonly" name="number" value="${itemList.number }" style="width: 90px;">&nbsp;
					</c:forEach>
			       </td>
				</tr>
			</table>
            <table class="table1" border="1">
				<caption class="caption1">资产信息</caption>
				<tr class="tr1">
					<td class="td1"><label>有无房产 <span style="color: red;">*</span></label></td>
					<c:if test="${order.creditInfo.hasHouse==0 }"> 
					<td  class="td1">
					<select style="width:147px" id="hasHouse" name="hasHouse">
					     <option value="0" selected="selected">无</option>
					     <option value="1">有</option>
					</select>
					 </c:if>
					 <c:if test="${order.creditInfo.hasHouse==1 }"> 
					   <td  class="td1">
					   <select style="width:147px" id="hasHouse" name="hasHouse">
					     <option value="0" selected="selected">无</option>
					     <option value="1">有</option>
				     	</select>
					 </c:if>
					 
					<td class="td1"><label>有无房贷 <span style="color: red;">*</span></label></td>
					<td class="td1">
					<c:if test="${order.creditInfo.hasHouseLoan==0 }"> 
					   <select style="width:147px" id="hasHouseLoan" name="hasHouseLoan">
					       <option value="0" selected="selected">无</option>
					       <option value="1">有</option>
					   </select>
				  </c:if>
					<c:if test="${order.creditInfo.hasHouseLoan==1 }">
					   <select style="width:147px" id=hasHouseLoan name="hasHouseLoan">
					       <option value="0">无</option>
					       <option value="1" selected="selected">有</option>
					    </select>
					</c:if>  
					</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无车产 <span style="color: red;">*</span></label></td>
					<td>
					<c:if test="${order.creditInfo.hasCar==0 }">
					    <select style="width:147px" id=hasCar name="hasCar">
					       <option value="0"  selected="selected">无</option>
					       <option value="1">有</option>
					    </select>
					 </c:if>
					<c:if test="${order.creditInfo.hasCar==1 }">
					   <select style="width:147px" id=hasCar name="hasCar">
					       <option value="0">无</option>
					       <option value="1"  selected="selected">有</option>
					    </select>
					</c:if> 
					</td>
					<td class="td1"><label>有无车贷 <span style="color: red;">*</span></label></td>
					<td>
					<c:if test="${order.creditInfo.hasCarLoan==0 }">
					    <select style="width:147px" id=hasCarLoan name="hasCarLoan">
					       <option value="0"  selected="selected">无</option>
					       <option value="1">有</option>
					    </select>
					</c:if>
					<c:if test="${order.creditInfo.hasCarLoan==1 }">
					    <select style="width:147px" id=hasCarLoan name="hasCarLoan">
					       <option value="0">无</option>
					       <option value="1" selected="selected">有</option>
					    </select>
					</c:if> 
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
          
            <c:forEach items="${Contactor }" var="contactorList">
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

			<table class="table1" border="1">
				<caption class="caption1">电话核查列表</caption>
				<tr class="tr1">
					<td class="td1"><label>姓名<span style="color: red;">*</span></label></td>
					<td class="td1"><input type="text" name="contractorName" value="${contactorList.name }" readonly="readonly"></td>
					<td class="td1">和客户关系</td>
					<td class="td1"><input type="text" name="relation" value="${contactorList.relation }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>否是知晓贷款</label></td>
					<td class="td1"><input id="" name="" type="checkbox"><label>是</label><input
						type="checkbox"><label>否</label></td>
					<td class="td1">联系电话<span style="color: red;">*</span></td>
					<td class="td1"><label>区号</label><input type="text" value="86" readonly="readonly"
						style="width: 50px;">&nbsp;&nbsp;<input type="text" name="phone" value=" ${contactorList.phone }" readonly="readonly"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>家庭地址</label></td>
					<td class="td1"><input type="text" name="address_2" value="${contactorList.address }" readonly="readonly"></td>
				</tr>
			</table>
            </c:forEach>

			<table class="table1" border="1">
				<caption class="caption1">基本信息附件表</caption>
				<tr class="tr1">
					<td class="td1"><label>身份证（原件）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件1</label>
						<a href="branchCompany/download?filename=1.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车贷申请表</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件2</label>
						<a href="branchCompany/download?filename=2.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>其他附件</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件3</label>
						<a href="branchCompany/download?filename=3.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>


			<table class="table1" border="1">
				<caption class="caption1">车辆信息附件表</caption>
				<tr class="tr1">
					<td class="td1"><label>抵押车辆评估表</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件1</label>
						<a href="branchCompany/download?filename=4.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆照片</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件2</label>
						<a href="branchCompany/download?filename=5.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆登记证书（原件）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件3</label>
						<a href="branchCompany/download?filename=6.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车辆行驶证正副本（原件）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件4</label>
						<a href="branchCompany/download?filename=7.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>保单（交强险）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件5</label>
						<a href="branchCompany/download?filename=8.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>保单（商业险）</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件6</label>
						<a href="branchCompany/download?filename=9.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>其他车辆附件</label></td>
					<td class="td1"><label style="margin-right: 20px;">附件7</label>
						<a href="branchCompany/download?filename=10.txt">下载</a></td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>
            <c:if test="${loanHistory!=null }">
               <p><span style="color:red;">该客户已有借款记录：${loanHistory.loanType }</span></p>
            </c:if>
			<table class="table1" border="1">
				<caption class="caption1">综合意见</caption>
				<tr class="tr1">
					<td class="td1"><label>产品类型 <span style="color: red;">*</span></label></td>
					<td class="td1"><select class="select1" id="productType" name="producType">
							<option value="0">-请选择</option>
							<option value="0">1</option>
					</select></td>
					<td class="td1"><label>批准期数 <span style="color: red;">*</span></label></td>
					<td class="td1"><select class="select1" id="loanTime" name="loanTime">
							<option value="0">-请选择</option>
							<option value="0">1</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>结论 <span style="color: red;">*</span></label></td>
					<td><select class="select1" id="conclusion" name="conclusion">
							<option value="0">-请选择</option>
							<option value="0">1</option>
					</select></td>
					<td class="td1"><label>审批额度</label></td>
					<td class="td1"><input type="text" name="loanAmount"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>分公司初审意见<span
							style="color: red;">*</span></label></td>
					<td class="td1" colspan="3"><textarea id="branchOpinion" name="branchOpinion" row="3" cols="60">
               </textarea></td>
				</tr>
			</table>

		</form>
		<div style="height: 80px;">
			<div id="div1"
				style="display: none; margin-left: 400px;width: 300px;background-color:gray ;"><br>
				<label>回退意见</label>
				<input id="advice" type="text"><br><br>
				<button id="pueding" onclick="pueding()">确定</button>
			</div>
	   <div style="height: 80px;">
			<div 
				style="display: none; margin-left: 400px;width: 300px;background-color:gray ;"><br>
				<label>回退意见</label>
				<input id="advice_1" type="text"><br><br>
				<button id="pueding" onclick="pueding_1()">确定</button>
			</div>
		</div>
		<button class="btn btn-primary" onclick="Preservation()">保存</button>
		<button class="btn btn-primary" onclick="Submit()">提交</button>
		<button class="btn btn-primary" onclick="back()">返回</button>
		<button class="btn btn-primary" onclick="clientFallback()">客户基本信息回退</button>
		<button class="btn btn-primary" onclick="vehicleFallback()">车辆基本信息回退</button>
	</div>
</div>
	<script type="text/javascript">
	var isFalse_1=false;
	var isFalse_2=false;
	var isFalse_3=false;
	var isFalse_4=false;
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
		

		function clientFallback() {
			$("#div1").toggle();
		}
		
		function vehicleFallback() {
			$("#div1").toggle();
		}
		
		
		function pueding() {
			/* $("#div1").hide("slow"); */
			      var advice=$("#advice").val();
			      var id=$("#id").val();
		          console.log("advice="+advice);
					$("#viewDiv").panel({
						iconCls : "icon-add",
						collapsible : true,
						minimizable : true,
						maximizable : true,
						closable : true,
						href : "branchCompany/returnAdviceToClient?advice="+advice+"&id="+id 
					});
		}
		
		function pueding_1() {
			/* $("#div1").hide("slow"); */
			      var advice=$("#advice_1").val();
			      var id=$("#id").val();
		          console.log("advice="+advice);
					$("#viewDiv").panel({
						iconCls : "icon-add",
						collapsible : true,
						minimizable : true,
						maximizable : true,
						closable : true,
						href : "branchCompany/returnAdviceToClient?returnAdviceToVehicle="+advice+"&id="+id
					});
		}
		
		
		$(function(){
			$("#productType").blur(function(){
				if($(this).val()!=null){
					isFalse_1=true;
				}
			});
			$("#loanTime").blur(function(){
				if($(this).val()!=null){
					isFalse_2=true;
				}
			});
			$("#conclusion").blur(function(){
				if($(this).val()!=null){
					isFalse_3=true;
				}
			});
			$("#branchOpinion").blur(function(){
				if($(this).val()!=null){
					isFalse_4=true;
				}
			});
			
		});
		function Submit(){
			var isFalse=isFalse_1&&isFalse_2&&isFalse_3&&isFalse_4;
			console.log("1231="+isFalse);
			if(isFalse==false){
				
				$.messager.confirm('Confirm', '请输入红色星号的所有值', function(r){
					if (r){
						// exit action;
					}
				});
			}else{
				var id=$("#id").val();
				console.log("id="+id);
				var productType=$("#productType").val();
			    var loanTime=$("#loanTime").val();
			    var conclusion=$("#conclusion").val();
			    var branchOpinion=$("#branchOpinion").val();
			    var loanAmount=$("#loanAmount").val();
			    var hasHouse=$("#hasHouse").val();
			    var hasHouseLoan=$("#hasHouseLoan").val();
			    var hasCar=$("#hasCar").val();
			    var hasCarLoan=$("#hasCarLoan").val();
			    var maxOverdueMonth=$("#maxOverdueMonth").val();
			    var maxOverdueNum=$("#maxOverdueNum").val();
			    var creditUsageRate=$("#creditUsageRate").val();
			    var enquiriesNumber=$("#enquiriesNumber").val();
			    var hasOtheLoan=$("#hasOtheLoan").val();
			    var hasCreditCard=$("#hasCreditCard").val();
			     /* console.log("14124"+$("#vehicleInfo").serialize());  */
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : "branchCompany/backchuchaxun?productType="+productType
							+"&loanTime="+loanTime+"&conclusion="+conclusion
							+"&branchOpinion="+branchOpinion+"&loanAmount="+loanAmount
							+"&hasHouse="+hasHouse+"&hasHouseLoan="+hasHouseLoan
							+"&hasCar="+hasCar+"&hasCarLoan="+hasCarLoan+"&maxOverdueMont="+maxOverdueMonth
							+"&maxOverdueNum="+maxOverdueNum+"&creditUsageRate="+creditUsageRate
							+"&enquiriesNumber="+enquiriesNumber+"&hasOtheLoan="+hasOtheLoan
							+"&hasCreditCard="+hasCreditCard+"&id="+id
				});
			}
		}
		
	</script>
</body>
</html>