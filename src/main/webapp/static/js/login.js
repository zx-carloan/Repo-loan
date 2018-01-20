	function login() {
		$.ajax({
			url : '/task/usermag/login',
			type : 'POST', 
			async : true, 
			data : datas(),
			dataType:'text',
			success : function(msg) {
				if(msg == 'err'){
					$("#nameT").text("用户或者密码错误");
					clear();
				}else {
					$(location).attr('href', msg);
				}
			},
		}) 
	}

	function datas(){
		var loginName =  $('#name').val();
		var  password=$('#pwd').val();
		var data ={loginName:loginName,password:password};
		return data;
	}


	function clear(){
		$('#name').val('');
		$('#pwd').val('');
	}
