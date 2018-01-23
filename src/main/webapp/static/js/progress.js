//<script>
//		// 查看进度信息
//		$('#detail').click(function() {
//			var auditor = $("input[name='auditor']").val();// 得到选中的审核人名字
//			var id = $('#tt').datagrid('getSelected').id;// ：取得第一个选中行数据，如果没有选中行，则返回// null，否则返回记录。
//			console.info(id)
//			$.ajax({
//				type : 'post',
//				url : 'progress/findOrderBean',
//				data : {
//					"id" : id
//				},
//			})
//
//		});
//
//		// 查询
//		$("#myButton").click(function() {
//			$('#tt').datagrid('load', datas());
//		});
//
//		function datas(orderId) {
//			var contractNumber = $('#contractNumber').val();
//			console.info(contractNumber);
//			var loanName = $('#loanName').val();
//			var timeStarting_1 = $('#timeStarting_1').val();// 进件时间
//			var timeStarting_2 = $('#timeStarting_2').val();// 至
//			var getMoneyTime_1 = $('#getMoneyTime_1').val();// 还款时间
//			var getMoneyTime_2 = $('#getMoneyTime_2').val();// 至
//			var productType = $('#productType').val();// 产品类型
//			var companyName = $("input[name='companyName']").val();// 分公司
//			var reviewDate = $('#reviewDate').val();// 复审日期
//			var payDate_1 = $('#payDate_1').val();// 放款日期
//			var payDate_2 = $('#payDate_2').val();// 至
//			var datas = {
//				contractNumber : contractNumber,
//				loanName : loanName,
//				timeStarting_1 : timeStarting_1,
//				timeStarting_2 : timeStarting_2,
//				getMoneyTime_1 : getMoneyTime_1,
//				getMoneyTime_2 : getMoneyTime_2,
//				productType : productType,
//				companyName : companyName,
//				reviewDate : reviewDate,
//				payDate_1 : payDate_1,
//				payDate_2 : payDate_2,
//				orderId : orderId
//			};
//			console.log(datas);
//			return datas;
//		}
//
//		$(function() {
//			/* 定义一个数组用于接收得到的下标 */
//			var id = new Array();
//			$(".easyui-datagrid").datagrid({
//				onClickRow : function(rowIndex, rowData) {
//					id.push(rowIndex);
//					for (var i = 0; i < id.length; i++) {
//						for (var j = i + 1; j < id.length; j++) {
//							if (id[i] == id[j]) {
//								id.splice(j, 1);
//								id.splice(i, 1);
//							}
//							;
//						}
//						console.log(id[i] + "<br />")
//					}
//					if (id == "") {
//
//					} else {
//
//					}
//
//				}
//
//			});
//
//			$("#cancel").click(function() {
//
//				if (id == "") {
//					$.messager.confirm('Confirm', '请选择行', function(r) {
//						if (r) {
//							// exit action;
//
//						}
//					});
//
//				} else {
//
//					$.messager.confirm('Confirm', '是否撤销该客户?', function(r) {
//						if (r) {
//							// exit action;
//						}
//					});
//				}
//			});
//
//			//详细信息点击事件
//			$("#detail")
//					.click(
//							function() {
//								if (id == "") {
//									$.messager.confirm('Confirm', '请选择行',
//											function(r) {
//												if (r) {
//													// exit action;
//												}
//											});
//								} else {
//									$("#viewDiv")
//											.panel(
//													{
//														iconCls : "icon-add",
//														collapsible : true,
//														minimizable : true,
//														maximizable : true,
//														closable : true,
//														href : "jsp/customService/progressQuery/progressQuery.jsp"
//													});
//									/* window.location.href="/autoloan/static/jsp/loan/vehicleInfo.jsp"; */
//								}
//							});
//
//		});
//	</script>