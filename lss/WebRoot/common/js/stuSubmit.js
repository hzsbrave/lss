$(function(){
		var stuid,stuname,grade,classid,sex,nation,politicsStatus,termbegin,birth,birthplace,address,year,phone,qqnumber,email,sog,idcard;
	$("#stuSubmit").on("click",function(){
		stuid      = $("#stuid").val();
		stuname    = $("#stuname").val();
		grade	   = $("#grade").val();
		classid    = $("#classid").val();
		sex        = $("input:checked").val();
		termbegin	   = $("#termbegin").val();
		phone	   = $("#phone").val();
		email    = $("#email").val();
		idcard   = $("#idcard").val();
		
		if(stuid == "") { $("#stuid").parent().siblings(".alert").html("学号不能为空").fadeIn();return;}
		if(stuname == "") { $("#stuname").parent().siblings(".alert").html("姓名不能为空").fadeIn();return;}
		if(grade == "") { $("#grade").parent().siblings(".alert").html("年级不能为空").fadeIn();return;}
		if(classid == "") { $("#classid").parent().siblings(".alert").html("集体信息不能为空").fadeIn();return;}
		if(termbegin == "") { $("#termbegin").parent().siblings(".alert").html("入学日期不能为空").fadeIn();return;}
		if(phone == "") { $("#phone").parent().siblings(".alert").html("手机号码不能为空").fadeIn();return;}
		if(email == "") { $("#email").parent().siblings(".alert").html("邮箱号码不能为空").fadeIn();return;}
		if(idcard == "") { $("#idcard").parent().siblings(".alert").html("身份证号码不能为空").fadeIn();return;}
		
		else{
			var url = "&studentNo="+stuid+"&studentName="+stuname+"&grade="+grade+"&classId="+classid+"&gender="+sex+"&enterDate="+termbegin+"&phone="+phone+"&email="+email+"&idcard="+idcard;
			$.ajax({
				type:"POST",
				url:$('#hidden').val()+"/student/insert.action",
				dataType:"json",
				data:url,
				success: function(data){
					//alert("isExist:"+data)
					if(data.isExist == 0){
						alert("添加成功");
						location.href = $('#hidden').val()+"/student/list.action";
					}else{
						alert("账户已存在");
						location.href = $('#hidden').val()+"/student/add.action";
					}
				},
				error:function(){
					alert("添加失败");
				}
			});	
		}
	});
});