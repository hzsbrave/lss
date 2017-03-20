$(document).ready(function() {		
 	
	$("input:radio[name='role']").click(function(){
		var $val = $(this).parent().index();
    	$(this).siblings().attr("class","glyphicon glyphicon-check").css("color","#45B6B0")
    	$(this).parent().siblings().children('span').attr("class","glyphicon glyphicon-unchecked").css("color","#C7D5E0");
	});
	$("#user,#password").focus(function(){
		$(this).siblings().show();
	});
	$(".deluser").click(function(){
		$("#user").val("");
		$(this).hide();
	});
	$(".delpwd").click(function(){
		$("#password").val("");
		$(this).hide();
	});
	$("#user").change(function(){
			$("#password").val("");
	});
    $("#submit").on("click",function(){	
		ajax();				
	});
		function ajax(){
			var user = $("#user").val();
			var pwd = $("#password").val();
			
		
			$.ajax({
				type:"POST",
				url:"",
				dataType:"text",			
				data: "UserName="+user +"&PassWord="+pwd,
				success: function(data){	
					var ajaxjson = JSON.parse(data);	
					if(ajaxjson.code==1){
                       // var keyword = hex_md5(1);
						//sessionStorage.keyword = keyword;
						window.location.href = "index.html";
					}else{
						$(".alert").html(ajaxjson.msg).stop().fadeIn(500);	
						switch(ajaxjson.code){
							case -1:
							case -3:
								$("#password").val("");
								$("#user").focus().select();break;
							case -2:
							case -4:
								$("#password").val("");
								break;
							default:
								$("#user").val("");
								$("#password").val("");
						}
					}				
				},
				error: function(xhr){
					alert("发生错误："+xhr.status);
				}
			});
		}
		
			
	
});