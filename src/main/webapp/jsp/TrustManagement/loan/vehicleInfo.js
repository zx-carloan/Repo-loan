var orderId=$("#infomation").val();

$.ajax({
	url:'putLoans/putLoanInfo?orderId='+orderId,
	type : 'GET', 
	async : true, 
	dataType:'text',
	success : function(date) {
		var order=eval("(" + date + ")");
		$("input[name='contractNumber']").val(order.contractNumber);
	},
})

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