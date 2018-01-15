


$(function(){
	$('#automaticSingle-save').click(function(){
		$.ajax({
			  type:'post' , 
			  url:'#' , 
			   success:function(data){ 
			       if(true){
			    	   $('#automaticSingle-dialog').dialog('close');
			    	   $('#tt').datagrid('reload');
			       }
			       $.messager.show({
						title:'提示信息',
						msg:'自动分配成功',
						timeout:5000,
						showType:'slide'
					});
			       }
		})
	});
	
	$('#automaticSingle').click(function(){
		$('#automaticSingle-dialog').dialog('open');
		$('#automaticSingle-form').form('clear');
	});
	
	$('#submenu-save').click(function(){
		var id = $('#submenu-form-id').val();
		
			       if(true){
			    	   $('#submenu-dialog').dialog('close');
			       }
			       $.messager.show({
						title:'提示信息',
						msg:'分单成功',
						timeout:5000,
						showType:'slide'
					});

	});
	
	$('#submenu').click(function(){
		var rows = $('#tt').datagrid('getSelections');
		var row = $('#tt').datagrid('getSelected');
		if(row){
			var length = rows.length;
			if(length >1){
				$.messager.show({
					title:'提示信息',
					msg:'每次只能操作一条数据！',
					timeout:5000,
					showType:'slide'
				});
			}else{
				$('#submenu-dialog').dialog('open');
				
			}
		}else{
			$.messager.show({
				title:'提示信息',
				msg:'请选择需要操作的列表项！',
				timeout:5000,
				showType:'slide'
			});
		}
	});
	
	$('#update').click(function(){
		var rows = $('#tt').datagrid('getSelections');
		var row = $('#tt').datagrid('getSelected');
		if(row){
			var length = rows.length;
			if(length >1){
				$.messager.show({
					title:'提示信息',
					msg:'每次只能操作一条数据！',
					timeout:5000,
					showType:'slide'
				});
			}else{
				$('#update-dialog').dialog('open');
				
			}
		}else{
			$.messager.show({
				title:'提示信息',
				msg:'请选择需要操作的列表项！',
				timeout:5000,
				showType:'slide'
			});
		}
	});	
	
	$('#update-save').click(function(){
		var id = $('#update-form-id').val();
		
			       if(true){
			    	   $('#update-dialog').dialog('close');
			       }
			       $.messager.show({
						title:'提示信息',
						msg:'修改成功',
						timeout:5000,
						showType:'slide'
					});

	});
	
	

	
	
	$("#query").click(function(){
	
	});

});

