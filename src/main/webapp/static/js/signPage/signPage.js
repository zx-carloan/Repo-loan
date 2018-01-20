

$(function(){
	
	$('#signBtn').click(function(){
		var row = $('#tt').datagrid('getSelected');
		var url='jsp/CarLoan/signList/signMessage.jsp';
		if(row){
				var orderId= row.id;
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : url+"?orderId="+orderId
				});
		}else{
			$.messager.confirm('Confirm', '请选择一行进行操作');
		}
	});

$('#cancel').click(function(){
	var row = $('#tt').datagrid('getSelected');
	console.log(row.id);
	if(row){
		if(length != null){
			$.messager.confirm('Confirm', '是否确认要执行改行的撤销操作', function(r){
				if (r){
					$.ajax({
						type:'get',
						url:'contract/delect?orderId='+row.id,
						success:function(data){ 
							$.messager.show({
								title:'提示信息',
								msg:data,
								timeout:5000,
								showType:'slide'
							});
						}
					})
					$('#tt').datagrid('reload',datas (row.id));
				}
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

function datas (orderId){
	var contractNumber = $('#contractNumber').val();
	var loanName = $('#loanName').val();
	var companyName = $("input[name='companyName']").val();
	var status =$('#var').val();
	var datas = {contractNumber:contractNumber,loanName:loanName,companyName:companyName,orderId:orderId,status:status};
	return datas;
}
});
