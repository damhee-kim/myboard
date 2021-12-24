	$(document).ready(function(){
		$("#btn").click(function(){
			$.ajax({
				type: "post",
				url: "/mymember/idCheck",
				data: { id: $("#id").val() },
				success: function(data){
					a = parseInt(data);
					if(a == 1){
						$("#result").html("<font color='red'>중복</font>");
					}else{
						$("#result").html("<font color='green'>사용가능</font>");
					}
				}
			});
		});
	});