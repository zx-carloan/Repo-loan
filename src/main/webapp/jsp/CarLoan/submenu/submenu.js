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
		var id = $('#submenu-form-id').val();
		var auditor = $("input[name='auditor']").val();// 得到选中的审核人名字
		var id = $('#tt').datagrid('getSelected').id;// ：取得第一个选中行数据，如果没有选中行，则返回
		
		if(id == null){
			$.messager.show({
				title : '提示信息',
				msg : '请选中目标',
				timeout : 5000,
				showType : 'slide'
			});
		}else{
			$.ajax({
				type : 'post',
				url : 'submenu/submenuSave',
				data : {
					"name" : auditor,
					"id" : id
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
		}
		// null，否则返回记录。
	

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
					if(row.submenuStatus ==0){
						$("#submenu-dialog1").show();
						$("#submenu-dialog2").hide();
					}else{
						$("#submenu-dialog2").show();
						$("#submenu-dialog1").hide();
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
				if(row.submenuStatus ==0){
					$("#update-dialog1").show();
					$("#update-dialog2").hide();
				}else{
					$("#update-dialog2").show();
					$("#update-dialog1").hide();
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
		var updateauditor = $("input[name='updateauditor']").val();// 得到修改审核人员姓名
		var id = $('#tt').datagrid('getSelected').id;// ：取得第一个选中行数据，如果没有选中行，则返回
														// null，否则返回记录。
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
					"id" : id
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
