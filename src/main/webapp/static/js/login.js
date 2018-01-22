function changeImg() {
    var imgSrc = $("#codeImg");
    var src = imgSrc.attr("src");
    imgSrc.attr("src", chgUrl(src));
}  

function chgUrl(url) {
    var timestamp = (new Date()).valueOf();if ((url.indexOf("&") >= 0)) {
        url = url + "&timestamp=" + timestamp;
    } else {
        url = url + "?timestamp=" + timestamp;
    }
    return url;
}
	
function login() {
	var loginCode = $('#loginCode').val();
	if(loginCode ==''||loginCode==null){
		$('#yanzheng').text("请输入验证码！");
		changeImg();
	}else{
		$.ajax({
			url : '/task/usermag/'+loginCode,
			type : 'POST', 
			async : true, 
			data : datas(),
			dataType:'text',
			success : function(msg) {
				if(msg == 'err'){	
					$("#nameT").text("用户或密码错误");
					clear();
					changeImg();
				}else {
					$(location).attr('href', msg);
				}
			},
		}) 
	}
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

	
	

	
	