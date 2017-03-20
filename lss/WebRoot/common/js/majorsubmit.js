$(function(){
	var majorName,acamedyId,system;
	$("#majorSubmit").on("click",function(){
		majorName      = $("#majorName").val();
		acamedyId      = $("#acamedyId").val();
		system      = $("#system").val();

		if(majorName == "") { $("#majorName").parent().siblings(".alert").html("专业名不能为空").fadeIn();return;}
		if(system == "") { $("#system").parent().siblings(".alert").html("学制不能为空").fadeIn();return;}
			
		else{
			var url = "&majorName="+majorName+"&academyId="+acamedyId+"&system="+system
			$.ajax({
				type:"POST",
				url:$('#hidden').val()+"/major/insert.action",
				dataType:"json",
				contentType:"application/x-www-form-urlencoded; charset=UTF-8",
				data:url,
				success: function(data){
				//	alert(data)
					if(data.isExist == 0){
						alert("添加成功");
						location.href = $('#hidden').val()+"/major/list.action";
					}else{
						alert("账户已存在");
						location.href = $('#hidden').val()+"/major/add.action";
					}
				},
				 error: function(XMLHttpRequest, textStatus, errorThrown) {
                    alert("失败");
                 }
			});	
		}
	});
});