$(function() {

	$('#automaticSingle-save').click(function() {
		var auditlister = $("#auditlist").val();// 审核分单量
		var contractcontracter = $("#contractcontract").val();// 签约复核分单量
		if(auditlister== null || auditlister==""||contractcontracter == null ||contractcontracter== "" ){
			$.messager.show({
				title : '提示信息',
				msg : '有内容没有填完',
				timeout : 5000,
				showType : 'slide'  
			});
		}else {
			$.ajax({
				type : 'get',
				url : 'submenu/automaticSingleSave',
				data : {
					"auditlister" : auditlister,
					"auditlister" : auditlister,
				},
				success : function(msg) {
					$('#automaticSingle-dialog').dialog('close');
					$('#tt').datagrid('reload');
					$('#tt').datagrid('load', datas());
					$.messager.show({
						title : '提示信息',
						msg : '自动分配成功',
						timeout : 5000,
						showType : 'slide'
					});
				}
			})
			
		}
		
	});

	$('#automaticSingle').click(function() {
		$('#automaticSingle-dialog').dialog('open');
		$('#automaticSingle-form').form('clear');
	});

	// 审核指派分单人员
	$('#submenu-save').click(function() {
		var row = $('#tt').datagrid('getSelected');
		var auditor="";
		if(row.submenuStatus ==0){
			auditor = $("input[name='auditor1']").val();
		}else{
			auditor = $("input[name='auditor2']").val();
		}
		console.log("auditor="+auditor);
			$.ajax({
				type : 'post',
				url : 'submenu/submenuSave',
				data : {
					"name" : auditor,
					"id" : row.id
				},
			})
			if (true) {

				$('#submenu-dialog').dialog('close');
			}
			$.messager.show({
				title : '提示信息',
				msg : '分单成功',
				timeout : 5000,
				showType : 'slide'
			});
			$('#tt').datagrid('load', datas());
	

	});


	$('#submenu').click(function() {
		var rows = $('#tt').datagrid('getSelections');// 取得所有选中行数据，返回元素记录的数组数据。
		var row = $('#tt').datagrid('getSelected');// ：取得第一个选中行数据，如果没有选中行，则返回
													// null，否则返回记录。

		if (row.auditor== '' || row.auditor== null) {
			if (row) {
				var length = rows.length;
				if (length > 1) {
					$.messager.show({
						title : '提示信息',
						msg : '每次只能操作一条数据！',
						timeout : 5000,
						showType : 'slide'
					});
				} else {
					console.log(row.submenuStatus)
					if(row.submenuStatus ==0){
						$("#submenu1").show();
						$("#submenu2").hide();
					}else{
						$("#submenu2").show();
						$("#submenu1").hide();
					}
					$('#submenu-dialog').dialog('open');
				}
			} else {
				$.messager.show({
					title : '提示信息',
					msg : '请选择需要操作的列表项！',
					timeout : 5000,
					showType : 'slide'
				});
			}

		} else {
			$.messager.show({
				title : '提示信息',
				msg : '已有审核人，不能指派分单',
				timeout : 5000,
				showType : 'slide'
			});

		}

	});

	$('#update').click(function() {
		var rows = $('#tt').datagrid('getSelections');
		var row = $('#tt').datagrid('getSelected');
		if (row) {
			var length = rows.length;
			if (length > 1) {
				$.messager.show({
					title : '提示信息',
					msg : '每次只能操作一条数据！',
					timeout : 5000,
					showType : 'slide'
				});
			} else {
				console.log(row.submenuStatus)
				if(row.submenuStatus ==0){
					$("#updateauditor1").show();
					$("#updateauditor2").hide();
				}else{
					$("#updateauditor2").show();
					$("#updateauditor1").hide();
				}
				$('#update-dialog').dialog('open');

			}
		} else {
			$.messager.show({
				title : '提示信息',
				msg : '请选择需要操作的列表项！',
				timeout : 5000,
				showType : 'slide'
			});
		}
	});

	$('#update-save').click(function() {
		var id = $('#update-form-id').val();
	
		var row = $('#tt').datagrid('getSelected');// ：取得第一个选中行数据，如果没有选中行，则返回
														// null，否则返回记录。
		var updateauditor="";
		if(row.submenuStatus ==0){
			updateauditor = $("input[name='updateauditor']").val();// 得到修改审核人员姓名
		}else{
			updateauditor = $("input[name='updateauditor2']").val();
		}
		if(updateauditor== null || updateauditor==""){
			$.messager.show({
				title : '提示信息',
				msg : '有内容没有填完',
				timeout : 5000,
				showType : 'slide'
			});
		}else {
			$.ajax({
				type : 'post',
				url : 'submenu/submenuSave',
				data : {
					"name" : updateauditor,
					"id" :row.id
				},
				success : function(msg) {
					$('#update-dialog').dialog('close');
					$('#tt').datagrid('load', datas());
					$.messager.show({
						title : '提示信息',
						msg : '修改成功',
						timeout : 5000,
						showType : 'slide'
					});
				}
			})
			
		}
	
	});

	// 查询
	$("#query").click(function() {
		$('#tt').datagrid('load', datas());
	});

	function datas(orderId) {
		var contractNumber = $('#contractNumber').val();
		var loanName = $('#loanName').val();
		var identity = $('#identity').val();
		var submenuStatus = $("input[name='submenuStatus']").val();
		var datas = {
			contractNumber : contractNumber,
			loanName : loanName,
			identity : identity,
			submenuStatus : submenuStatus,
			orderId : orderId
		};
		console.log(datas);
		return datas;
	}
});
