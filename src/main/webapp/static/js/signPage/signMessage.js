var oderId=$('#infomation').val();
function addVal(date){
	var order=	eval("(" + date + ")");
	console.log(order.contractNumber);
	$("input[name='contractNumber']").val(order.contractNumber);
	$("input[name='client.loanName']").val(order.contractNumber);
	$("input[name='client.cellphone']").val(order.client.cellphone);
	$("input[name='manager']").val(order.manager);
	$("input[name='client.identity']").val(order.client.identity);
	$("input[name='product.capital']").val(order.product.capital);
	$("input[name='product.capital']").val(order.product.capital);
	$("input[name='product.name']").val(order.product.name);
	$("input[name='product.periods']").val(order.product.periods);
	
}

$.ajax({
	url:'contract/signInfo?orderId=1',
	type : 'GET', 
	async : true, 
	dataType:'text',
	success : function(msg) {
		addVal(msg);
	},
})
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