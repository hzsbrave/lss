<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@include file="/common/common.jspf"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>岭南师范学院教务管理系统</title>
<link href="<%=basePath%>common/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>common/css/conn.css" rel="stylesheet"
	type="text/css">
<style>
.big_div {
	text-align: center;
	width: 100%;
	height: 450px;
	overflow: auto;
}

.week_select {
	width: 70px;
	height: 35px;
}

.building_select {
	width: 110px;
	height: 20px;
}

.room_select {
	width: 110px;
	height: 20px;
}

.course_section {
	display: none;
}

.add_picture {
	float: right;
	margin-right: 5%;
}

.delete_picture {
	float: right;
	margin-right: 5%;
}

.main {
	margin-top: 5px;
}

.section_div {
	text-align: left;
	width: 70%;
	margin-left: 15%;
}

#area {
	width: 200px;
	height: 80px;
}

#credit_select {
	width: 200px;
	height: 30px;
}

#type_select {
	width: 200px;
	height: 30px;
}

.single_week {
	display: none;
}

#single_week_p {
	font-size: 20px;
	margin-right: 300px;
}

#all_week_p {
	display: none;
	font-size: 20px;
	margin-right: 300px;
}

#major_div{
	display:block;
}
</style>
</head>

<body>
	<section id="container"> <header class="header">
	<div class="sidebar-toggle-box">
		<div class="glyphicon glyphicon-menu-hamburger tooltips"
			data-placement="right" data-original-title="Toggle Navigation"></div>
	</div>
	<a href="${proPath }/login/index.action" class="logo">学生成绩管理系统</a> </header> <aside
		class="toggle-nav">
	<div id="sidebar" class="nav-collapse ">
		<ul class="sidebar-menu">
			<li><a href="${proPath }/login/index.action"> <i
					class="glyphicon glyphicon-pencil"></i> <span>首页</span>
			</a></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>学生管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/student/list.action"><i></i><span>学生信息</span></a></li>
					<li><a href="${proPath }/student/add.action"><i></i><span>学生添加</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>教师管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/teacher/list.action"><i></i><span>教师信息</span></a></li>
					<li><a href="${proPath }/teacher/add.action"><i></i><span>教师添加</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>班级管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/class/list.action"><i></i><span>班级信息</span></a></li>
					<li><a href="${proPath }/class/add.action"><i></i><span>班级添加</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>课程管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu" style="display: block;">
					<li><a href="${proPath }/course/add.action" style="color:#FF6C60;"><i></i><span>课程设置</span></a></li>
					<li><a href="${proPath }/course/classCourse.action"><i></i><span>课程信息</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>成绩管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/score/list.action"><i></i><span>成绩信息</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>专业管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/major/list.action"><i></i><span>专业信息</span></a></li>
					<li><a href="${proPath }/major/add.action"><i></i><span>专业添加</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>学院管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/academy/list.action"><i></i><span>学院信息</span></a></li>
					<li><a href="${proPath }/academy/add.action"><i></i><span>学院添加</span></a></li>
				</ul></li>
			<li><a href="${proPath }/login/loginOut.action"> <i
					class="glyphicon glyphicon-pencil"></i> <span>退出</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a></li>
			<%--   <li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>用户管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu">
                        	<li><a href="${proPath }/user/list.action"><i></i><span>用户信息</span></a></li>
                            <li><a href="${proPath }/user/add.action"><i></i><span>用户添加</span></a></li>
                            <li><a href="${proPath }/user/list.action"><i></i><span>修改密码</span></a></li>
                        </ul>
                    </li> --%>

		</ul>
	</div>
	</aside> <section class="main-content"> <input id="hidden"
		value="${lssPath}" hidden /> <section class="wrapper">
	<form class="form-horizontal" role="form">
		<div class="form-group">
			<label class="col-sm-2 control-label" for="coursename">课程名称：</label>
			<div class="col-sm-5">
				<input class="form-control" id="courseName" type="text"
					name="courseName">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="needHours">所需学时：</label>
			<div class="col-sm-5">
				<input class="form-control" id="needHours" type="text"
					name="needHours">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="info">课程设置：</label>
			<div class="col-sm-5">
				<input class="form-control" id="info" type="text" name="courseinfo"
					onclick="openModel()">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="area">课程简介：</label>
			<div class="col-sm-5">
				<textarea id="area" name="courseintroduce"></textarea>
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="credit_select">课程学分：</label>
			<div class="col-sm-5">
				<select id="credit_select">
					<option value="0.5">0.5</option>
					<option value="1">1.0</option>
					<option value="2">2.0</option>
					<option value="3">3.0</option>
					<option value="4">4.0</option>
				</select>
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="type_select">课程类型：</label>
			<div class="col-sm-5">
				<select id="type_select" onchange="onchangeType(this)">
					<option value="1">学校安排的必修课程</option>
					<option value="2">学校安排的选修(普通)课程</option>
					<option value="3">学校安排的的选修(网络)课程</option>
					<option value="4">自由选择的讲座课程</option>
					<option value="5">自由选择的网络课程</option>
				</select>
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="acamedy">所属学院：</label>
			<div class="col-sm-5">
				<select class="form-control" id="acamedy" name="academy"
					onchange="changeAdademy(this)">
					<c:forEach items="${academyList }" var="academy">
						<option value="${academy.id }">${academy.academyName }</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group" id="major_div">
			<label class="col-md-2 col-sm-2 control-label" for="majorId">所属专业：</label>
			<div class="col-sm-5">
				<select class="form-control" id="majorId" name="majorId" onchange="changeMajor(this)">
					<c:forEach items="${majorList }" var="major">
						<option value="${major.id }">${major.majorName }</option>
					</c:forEach>
					<option value="0">选修课，无专业</option>
				</select>
			</div>
		</div>
		<div class="form-group" id="classes_div">
			<label class="col-md-2 col-sm-2 control-label" for="classesId">所属班级：</label>
			<div class="col-sm-5">
				<select class="form-control" id="classesId" name="classesId">
					<c:forEach items="${classesList }" var="classes">
						<option value="${classes.id }">${classes.className }</option>
					</c:forEach>
					<option value="0">选修课，无班级</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="teacher">课程教师：</label>
			<div class="col-sm-5">
				<select class="form-control" id="teacher" name="teacher">
					<c:forEach items="${teacherList }" var="teacher">
						<option value="${teacher.id }">${teacher.teacherName }</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<div class="col-sm-5 col-sm-offset-2">
				<button class="btn btn-primary" id="classSubmit" type="button">提交</button>
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
	</form>
	</section> </section> </section>

	<!-- Modal for courseinfo-->
	<div class="modal fade" id="model" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<div class="modal-body">
					<div class="big_div">
						<div>
							<h2>课程基本信息设置</h2>
						</div>
						周次: <select class="week_select" id="week_select_begin"
							onchange="checkWeek()">
							<option value="1">第一周</option>
							<option value="2">第二周</option>
							<option value="3">第三周</option>
							<option value="4">第四周</option>
							<option value="5">第五周</option>
							<option value="6">第六周</option>
							<option value="7">第七周</option>
							<option value="8">第八周</option>
							<option value="9">第九周</option>
							<option value="10">第十周</option>
							<option value="11">第十一周</option>
							<option value="12">第十二周</option>
							<option value="13">第十三周</option>
							<option value="14">第十四周</option>
							<option value="15">第十五周</option>
							<option value="16">第十六周</option>
						</select> 至 <select class="week_select" id="week_select_end"
							onchange="checkWeek()">
							<option value="1">第一周</option>
							<option value="2">第二周</option>
							<option value="3">第三周</option>
							<option value="4">第四周</option>
							<option value="5">第五周</option>
							<option value="6">第六周</option>
							<option value="7">第七周</option>
							<option value="8">第八周</option>
							<option value="9">第九周</option>
							<option value="10">第十周</option>
							<option value="11">第十一周</option>
							<option value="12">第十二周</option>
							<option value="13">第十三周</option>
							<option value="14">第十四周</option>
							<option value="15">第十五周</option>
							<option value="16">第十六周</option>
						</select> 区分单双周： <label><input id="is_week_yes" name="is_week"
							type="radio" value="1" onclick="show_single_week()" />是</label> <label><input
							id="is_week_no" name="is_week" type="radio" value="0"
							onclick="hide_single_week()" checked />否</label>
						<div class="all_week">
							</br> </br>
							<p id="all_week_p">单周：</p>
							<img src="../common/images/plus.png" width="32" height="32"
								class="add_picture" onclick="add()" />
							<div class="main"></div>
							<div class="model">
								<div class="course_section">
									<div class="section_div">
										</br> </br> <img src="../common/images/jian.png" width="30" height="30"
											class="delete_picture" onclick="del(this)" />
										<div>
											星期: <label><input class="week" name="week0"
												type="radio" value="1" />一</label> <label><input
												class="week" name="week0" type="radio" value="2" />二</label> <label><input
												class="week" name="week0" type="radio" value="3" />三</label> <label><input
												class="week" name="week0" type="radio" value="4" />四</label> <label><input
												class="week" name="week0" type="radio" value="5" />五</label> <label><input
												class="week" name="week0" type="radio" value="6" />六</label> <label><input
												class="week" name="week0" type="radio" value="7" />日</label>
										</div>
										</br> 节数: <label><input class="section" name="section0"
											type="checkbox" value="1" />1</label> <label><input
											class="section" name="section0" type="checkbox" value="2" />2</label>
										<label><input class="section" name="section0"
											type="checkbox" value="3" />3</label> <label><input
											class="section" name="section0" type="checkbox" value="4" />4</label>
										<label><input class="section" name="section0"
											type="checkbox" value="5" />5</label> <label><input
											class="section" name="section0" type="checkbox" value="6" />6</label>
										<label><input class="section" name="section0"
											type="checkbox" value="7" />7</label> <label><input
											class="section" name="section0" type="checkbox" value="8" />8</label>
										<label><input class="section" name="section0"
											type="checkbox" value="9" />9</label> <label><input
											class="section" name="section0" type="checkbox" value="10" />10</label>
										</br> </br> 教学楼: <select class="building_select" name="building0"
											onchange="onchangeBuilding(this)">
											<c:forEach items="${buildingList }" var="b">
												<option value="${b.buildingId }">${b.buildingName }</option>
											</c:forEach>
										</select> 房间(场地): <select class="room_select" name="room0">
											<c:forEach items="${roomList }" var="r">
												<option value="${r.roomId }">${r.roomName }</option>
											</c:forEach>
										</select></br>
									</div>
								</div>
							</div>
						</div>

						<div class="single_week">
							</br> </br>
							<p id="single_week_p">双周：</p>
							<img src="../common/images/plus.png" width="32" height="32"
								class="add_picture" onclick="single_add()" />
							<div class="main"></div>
							<div class="model">
								<div class="course_section">
									<div class="section_div">
										</br> </br> <img src="../common/images/jian.png" width="30" height="30"
											class="delete_picture" onclick="single_del(this)" />
										<div>
											星期: <label><input class="week" name="0week"
												type="radio" value="1" />一</label> <label><input
												class="week" name="0week" type="radio" value="2" />二</label> <label><input
												class="week" name="0week" type="radio" value="3" />三</label> <label><input
												class="week" name="0week" type="radio" value="4" />四</label> <label><input
												class="week" name="0week" type="radio" value="5" />五</label> <label><input
												class="week" name="0week" type="radio" value="6" />六</label> <label><input
												class="week" name="0week" type="radio" value="7" />日</label>
										</div>
										</br> 节数: <label><input class="section" name="0section"
											type="checkbox" value="1" />1</label> <label><input
											class="section" name="0section" type="checkbox" value="2" />2</label>
										<label><input class="section" name="0section"
											type="checkbox" value="3" />3</label> <label><input
											class="section" name="0section" type="checkbox" value="4" />4</label>
										<label><input class="section" name="0section"
											type="checkbox" value="5" />5</label> <label><input
											class="section" name="0section" type="checkbox" value="6" />6</label>
										<label><input class="section" name="0section"
											type="checkbox" value="7" />7</label> <label><input
											class="section" name="0section" type="checkbox" value="8" />8</label>
										<label><input class="section" name="0section"
											type="checkbox" value="9" />9</label> <label><input
											class="section" name="0section" type="checkbox" value="10" />10</label>
										</br> </br> 教学楼: <select class="building_select" name="building0"
											onchange="onchangeBuilding(this)">
											<c:forEach items="${buildingList }" var="b">
												<option value="${b.buildingId }">${b.buildingName }</option>
											</c:forEach>
										</select> 房间(场地): <select class="room_select" name="room0">
											<c:forEach items="${roomList }" var="r">
												<option value="${r.roomId }">${r.roomName }</option>
											</c:forEach>
										</select></br>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">放弃</button>
					<button type="button" class="btn btn-primary" id="submit"
						onclick="modelSubmit()">确认</button>
				</div>
			</div>
		</div>
	</div>
	<input id="hidden123" value="${majorList}" hidden/>
	<script src="<%=basePath%>common/js/jquery-1.11.1.min.js"></script>
	<script src="<%=basePath%>common/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>common/js/index.js"></script>
	<script src="<%=basePath%>common/js/courseReg.js"></script>
	<script src="<%=basePath%>common/js/courseSubmit.js"></script>
	<script type="text/javascript">
		var i = 1;
		var j = 1;
		$(function() {
			init_all();
			init_single();
		});

		function init_all() {
			$('.all_week .main').append(
					$('.all_week .model .course_section').html());
			$('.all_week .model .week').attr('name', 'week1');
			$('.all_week .model .section').attr('name', 'section1');
			$('.all_week .model .building_select').attr('name', 'building1');
			$('.all_week .model .room_select').attr('name', 'room1');
		}

		function init_single() {
			$('.single_week .main').append(
					$('.single_week .model .course_section').html());
			$('.single_week .model .week').attr('name', '1week');
			$('.single_week .model .section').attr('name', '1section');
			$('.single_week .model .building_select').attr('name', '1building');
			$('.single_week .model .room_select').attr('name', '1room');
		}

		function add() {
			$('.all_week .main').append(
					$('.all_week .model .course_section').html());
			i++;
			var str = "week" + i;
			$('.all_week .model .week').attr('name', str);
			var str2 = "section" + i;
			$('.all_week .model .section').attr('name', str2);
			var str3 = "building" + i;
			$('.all_week .model .building_select').attr('name', str3);
			var str4 = "room" + i;
			$('.all_week .model .room_select').attr('name', str4);
		}

		function del(obj) {
			var num = $('.all_week .main .section_div').length;
			$(obj).parent().remove();
			num--;
			if(num==0){
				init_all();	
			}
		}

		function single_add() {
			$('.single_week .main').append(
					$('.single_week .model .course_section').html());
			j++;
			var str = j + "week";
			$('.single_week .model .week').attr('name', str);
			var str2 = j + "section";
			$('.single_week .model .section').attr('name', str2);
			var str3 = j + "building";
			$('.single_week .model .building_select').attr('name', str3);
			var str4 = j + "room";
			$('.single_week .model .room_select').attr('name', str4);
		}

		function single_del(obj) {
			var num = $('.single_week .main .section_div').length;
			$(obj).parent().remove();
			num--;
			if(num==0){
				init_single();	
			}
		}

		function show_single_week() {
			$('.single_week').css("display", "block");
			$('#all_week_p').css("display", "block");
		}

		function hide_single_week() {
			$('.single_week').css("display", "none");
			$('#all_week_p').css("display", "none");
			$('.single_week .main').empty();
			init_single();
		}

		function openModel() {
			$('#model').modal({
				show : true,
				backdrop : true
			})//手动显示模态框
		}

		function checkWeek() {
			var end = $('#week_select_end').val();
			var begin = $('#week_select_begin').val();
			if (parseInt(end) < parseInt(begin)) {
				alert("结束周必须比开始周要大,请重新选择");
			}
		}

		function modelSubmit() {
			$("#model").modal('hide');
		}

		var success = true;
		function changeAdademy(obj) {
			if (success == false) {
				return;
			}
			success = false;
			var url = "&academyId=" + $(obj).val();
			var appendOption = '';
			var appendOption2 = '';
			var appendOption3 = '';
			$.ajax({
						type : "POST",
						url : $('#hidden').val() + "/course/add.action",
						dataType : "json",
						data : url,
						success : function(data) {
							$("#majorId").empty();
							$("#teacher").empty();
							$("#classesId").empty();
							if (data.majorList != null) {
								for (var k = 0; k < data.majorList.length; k++) {
									appendOption += '<option value='+data.majorList[k].id+'>'
											+ data.majorList[k].majorName
											+ '</option>';
								}
							}
							appendOption += '<option value="0">选修课，无专业</option>';
							$("#majorId").append(appendOption);
							if (data.teacherList != null) {
								for (var p = 0; p < data.teacherList.length; p++) {
									appendOption2 += '<option value='+data.teacherList[p].id+'>'
											+ data.teacherList[p].teacherName
											+ '</option>';
								}
								$("#teacher").append(appendOption2);
							}
							if (data.classesList != null) {
								for (var u = 0; u < data.classesList.length; u++) {
									appendOption3 += '<option value='+data.classesList[u].id+'>'
											+ data.classesList[u].className
											+ '</option>';
								}
							}
							appendOption3 += '<option value="0">选修课，无班级</option>';
							$("#classesId").append(appendOption3);
							success = true;
						},
						error : function() {
							alert("失败");
							success = true;
						}
					});
		}

		var success2 = true;
		function onchangeBuilding(obj) {
			if (success2 == false) {
				return;
			}
			success2 = false;
			var url = "&buildingId=" + $(obj).val();
			var appendOption = '';
			$.ajax({
						type : "POST",
						url : $('#hidden').val() + "/course/onchangeBuilding.action",
						dataType : "json",
						data : url,
						success : function(data) {
							var parent = $(obj).parent();
							var room = $(parent).find('.room_select');
							$(room).empty();
							if(data.roomList != null){
								for (var k = 0; k < data.roomList.length; k++) {
									appendOption += '<option value='+data.roomList[k].roomId+'>'
											+ data.roomList[k].roomName
											+ '</option>';
								}
								$(room).append(appendOption);
							}
							success2 = true;
						},
						error : function() {
							alert("失败");
							success2 = true;
						}
					});
		}

		var success3 = true;
		function changeMajor(obj) {
			if (success3 == false) {
				return;
			}
			success3 = false;
			var url = "&majorId=" + $(obj).val();
			var appendOption = '';
			$.ajax({
				type : "POST",
				url : $('#hidden').val() + "/course/add.action",
				dataType : "json",
				data : url,
				success : function(data) {
					$("#classesId").empty();
					if (data.classesList != null) {
						for (var u = 0; u < data.classesList.length; u++) {
							appendOption += '<option value='+data.classesList[u].id+'>'
									+ data.classesList[u].className
									+ '</option>';
						}
					}
					appendOption += '<option value="0">选修课，无班级</option>';
					$("#classesId").append(appendOption);
					success3 = true;
				},
				error : function() {
					alert("失败");
					success3 = true;
				}
			});
		}
		
		function onchangeType(obj){
			var val = $(obj).val();
			if(val == '1'){
				$('#major_div').css("display","block");
			}else{
				$('#major_div').css("display","none");
			}
		}
	</script>
</body>
</html>

