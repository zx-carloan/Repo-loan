//var carId = 0;
	$('#infoInput').click(function(){
		var rows = $('#tt').datagrid('getSelections');
		var row = $('#tt').datagrid('getSelected');
		
		var url='';
		var value=0;
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
				var id = row.id;
				//carId = id;
				if(role=='估价师'){
					/*$.ajax({
						type : "GET",
						url : "carInfo/"+id,
						async : true,
						//data : serialize,
						success : function(msg) {
							//console.info(msg.content);
						}
					});*/
					url='carInfo/'+id;
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
			//console.info(carId);
			var length = rows.length;
			if(length >1){
				$.messager.show({
					title:'提示信息',
					msg:'每次只能操作一条数据！',
					timeout:5000,
					showType:'slide'
				});
			}else{
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : "carInfo/delete/"+row.id
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
	
//点击查询执行的方法
	$("#query").click(function(){
		
		var contratorNum= $("#contractNum").val();
		var borrower=$("#borrower").val();
		var company=$("#company").val();
		
		var data={ "contractNum":contratorNum , "borrower":borrower,"company":company }
		
		$('#tt').datagrid('reload',{
			url: "carInfo/allData", 
			queryParams:data, 
			method: "post"
		});
		/*var serialize = $("#queryForm").serialize();
	console.info(serialize);
	$.ajax({
		type : "GET",
		url : "carInfo/page",
		async : true,
		data : serialize,
		success : function(msg) {
			console.info(msg);
			var content = msg.content;//获取返回Page对象中的显示内容
			var showRes = "";
			for(var i = 0; i < content.length; i++){
				var user = content[i];
				showRes = showRes + "<tr><td>"+user.name+"</td><td>"+user.password+"</td><td>"+user.birthday+"</td><td>"+user.hometown+"</td></tr>";
			}
			console.info(showRes);
			$("#tablebody").html(showRes);
		}
	});*/
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
		$("#rollbackBlock").toggle();
	}
	
	//车辆信息录入页面，点击提交对应的方法
	function Submit(){
		var id = $("#id").val();
		var serialize = $("#vehicleInfo").serialize();
		console.info(id);
		console.info(serialize);
		$.ajax({
			type : "POST",
			url : "carInfo/"+id,
			async : true,
			data : serialize,
			success : function(msg) {
				alert("提交成功！");
			}
		});
	}
	
//修改车辆价格
	function SubmitPrice(){
		var id = $("#id").val();
		var serialize = $("#vehicleInfo").serialize();
		console.info(id);
		console.info(serialize);
		$.ajax({
			type : "POST",
			url : "carInfo/updatePrice",
			async : true,
			data : serialize,
			success : function(msg) {
				alert("提交成功！");
			}
		});
	}
	
//点击上传文件执行的方法
	$('#carAsseceFormbtn').click(function(){
		var formData = new FormData($( "#uploadcarAsseceForm" )[0]);
		$.ajax({
			type : "POST",
			url : "carInfo/carAsseceForm",
			async : true,
			contentType: false,  
			processData: false,
			data : formData,
			success : function(msg) {
			}
		});
	});
	
	$('#carPicbtn').click(function(){
		var formData = new FormData($("#uploadcarPic")[0]);
		$.ajax({
			type : "POST",
			url : "carInfo/carPic",
			async : true,
			contentType: false,  
			processData: false,
			data : formData,
			success : function(msg) {
			}
		});
	});
//点击上传按钮执行的操作
	$('#carRegisterFormbtn').click(function(){
		var formData = new FormData($("#uploadcarRegisterForm")[0]);
		$.ajax({
			type : "POST",
			url : "carInfo/carRegisterForm",
			async : true,
			contentType: false,  
			processData: false,
			data : formData,
			success : function(msg) {
			}
		});
	});
	
//点击上传按钮执行的操作
	$('#drivingLisensebtn').click(function(){
		var formData = new FormData($("#uploadcardrivingLisense")[0]);
		$.ajax({
			type : "POST",
			url : "carInfo/drivingLisense",
			async : true,
			contentType: false,  
			processData: false,
			data : formData,
			success : function(msg) {
			}
		});
	});
	
	/*$('#salibtn').click(function(){
	var formData = new FormData($("#uploadsali")[0]);
	$.ajax({
		type : "POST",
		url : "carInfo/sali",
		async : true,
		contentType: false,  
        processData: false,
		data : formData,
		success : function(msg) {
		}
	});
});*/
	
	$('#salibtn').click(function(){
		var formData = new FormData($("#uploadsali")[0]);
		$.ajax({
			type : "POST",
			url : "carInfo/sali",
			async : true,
			contentType: false,  
			processData: false,
			data : formData,
			success : function(msg) {
			}
		});
	});
	
	
	$('#commerceinsurancebtn').click(function(){
		var formData = new FormData($("#uploadcommerceinsurance")[0]);
		$.ajax({
			type : "POST",
			url : "carInfo/commerceinsurance",
			async : true,
			contentType: false,  
			processData: false,
			data : formData,
			success : function(msg) {
			}
		});
	});
	
	
	$('#otherAttachmentbtn').click(function(){
		var formData = new FormData($("#uploadotherAttachment")[0]);
		$.ajax({
			type : "POST",
			url : "carInfo/otherAttachment",
			async : true,
			contentType: false,  
			processData: false,
			data : formData,
			success : function(msg) {
			}
		});
	});
	
	$('#closeRollback').click(function(){
		$("#rollbackBlock").css('display','none');
	});
	
	//点击回退按钮执行的方法
	$('#rollbackbtn').click(function(){
		var id = $("#rollbackCarId").val();
		var rollbackOpinion = $("#rollbackOpinion").val();
		console.info(id+"   "+rollbackOpinion);
		var datas = {id:id,returnOpinion:rollbackOpinion};
		$.ajax({
			type : "POST",
			url : "carInfo/rollback",
			async : true,
			data : datas,
			success : function(msg) {
				alert("提交成功");
			}
		});
	});
	//评估师点击提交执行的方法
	/*$('#submit').click(function(){
	
	var id = $('#add-form-id').val();
	
	$('#add-form').form({   
	    url:"users/" + id,   
	    onSubmit: function(){ 
	    	return true;
	    },   
	    success:function(data){ 
	    	var data = JSON.parse(data);
	       if(data.status){
	    	   $('#add-dialog').dialog('close');
	    	   $('#tt').datagrid('reload');
	       }
	       $.messager.show({
				title:'提示信息',
				msg:data.information,
				timeout:5000,
				showType:'slide'
			});
	    }   
	});   
	$('#add-form').submit();  
});*/
	
	/*$("#cancel").click(function() {
    
	if (id == "") {
		$.messager.confirm('Confirm', '请选择行', function(r) {
			if (r) {
				// exit action;

			}
		});

	} else {

		$.messager.confirm('Confirm', '是否撤销该客户?', function(r) {
			if (r) {
				console.log("value="+value);
				// exit action;
				$("#viewDiv").panel({
					iconCls : "icon-add",
					collapsible : true,
					minimizable : true,
					maximizable : true,
					closable : true,
					href : "branchCompany/cancelOrder?id="+value 
				   
				});
			}
		});
	}
});*/