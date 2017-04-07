$(function(){
	var classname,major,grade,text,credit,type,startWeek,endWeek,issingle,teacherId,classesId;
	$("#classSubmit").on("click",function(){
		coursename      = $("#courseName").val();
		majorid	   = $("#majorId").val();
		needhours   = $("#needHours").val();
		text = $.trim($("#area").val());
		credit = $("#credit_select").val();
		type = $("#type_select").val();
		startWeek = $('#week_select_begin').val();
		endWeek = $('#week_select_end').val();
		teacherId = $('#teacher').val();
		classesId = $('#classesId').val();
		var all_sectionArray = new Array();
		var single_sectionArray = new Array();
		var issingle = $('input[name=is_week]:checked').val();  //判断是否区分单双周 
		//alert("issingle:"+issingle);
		if(issingle == 1){//区分
			var single_partArray = $('.single_week .main .section_div');
			for(var i=0;i<single_partArray.length;i++){
				var part = new Object();//一条完整记录（星期几、第几节、教学楼号和科室号）
				var section_part = new Array();//课程节数数组（该条记录上的节数数组，如 [1,2]，代表1 2 节）
				$('.single_week .main .section_div ').eq(i).find('input[type=checkbox]:checked').each(function(){
					section_part.push($(this).val());
				});
				part.building = $('.single_week .main .section_div ').eq(i).find('.building_select').val();
				part.room = $('.single_week .main .section_div ').eq(i).find('.room_select').val();
				part.week = $('.single_week .main .section_div ').eq(i).find('input[type=radio]:checked').val();
				part.section = section_part;
				single_sectionArray.push(part);
			}
			
			var all_partArray = $('.all_week .main .section_div');
			for(var j=0;j<all_partArray.length;j++){
				var part = new Object();//一条完整记录（星期几、第几节、教学楼号和科室号）
				var section_part = new Array();//课程节数数组（该条记录上的节数数组，如 [1,2]，代表1 2 节）
				$('.all_week .main .section_div ').eq(j).find('input[type=checkbox]:checked').each(function(){
					section_part.push($(this).val());
				});
				part.building = $('.all_week .main .section_div ').eq(j).find('.building_select').val();
				part.room = $('.all_week .main .section_div ').eq(j).find('.room_select').val();
				part.week = $('.all_week .main .section_div ').eq(j).find('input[type=radio]:checked').val();
				part.section = section_part;
				all_sectionArray.push(part);
			}
			
		}else{//不区分
			var partArray = $('.all_week .main .section_div');
			for(var i=0;i<partArray.length;i++){
				var part = new Object();//一条完整记录（星期几、第几节、教学楼号和科室号）
				var section_part = new Array();//课程节数数组（该条记录上的节数数组，如 [1,2]，代表1 2 节）
				$('.all_week .main .section_div ').eq(i).find('input[type=checkbox]:checked').each(function(){
					section_part.push($(this).val());
				});
				part.building = $('.all_week .main .section_div ').eq(i).find('.building_select').val();
				part.room = $('.all_week .main .section_div ').eq(i).find('.room_select').val();
				part.week = $('.all_week .main .section_div ').eq(i).find('input[type=radio]:checked').val();
				part.section = section_part;
				all_sectionArray.push(part);
			}
		}
		
	/*	var obj = new Object();
		obj.all_sectionArray = all_sectionArray;
		obj.single_sectionArray = single_sectionArray;
		alert("all_sectionArray:"+all_sectionArray.length+" single_sectionArray:"+single_sectionArray.length);
		if(obj.single_sectionArray.length == 0 && issingle == 0){
			alert("不区分单双周");
			for(var k=0 ;k<obj.all_sectionArray.length;k++){
				alert("星期几："+obj.all_sectionArray[k].week+" ,一共多少节:"+obj.all_sectionArray[k].section.length+" ,教学楼："+obj.all_sectionArray[k].building+" ,科室"+obj.all_sectionArray[k].room);
				for(var n=0;n<obj.all_sectionArray[k].section.length;n++){
					alert("具体节数："+obj.all_sectionArray[k].section[n]);
				}
			}
		}else{
			alert("单周：");
			for(var k=0 ;k<obj.all_sectionArray.length;k++){
				alert("星期几："+obj.all_sectionArray[k].week+" ,一共多少节:"+obj.all_sectionArray[k].section.length+" ,教学楼："+obj.all_sectionArray[k].building+" ,科室"+obj.all_sectionArray[k].room);
				for(var n=0;n<obj.all_sectionArray[k].section.length;n++){
					alert("具体节数："+obj.all_sectionArray[k].section[n]);
				}
			}
			alert("双周：");
			for(var l=0 ;l<obj.single_sectionArray.length;l++){
				alert("星期几："+obj.single_sectionArray[l].week+" ,一共多少节:"+obj.single_sectionArray[l].section.length+" ,教学楼："+obj.single_sectionArray[l].building+" ,科室"+obj.single_sectionArray[l].room);
				for(var m=0;m<obj.single_sectionArray[l].section.length;m++){
					alert("具体节数："+obj.single_sectionArray[l].section[m]);
				}
			}
		}*/
		
		if(issingle == 1){
			if(all_sectionArray[0].week==undefined&&single_sectionArray[0].week==undefined){alert("必须要设置课程的时间地点");}
		}else{
			if(all_sectionArray[0].week==undefined){alert("必须要设置课程的时间地点");}
		}
		
		if(coursename == "") { $("#courseName").parent().siblings(".alert").html("课程名称不能为空").fadeIn();return;}
		if(needhours == "") { $("#needHours").parent().siblings(".alert").html("学时不能为空").fadeIn();return;}
		if(text == "") { $("#area").parent().siblings(".alert").html("简介不能为空").fadeIn();return;}
		if(teacherId == "") { $("#teacher").parent().siblings(".alert").html("老师名称不能为空").fadeIn();return;}
		else{
			var url =  "&courseName="+coursename+"&majorId="+majorid+"&needHours="+needhours+"&all_sectionArray="+
				JSON.stringify(all_sectionArray)+"&single_sectionArray="+JSON.stringify(single_sectionArray)+"&credit="+credit
				+"&type="+type+"&startWeek="+startWeek+"&endWeek="+endWeek+"&text="+text+"&teacherId="+teacherId+"&classesId="+classesId
			$.ajax({
				type:"POST",
				url:$('#hidden').val()+"/course/insert.action",
				dataType:"json",
				data:url,
				contentType:"application/x-www-form-urlencoded",
				success: function(data){
					//alert("isExist:"+data)
					if(data.isExist == 0){
						alert("添加成功");
						location.href = $('#hidden').val()+"/course/classCourse.action";
					}else{
						alert("课程已存在");
						location.href = $('#hidden').val()+"/course/add.action";
					}
				},
				error:function(){
					alert("添加失败");
				}
			});
		}
	});
});