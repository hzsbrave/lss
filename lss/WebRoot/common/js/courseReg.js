$(function(){
	$("#classname,#grade").blur(function(){
		if($(this).val() == ""){
			$(this).parent().siblings(".alert").html("此处不能为空").fadeIn();	
		}else{ 
			$(this).parent().siblings(".alert").fadeOut();
		}
	});
	
});
