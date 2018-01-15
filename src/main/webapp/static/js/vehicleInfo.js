$(function() {
	/* var id=new Array(); */
	var id;

	$('#dd').click(function() {
		$(this).window('open');
	});
	$("tr").click(function() {
		if (!id) {
			/* var idss=$(this).attr("ids"); */
			id = $(this).attr("id");
			/* id.push(idss); */
		} else {
			id = null;
		}
		console.log("id=" + id);
	});
	$("#cancel").click(function() {
		if (!id) {

			$.messager.confirm('Confirm', '请选择行', function(r) {
				if (r) {
					// exit action;
				}
			});

		} else {
			$.messager.confirm('Confirm', '是否撤销该客户?', function(r) {
				if (r) {
					// exit action;
				}
			});
		}
	});
});