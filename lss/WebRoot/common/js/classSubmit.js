$(function(){
	var classname,major,grade,stu_count;
	$("#classSubmit").on("click",function(){
		classname      = $("#className").val();
		grade    = $("#grade").val();
		major	   = $("#majorId").val();
		stu_count = $("#stuCount").val();
		if(classname == "") { $("#className").parent().siblings(".alert").html("班级名称不能为空").fadeIn();return;}
		if(grade == "") { $("#grade").parent().siblings(".alert").html("年级不能为空").fadeIn();return;}
		if(stu_count == "") { $("#stuCount").parent().siblings(".alert").html("班级人数不能为空").fadeIn();return;}
		else{
			var url =  "&className="+classname+"&grade="+grade+"&stuCount="+stu_count+"&majorId="+major
			$.ajax({
				type:"POST",
				url:$('#hidden').val()+"/class/insert.action",
				dataType:"json",
				data:url,
				success: function(data){
					//alert("isExist:"+data)
					if(data.isExist == 0){
						alert("添加成功");
						location.href = $('#hidden').val()+"/class/list.action";
					}else{
						alert("班级已存在");
						location.href = $('#hidden').val()+"/class/add.action";
					}
				},
				error:function(){
					alert("添加失败");
				}
			});	
		}
	});
});