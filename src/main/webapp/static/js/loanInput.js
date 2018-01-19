$('#infoInput').click(function(){
		var rows = $('#tt').datagrid('getSelections');
		var row = $('#tt').datagrid('getSelected');
		var url='';
		var role ="估价师";
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
				if(role=='估价师'){
					url='jsp/CarLoan/loanInput/valuer.jsp';
				}else if(role=='定价师'){
					url='jsp/CarLoan/loanInput/priced.jsp';
				}else{
					url='jsp/CarLoan/loanInput/credit.jsp';
				}
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
			$.messager.show({
				title:'提示信息',
				msg:'请选择需要操作的列表项！',
				timeout:5000,
				showType:'slide'
			});
		}
	});

$('#delete').click(function(){
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

$("#query").click(function(){//点击查询运行的方法
	var serialize = $("#queryForm").serialize();
	console.info(serialize);
	$.ajax({
		type : "GET",
		url : "carInfo/page",
		async : true,
		data : serialize,
		success : function(msg) {
			console.info(msg);
			/*var content = msg.content;//获取返回Page对象中的显示内容
			var showRes = "";
			for(var i = 0; i < content.length; i++){
				var user = content[i];
				showRes = showRes + "<tr><td>"+user.name+"</td><td>"+user.password+"</td><td>"+user.birthday+"</td><td>"+user.hometown+"</td></tr>";
			}
			console.info(showRes);
			$("#tablebody").html(showRes);*/
		}
	});
});

function back() {
	$("#viewDiv").panel({
		iconCls : "icon-add",
		collapsible : true,
		minimizable : true,
		maximizable : true,
		closable : true,
		href : "jsp/CarLoan/loanInput/loanInput.jsp"
	});
}

function Fallback() {
	$("#div1").toggle();
}

