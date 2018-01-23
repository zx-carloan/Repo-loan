var orderId=$("#infomation").val();
 
//$.ajax({
//	url:'putLoans/putLoanInfo?orderId='+orderId,
//	type : 'GET', 
//	async : true, 
//	dataType:'text',
//	success : function(date) {
//		 order=eval("(" + date + ")");
//		$("input[name='client.name']").val(order.client.name);
//		$("input[name='client.idCard']").val(order.client.idCard);
//		$("input[name='client.education']").val(order.client.education);
//		$("input[name='client.cellphone']").val(order.client.cellphone);
//		$("input[name='client.address']").val(order.client.address);
//		$("input[name='client.tel']").val(order.client.tel);
//		$("input[name='client.marriage']").val(order.client.marriage);
//		$("input[name='client.child']").val(order.client.child);
//		$("input[name='client.house']").val(order.client.house);
//		$("input[name='client.currentAddress']").val(order.client.currentAddress);
//		$("input[name='client.clientType']").val(order.client.clientType);
//		$("input[name='client.companyName']").val(order.client.companyName);
//		$("input[name='client.companyAddress']").val(order.client.companyAddress);
//		$("input[name='client.clientType']").val(order.client.clientType);
//		$("input[name='client.companyName']").val(order.client.companyName);
//		$("input[name='client.companyAddress']").val(order.client.companyAddress);
//		$("input[name='client.companyTel']").val(order.client.companyTel);
//		$("input[name='client.postcode']").val(order.client.postcode);
//		$("input[name='client.preTime']").val(order.client.preTime);
//		$("input[name='client.department']").val(order.client.department);
//		$("input[name='client.position']").val(order.client.position);
//		$("input[name='client.companySize']").val(order.client.companySize);
//		$("input[name='client.industryType']").val(order.client.industryType);
//		$("input[name='client.companyType']").val(order.client.companyType);
//		
		
//		$("input[name='creditinfo.hasHouse']").val(order.creditinfo.hasHouse);
//		$("input[name='creditinfo.hasHouseLoan']").val(order.creditinfo.hasHouseLoan);
//		$("input[name='creditinfo.hasCar']").val(order.creditinfo.hasCar);
//		$("input[name='creditinfo.hasCarLoan']").val(order.creditinfo.hasCarLoan);
//		$("input[name='creditinfo.maxOverdueMonth']").val(order.creditinfo.maxOverdueMonth);
//		$("input[name='creditinfo.maxOverdueNum']").val(order.creditinfo.maxOverdueNum);
//		$("input[name='creditinfo.creditUsageRate']").val(order.creditinfo.creditUsageRate);
//		$("input[name='creditinfo.enquiriesNumber']").val(order.creditinfo.enquiriesNumber);
//		$("input[name='creditinfo.hasOtheLoan']").val(order.creditinfo.hasOtheLoan);
//		$("input[name='creditinfo.hasCreditCard']").val(order.creditinfo.hasCreditCard);
		
		//家庭联系人
//		$("input[name='contactor.name']").val(order.client.contactorList[1].name);
//		$("input[name='contactor.type']").val(order.contactor.type);
//		$("input[name='contactor.relation']").val(order.contactor.relation);
//		$("input[name='contactor.company']").val(order.contactor.company);
//		$("input[name='contactor.address']").val(order.contactor.address);
//		
//		$("input[name='contactor.name1']").val(order.hasCreditCard);
//		$("input[name='contactor.type1']").val(order.hasCreditCard);
//		$("input[name='contactor.relation1']").val(order.hasCreditCard);
//		$("input[name='contactor.company1']").val(order.hasCreditCard);
//		$("input[name='contactor.address1']").val(order.hasCreditCard);
//		
//		//借款需求
//		$("input[name='client.loanPurpose']").val(order.client.loanPurpose);
//		$("input[name='client.salary']").val(order.client.salary);
//		$("input[name='client.maxAffordable']").val(order.client.maxAffordable);
//		$("input[name='client.maxPaybackTime']").val(order.client.maxPaybackTime);
//		$("input[name='client.maxPaybackTime']").val(order.client.maxPaybackTime);
//		$("input[name='client.minLoan']").val(order.client.minLoan);
//		$("input[name='client.maxLoan']").val(order.client.maxLoan);
//		$("input[name='client.applyDate']").val(order.client.applyDate);
//		$("input[name='client.sourceOfInfo']").val(order.client.sourceOfInfo);
//		$("input[name='client.valuer']").val(order.client.valuer);
//	
//		
//		//签约信息
//		$("input[name='client.minLoan']").val(order.client.minLoan);
//		$("input[name='client.contract.amount2']").val("1123");//咨询服务费
//		$("input[name='client.salary']").val(order.client.salary);
//		$("input[name='product.periods']").val(order.product.periods);
//		$("input[name='product.name']").val(order.product.name);
//		$("input[name='contract.amount']").val(order.contract.amount);
//		$("input[name='contract.payDate']").val(order.contract.payDate);
//		$("input[name='creditinfo.bank']").val(order.creditinfo.bank);
//		$("input[name='creditinfo.bankBranch']").val(order.creditinfo.bankBranch);
//		
//		//综合意见
//		$("input[name='creditinfo.hasCreditCard']").val(order.creditinfo.hasCreditCard);
//		$("input[name='creditinfo.hasCreditCard']").val(order.creditinfo.hasCreditCard);
//		$("input[name='creditinfo.hasCreditCard']").val(order.creditinfo.hasCreditCard);
//		$("input[name='creditinfo.hasCreditCard']").val(order.creditinfo.hasCreditCard);
//		$("input[name='client']").val(order.ad);
//		$("input[name='client']").val(order.ad);
//		$("input[name='client']").val(order.ad);
//		$("input[name='client']").val(order.ad);
//		$("input[name='client']").val(order.ad);
//		
//		
//		
//		
//		
//	},
//})

$(function(){
	
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
});