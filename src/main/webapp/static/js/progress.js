$(function() {

	// 查询
	$("#myButton").click(function() {
		$('#tt').datagrid('load', datas());
	});

	function datas(orderId) {
		var contractNumber = $('#contractNumber').val();
		var loanName = $('#loanName').val();
		var timeStarting_1 = $('#timeStarting_1').val();// 进件时间
		var timeStarting_2 = $('#timeStarting_2').val();// 至
		var getMoneyTime_1 = $('#getMoneyTime_1').val();// 还款时间
		var getMoneyTime_2 = $('#getMoneyTime_2').val();// 至
		var productType = $('#productType').val();// 产品类型
		var companyName = $("input[name='companyName']").val();// 分公司
		var reviewDate = $('#reviewDate').val();// 复审日期
		var payDate_1 = $('#payDate_1').val();// 放款日期
		var payDate_2 = $('#payDate_2').val();// 至
		var datas = {
			contractNumber : contractNumber,
			loanName : loanName,
			timeStarting_1 : timeStarting_1,
			timeStarting_2 : timeStarting_2,
			getMoneyTime_1 : getMoneyTime_1,
			getMoneyTime_2 : getMoneyTime_2,
			productType : productType,
			companyName : companyName,
			reviewDate : reviewDate,
			payDate_1 : payDate_1,
			payDate_2 : payDate_2,
			orderId : orderId
		};
		console.log(datas);
		return datas;
	}

})