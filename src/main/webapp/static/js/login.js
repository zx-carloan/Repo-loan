function login() {
	$.ajax({
		url : '/task/usermag/login',
		type : 'POST', // GET
		async : true, // 或false,是否异步
		data : {},
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
function clear(){
	$('#name').val('');
	$('#pwd').val('');
}