$(function() {
			var id = new Array();
			$(".easyui-datagrid").datagrid({
				onClickRow : function(rowIndex, rowData) {
					id.push(rowIndex);
					for (var i = 0; i < id.length; i++) {
						for (var j = i + 1; j < id.length; j++) {
							if (id[i] == id[j]) {
								id.splice(j, 1);
								id.splice(i, 1);
							}
							;
						}
						console.log(id[i] + "<br />")
					}
					if (id == "") {

					} else {

					}

				}

			});

			$("#cancel").click(function() {

				if (id == "") {
					$.messager.confirm('Confirm', '请选择行', function(r) {
						if (r) {
							// exit action;

						}
					});

				} else {

					$.messager.confirm('Confirm', '是否撤销该客户?', function(r) {
						if (r) {
							// exit action;
						}
					});
				}
			});

			//详细信息点击事件
			$("#detail").click(function() {
				if (id == "") {
					$.messager.confirm('Confirm', '请选择行', function(r) {
						if (r) {
							// exit action;
						}
					});
				} else {
					$("#viewDiv").panel({
						iconCls : "icon-add",
						collapsible : true,
						minimizable : true,
						maximizable : true,
						closable : true,
						href : "jsp/TrustManagement/loan/vehicleInfo.jsp"
					});
				}
			});
			
			
			$("#query").click(function(){
				$('#tt').datagrid('load',datas ());
			});
			
			function datas (){
				var contractNumber = $('#contractNumber').val();
				var loanName = $('#loanName').val();
				var identity = $('#identity').val();
				var productName = $('#productName').val();
				var companyName = $('#companyName').val();
				var loanStatus = $('#loanStatus').val();
				var datas = {contractNumber:contractNumber,loanName:loanName,identity:identity,productName:productName,companyName:companyName,loanStatus:loanStatus};
				return datas;
			}
			
})
	
