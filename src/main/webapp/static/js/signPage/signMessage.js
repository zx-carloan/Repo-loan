$(function(){
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