
$(function(){
	
	$('#fuhe').click(function(){
		var  id = $('#tt').datagrid('getSelected').id;
		var url='fuhe/info?id='+id;
		if(id!=null){
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : url,
				});
		}else{
			$.messager.confirm('Confirm', '请选择一行进行操作');
		}
	});

$('#cancel').click(function(){
	var row = $('#tt').datagrid('getSelected');
	if(row){
		if(length != null){
			$.messager.confirm('Confirm', '是否确认要执行改行的撤销操作', function(r){
				if (r){
					$.ajax({
						type:'get',
						url:'fuhe/delect?orderId='+row.id,
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

//查询
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
