var oderId=$('#infomation').val();
$(function(){
	alert(oderId);
    $.ajax({
    		url:'contract/signInfo',
			type : 'POST', 
			async : true, 
			data : oderId=oderId,
			dataType:'text',
			success : function(msg) {
				console.log(msg);
			},
    })
    
	function Fallback() {
		$("#div1").toggle();
	}
	function pueding() {
		$("#div1").hide("slow");
	}

	});
	  

	$('#bankCard').form('submit', {   
	    url:"contract/upload",   
	    onSubmit: function(){   
	    	   return false;
	    },   
	    success:function(data){   
	        alert(data)   
	    }   

});