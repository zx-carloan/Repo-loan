function login() {
	$.ajax({
		url : '/task/usermag/login',
		type : 'POST', 
		async : true, 
		data : datas(),
		dataType:'text',
		success : function(msg) {
			if(msg!='err'){
				$(location).attr('href', msg);
			}else{
				clear();
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			console.log(XMLHttpRequest.status);
			console.log(XMLHttpRequest.readyState);
			console.log(textStatus);
		},
	}) 
}

function datas(){
	var loginName =  $('#name').val();
	var  password=$('#pwd').val();
	var data ={loginName:loginName,password:password};
	console.log(data);
	return data;
}


function clear(){
	$('#name').val('');
	$('#pwd').val('');
}