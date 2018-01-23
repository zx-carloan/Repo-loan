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
			//放款
			$("#loan").click(function(){
				var row = $('#tt').datagrid('getSelected');
				if(row){
					$.messager.confirm('Confirm', '是否确认放款', function(r) {
						if (r) {
							$.ajax({
								type:'get',
								url:'putLoan/getMoney?orderId='+row.id,
								success:function(data){ 
									$.messager.show({
										title:'提示信息',
										msg:data,
										timeout:5000,
										showType:'slide'
									});
								}
							})
						}
					});
				}else{
					$.messager.show({
						title:'提示信息',
						msg:'请选择行',
						timeout:5000,
						showType:'slide'
					});
				}
				
			});
			
			//详细信息点击事件
			$("#detail").click(function() {
				var row = $('#tt').datagrid('getSelected');
				
				if (row) {
					$('#infomation').val(row.id);
					$("#viewDiv").panel({
						iconCls : "icon-add",
						collapsible : true,
						minimizable : true,
						maximizable : true,
						closable : true,
						href : "jsp/TrustManagement/loan/vehicleInfo.jsp"
					});
				} else {
					$.messager.confirm('Confirm', '请选择行', function(r) {
						if (r) {
						}
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
				var productName = $('input[name=productName]').val();
				var companyName = $('input[name=companyName]').val();
				var loanStatus = $('#loanStatus').val();
				var datas = {contractNumber:contractNumber,loanName:loanName,identity:identity,productName:productName,companyName:companyName,loanStatus:loanStatus};
				return datas;
			}
			
})
	
