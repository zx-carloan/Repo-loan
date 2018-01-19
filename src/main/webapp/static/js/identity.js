$(function(){
	
	$("#query").click(function(){
		var va = $("#contratorNum").val();
		if(va==null||va==""){
			alert("请输入身份证号！");
		}else{
			$.get("identitys/"+va,function(data){
		    	if(data==null||data==""){
		    		alert("没有该客户信息！")
		    		$("#num").text("");
			    	$("#name").text("");
			    	$("#gender").text("");
			    	$("#identity").text("");
			    	 $("tt").hide();
		    	}else{
		    		add(data);
		    	}
		    });
		}
	});
		    function add(data){
		    	$("#num").text(1);
		    	$("#name").text(data.name);
		    	if(data.gender===1){
		    		$("#gender").text("男");
		    	}else if(data.gender===0){
		    		$("#gender").text("女");
		    	}else{
		    		$("#gender").text("未知");
		    	}
		    	$("#identity").text(data.identity);
		    }
		    
});