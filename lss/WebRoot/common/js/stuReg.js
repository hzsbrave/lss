$(function(){
	var ret;
	$("#stuid,#grade,#stuname,#nation,#politicsStatus,#termbegin,#classid,#birth,#birthplace,#address,#year,#sog,#email").blur(function(){
		if($(this).val() == ""){
			$(this).parent().siblings(".alert").html("此处不能为空").fadeIn();	
		}else{ 
			$(this).parent().siblings(".alert").fadeOut();
		}
	});
	$("#phone").blur(function(){
		var r = checkInput($(this),/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/);
		if($(this).val() == ""){
			content.html("手机号不能为空").fadeIn();
			return;
		}
		if(r != 1){
			content.html("您输入的手机号码不正确！").fadeIn();
			return;
		}
		if(r == 1){
			content.fadeOut();
		}///^[1-9][0-9]{4,}$/
	});
	$("#qqnumber").blur(function(){
		var r = checkInput($(this),/^[1-9][0-9]{4,}$/);
		if($(this).val() == ""){
			content.html("QQ号不能为空").fadeIn();
			return;
		}
		if(r != 1){
			content.html("您输入的QQ号码格式不正确！").fadeIn();
			return;
		}
		if(r == 1){
			content.fadeOut();
		}
	});
	$("#email").blur(function(){
		var r = checkInput($(this),/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/);
		if($(this).val() == ""){
			content.html("邮箱不能为空").fadeIn();
			return;
		}
		if(r != 1){
			content.html("您输入的邮箱格式不正确！").fadeIn();
			return;
		}
		if(r == 1){
			content.fadeOut();
		}
	});
});
