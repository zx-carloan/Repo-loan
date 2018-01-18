

$(function(){
	
	$('#signBtn').click(function(){
		var rows = $('#tt').datagrid('getSelections');
		var row = $('#tt').datagrid('getSelected');
		var url='jsp/CarLoan/signList/signMessage.jsp';
		
		if(row){
			var length = rows.length;
			if(length >1){
				$.messager.confirm('Confirm', '只能选择一行进行签约 ');
			}else{
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : url
				});
			}
		}else{
			$.messager.confirm('Confirm', '请选择一行进行操作');
		}
	});

$('#cancel').click(function(){
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
			$.messager.show({
				title:'提示信息',
				msg:'撤销成功！',
				timeout:5000,
				showType:'slide'
			});
			
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

function back() {
	$("#viewDiv").panel({
		iconCls : "icon-add",
		collapsible : true,
		minimizable : true,
		maximizable : true,
		closable : true,
		href : "jsp/CarLoan/signList/signMessage.jsp"
	});
}

$("#query").click(function(){
	$('#tt').datagrid('load',datas ());
});

function datas (){
	var contratorNum = $('#contratorNum').val();
	var borrower = $('#borrower').val();
	var loanStatus = $('#loanStatus').val();
	var datas = {contratorNum:contratorNum,borrower:borrower,loanStatus:loanStatus};
	console.log(datas);
	return datas;
}


});

