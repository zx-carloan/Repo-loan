<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--输出,条件,迭代标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<!--数据格式化标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="sql"%>
<!--数据库相关标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%>
<!--常用函数标签库-->
<%@ page isELIgnored="false"%>
<!--支持EL表达式，不设的话，EL表达式不会解析-->
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
			<table class="table table-striped table-bordered" >
				<caption class="caption1">个人基本信息</caption>
				<tr class="tr1">
					<td class="td1"><label>申请人姓名</label></td>
					<td class="td1">${ClientBean.name}</td>
					<td class="td1"><label>身份证号码</label></td>
					<td class="td1">${ClientBean.idCard}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>最高学历</label></td>
					<td class="td1">${ClientBean.education}</td>
					<td class="td1"><label>申请人手机号码</label></td>
					<td class="td1">${ClientBean.cellphone}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>户籍地址</label></td>
					<td class="td1">${ClientBean.address}</td>
					<td class="td1"><label>申请人电话号码</label></td>
					<td class="td1">${ClientBean.tel}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>婚姻状态</label></td>
					<td class="td1">${ClientBean.child == 1 ?'已婚' : '未婚'}</td>
					<td class="td1"><label>有无子女</label></td>
					<td class="td1">${ClientBean.child == 1 ?'有' : '无'}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>房产状态</label></td>
					<td class="td1">${ClientBean.child == 1 ?'有' : '无'}</td>
					<td class="td1"><label>共同居住者</label></td>
					<td>${ClientBean.child == 1 ?'配偶及其子女' : '无'}</td>
				</tr>
				<tr>
					<td class="td1"><label>现住址</label></td>
					<td class="td1">${ClientBean.currentAddress}</td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>客户类型</label></td>
					<td class="td1">${ClientBean.clientType == 1 ?'工程师' : '老师'}</td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
			</table>

			<table class="table table-striped table-bordered" >
				<caption class="caption1">工作信息</caption>
				<tr class="tr1">
					<td class="td1"><label>工作单位全称</label></td>
					<td class="td1">${ClientBean.companyName}</td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>工作单位地址</label></td>
					<td class="td1">${ClientBean.companyAddress}</td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位电话</label></td>
					<td class="td1">${ClientBean.companyTel}</td>
					<td class="td1"><label>邮政编码</label></td>
					<td class="td1">${ClientBean.postcode}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>进入该单位时间</label></td>
					<td class="td1"></td>
					<td class="td1"><label>所在部门</label></td>
					<td class="td1">${ClientBean.department}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>担任职务</label></td>
					<td class="td1">${ClientBean.position}</td>
					<td class="td1"><label>公司规模</label></td>
					<td class="td1">${ClientBean.companySize}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>行业类别</label></td>
					<td class="td1">${ClientBean.industryType}</td>
					<td class="td1"><label>单位性质</label></td>
					<td class="td1">${ClientBean.companyType == 1 ?'个体户' : '公司'}</td>
				</tr>
			</table>

			<table class="table table-striped table-bordered" >
				<caption class="caption1">资产信息</caption>
				<tr class="tr1">
					<td class="td1"><label>有无房产</label></td>
					<td class="td1">${creditInfoBean.hasHouse == 1 ?'有房产' : '无房产'}</td>
					<td class="td1">有无房贷</td>
					<td class="td1">${creditInfoBean.hasHouseLoan == 1 ?'有房贷' : '无房贷'}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无车产</label></td>
					<td class="td1">${creditInfoBean.hasCar == 1 ?'有车产' : '无车产'}</td>
					<td class="td1">有无车贷</td>
					<td class="td1">${creditInfoBean.hasCarLoan == 1 ?'有车贷' : '无车贷'}</td>
				</tr>
			</table>

			<table class="table table-striped table-bordered" >
				<caption class="caption1">信用信息</caption>
				<tr class="tr1">
					<td class="td1"><label>信用卡、贷款最大逾期状况（24个月内）</label></td>
					<td class="td1">${creditInfoBean.maxOverdueMonth}</td>
					<td class="td1">信用卡、贷款累计逾期状况（24个月内）</td>
					<td class="td1">${creditInfoBean.maxOverdueNum}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>信用卡额度使用率</label></td>
					<td class="td1">${creditInfoBean.creditUsageRate}</td>
					<td class="td1">信用卡、贷款审批查询次数（6个月内）</td>
					<td class="td1">${creditInfoBean.enquiriesNumber}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>有无其他信用贷款</label></td>
					<td class="td1">${creditInfoBean.hasOtheLoan == 1 ?'有其它贷款' : '无其它贷款'}</td>
					<td class="td1">有无信用卡</td>
					<td class="td1">${creditInfoBean.hasCreditCard == 1 ?'有信用卡' : '无信用卡'}</td>
				</tr>
			</table>

			<c:forEach items="${contactorBean}" var="item">
				<table class="table table-striped table-bordered" >


					<caption class="caption1">家庭联系人信息</caption>
					<tr class="tr1">
						<td class="td1"><label>姓名</label></td>
						<td class="td1">${item.name}</td>
						<td class="td1">&nbsp;</td>
						<td class="td1">&nbsp;</td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>联系人类型</label></td>
						<td class="td1">${item.type == 1 ?'朋友' : '亲戚'}</td>
						<td class="td1">和本人关系</td>
						<td class="td1">${item.relation == 1 ?'父子' : '母子'}</td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>单位名称</label></td>
						<td class="td1">${item.company}</td>
						<td class="td1">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>家庭地址/单位地址</label></td>
						<td class="td1">${item.address}</td>
						<td class="td1">&nbsp;</td>
						<td class="td1">&nbsp;</td>
					</tr>

				</table>

				<table class="table table-striped table-bordered" >
					<caption class="caption1">紧急联系人信息</caption>
					<tr class="tr1">
						<td class="td1"><label>姓名</label></td>
						<td class="td1">${item.name}</td>
						<td class="td1">&nbsp;</td>
						<td class="td1">&nbsp;</td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>联系人类型</label></td>
						<td class="td1">${item.type == 1 ?'朋友' : '亲戚'}</td>
						<td class="td1">和本人关系</td>
						<td class="td1">${item.relation == 1 ?'父子' : '母子'}</td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>单位名称</label></td>
						<td class="td1">${item.company}</td>
						<td class="td1">&nbsp;</td>
						<td class="td1">&nbsp;</td>
					</tr>
					<tr class="tr1">
						<td class="td1"><label>家庭地址/单位地址</label></td>
						<td class="td1">${item.address}</td>
						<td class="td1">&nbsp;</td>
						<td class="td1">&nbsp;</td>
					</tr>
				</table>
			</c:forEach>

			<table class="table table-striped table-bordered" >
				<caption class="caption1">借款需求</caption>
				<tr class="tr1">
					<td class="td1"><label>借款详细用途</label></td>
					<td class="td1">${ClientBean.loanPurpose}</td>
					<td class="td1"><label>月收入</label></td>
					<td class="td1">${ClientBean.salary}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>可以承受的月还款额</label></td>
					<td class="td1">${ClientBean.maxAffordable}</td>
					<td class="td1">希望申请最长还款期限</td>
					<td class="td1">${ClientBean.maxPaybackTime}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>希望申请最低借款额度</label></td>
					<td class="td1">${ClientBean.minLoan}</td>
					<td class="td1"><label>希望申请最高借款额度</label></td>
					<td class="td1">${ClientBean.maxLoan}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>您从何处得知正合普惠</label></td>
					<td class="td1">${ClientBean.sourceOfInfo}</td>
					<td class="td1"><label>申请日期</label></td>
					<td class="td1">${ClientBean.applyDate}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>业务员姓名</label></td>
					<td class="td1">${ClientBean.saler}</td>
					<td class="td1"><label>车贷专员</label></td>
					<td class="td1">${ClientBean.valuer}</td>
				</tr>
			</table>

			<table class="table table-striped table-bordered" >
				<caption class="caption1">签约信息</caption>
				<tr class="tr1">
					<td class="td1"><label>借款总额</label></td>
					<td class="td1">${contractBean.amount}</td>
					<td class="td1"><label>咨询服务费</label></td>
					<td class="td1">20</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>月还款额</label></td>
					<td class="td1">${ClientBean.maxAffordable}</td>
					<td class="td1">贷款期数</td>
					<td class="td1">${productBean.periods}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>产品名称</label></td>
					<td class="td1">${productBean.name}</td>
					<td class="td1"><label>审批金额</label></td>
					<td class="td1">${contractBean.amount}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>约定放贷日</label></td>
					<td class="td1">${contractBean.payDate}</td>
					<td class="td1"><label>放款/还款银行</label></td>
					<td class="td1">${contractBean.bank}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>放款/还款账号</label></td>
					<td class="td1">${contractBean.bankAccount}</td>
					<td class="td1"><label>放款/还款开户银行(支行)</label></td>
					<td class="td1">${contractBean.bankBranch}</td>
				</tr>
			</table>

			<table class="table table-striped table-bordered" >
				<caption class="caption1">综合意见</caption>
				<tr class="tr1">
					<td class="td1"><label>产品类别 <span style="color: red;">*</span></label></td>
					<td class="td1">${contractBean.bankBranch}</td>
					<td class="td1"><label>批准期数<span style="color: red;">*</span></label></td>
					<td class="td1">${opinionBean.loanTime}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>结论 <span style="color: red;">*</span></label></td>
					<td class="td1">${opinionBean.conclusion}</td>
					<td class="td1">审批额度 <span style="color: red;">*</span></td>
					<td class="td1">${opinionBean.loanAmount}</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>分公司信审意见</label></td>
					<td class="td1" colspan="3">${opinionBean.branchOpinion}</td>

				</tr>
				<tr class="tr1">
					<td class="td1"><label>总公司信审意见</label></td>
					<td class="td1" colspan="3">${opinionBean.HQOpinion}</td>
				</tr>

			</table>

			<table class="table table-striped table-bordered" >
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


			<table class="table table-striped table-bordered" >
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

			<table class="table table-striped table-bordered" >
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
				href : "jsp/customService/progressQuery/progress.jsp"
			});
		}
	</script>
</body>
</html>