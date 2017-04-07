<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/common/common.jspf" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>岭南师范学院教务管理系统</title>
<link href="<%=basePath %>common/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="<%=basePath %>common/css/conn.css" rel="stylesheet" type="text/css">
</head>

<body>
	<section id="container">
    	<header class="header">
        	<div class="sidebar-toggle-box">
            	<div class="glyphicon glyphicon-menu-hamburger tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
            </div>
            <a href="${proPath }/login/index.action" class="logo">岭南师范学院教务管理系统</a>
        </header>
        <aside class="toggle-nav">
        	<div id="sidebar" class="nav-collapse ">
            	<ul class="sidebar-menu">
                	<li>
                    	<a href="${proPath }/login/index.action">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>首页</span>
                        </a>
                    </li>
                	<li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>学生管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu">
                        	<li><a href="${proPath }/student/list.action" ><i></i><span>学生信息</span></a></li>
                            <li><a href="${proPath }/student/add.action"><i></i><span>学生添加</span></a></li>
                        </ul>
                    </li>
                    <li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>教师管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu">
                        	<li><a href="${proPath }/teacher/list.action"><i></i><span>教师信息</span></a></li>
                            <li><a href="${proPath }/teacher/add.action"><i></i><span>教师添加</span></a></li>
                        </ul>
                    </li>
                   <li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>班级管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu">
                        	<li><a href="${proPath }/class/list.action"><i></i><span>班级信息</span></a></li>
                            <li><a href="${proPath }/class/add.action"><i></i><span>班级添加</span></a></li>
                        </ul>
                    </li>
                    <li class="active">
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>课程管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu" style="display:block;">
							<li><a href="${proPath }/course/add.action"><i></i><span>课程设置</span></a></li>
							<li><a href="${proPath }/course/classCourse.action"><i></i><span>课程信息</span></a></li>
                        </ul>
                    </li>
                    <li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>成绩管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu">
                        	<li><a href="${proPath }/score/list.action"><i></i><span>成绩信息</span></a></li>
                        </ul>
                    </li>
                     <li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>专业管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu">
                        	<li><a href="${proPath }/major/list.action"><i></i><span>专业信息</span></a></li>
                            <li><a href="${proPath }/major/add.action"><i></i><span>专业添加</span></a></li>
                        </ul>
                    </li>
                     <li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>学院管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu">
                        	<li><a href="${proPath }/academy/list.action"><i></i><span>学院信息</span></a></li>
                            <li><a href="${proPath }/academy/add.action"><i></i><span>学院添加</span></a></li>
                        </ul>
                    </li>
                     <li>
                    	<a href="${proPath }/login/loginOut.action">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>退出</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                    </li>
                    <%-- <li>
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
        </aside>
        <section class="main-content">
        <input id="hidden" value="${lssPath}" hidden/>
        	<section class="wrapper">
            	<form class="form-horizontal" role="form">
                <div class="form-group">
                      <label class="col-sm-2 control-label" for="classname">班级：</label>
                      <div class="col-sm-5">
                        <select class="form-control" id="classname" name="classes">
                        	<c:forEach items="${classesList }" var="class">
                        	 <option value="${class.id }">${class.className }</option>
                        	</c:forEach>
                          </select>
                     	</div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="coursename">课程名称：</label>
                      <div class="col-sm-5">
                        <select class="form-control" id="coursename" name="course" onchange="getHours(this.value)">
                        	<c:forEach items="${courseList }" var="course"> 
                        	 <option value="${course.id }">${course.courseName }</option>
                        	</c:forEach>
                          </select>
                          <div id="coursehours">
                        	<c:forEach items="${courseList }" var="course"> 
                        	 <input type="hidden" id="course${course.id }" value="${course.needHours }" />
                        	</c:forEach>
                          </div>
                     	</div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
               	   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="time">所需学时：</label>
                      <div class="col-sm-5">
                          <input class="form-control" id="time" name="hours" type="text" disabled value="${courseList[0].needHours}" >
                      </div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="major" >所属专业：</label>
                      <div class="col-sm-5">
                         <select class="form-control" id="major" name="major" onchange="changeMajor(this.value)">
                        	 <c:forEach items="${majorList }" var="major"> 
                        	 <option value="${major.id }">${major.majorName }</option>
                        	</c:forEach>
                                
                          </select>
                     	</div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="teacher">任教老师：</label>
                      <div class="col-sm-5">
                         <select class="form-control" id="teacher" name="teacher">
                        	 <c:forEach items="${teacherList }" var="teacher"> 
                        	 <option value="${teacher.id }">${teacher.teacherName }</option>
                        	</c:forEach>
                          </select>
                     	</div>
                   </div>
                   <div class="form-group">
                      <div class="col-sm-5 col-sm-offset-2">
                         <button class="btn btn-primary" id="a" type="button">提交</button>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                </form>
            </section>
        </section>
    </section>
<script src="<%=basePath %>common/js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath %>common/js/bootstrap.min.js"></script>
<script src="<%=basePath %>common/js/index.js"></script>
<script src="<%=basePath %>common/js/courseReg.js"></script>
<script type="text/javascript">
	$(function(){
		var classname,coursename,major,teacher;
		$("#a").on("click",function(){
			classes    = $("#classname").val();
			course	   = $("#coursename").val();
			major   = $("#major").val();
			teacher   = $("#teacher").val();

				var url =  "&classes="+classes+"&course="+course+"&major="+major+"&teacher="+teacher
				$.ajax({
					type:"POST",
					url:$('#hidden').val()+"/course/insertClassesCourse.action",
					dataType:"json",
					data:url,
					success: function(data){
						//alert("isExist:"+data.isExist)
						if(data.isExist == 0){
							alert("添加成功");
							location.href = $('#hidden').val()+"/course/classCourse.action";
						}else{
							alert("课程已存在");
							location.href = $('#hidden').val()+"/course/addClassCourse.action";
						}
					},
					error:function(){
						alert("添加失败");
					}
				});	
		});	
	});

	function getHours(id){
		//alert("getHour"+id);
		if(id!=''||id!=null){
			var hour = document.getElementById("course"+id);
			//alert(hour.value);
			$('#time').val(hour.value);
		}
	}
	
	function changeMajor(id){
		//alert(id);
		var url = "&major_id="+id;
		$.ajax({
			type:"POST",
			url:$('#hidden').val()+"/course/addClassCourseChange.action",
			dataType:"json",
			data:url,
			success: function(data){
				
				$("#coursename").empty();
				var appendOption = "";
            	var courseList = data.courseList;
            	for(var j=0;j<courseList.length;j++){
            		appendOption += '<option value='+courseList[j].id+'>'+courseList[j].courseName+'</option>';
				}
            	$("#coursename").append(appendOption);
            	 	
            	$("#classname").empty();
				var appendOption2 = "";
            	var classesList = data.classesList;
            	for(var j=0;j<classesList.length;j++){
            		appendOption2 += '<option value='+classesList[j].id+'>'+classesList[j].className+'</option>';
				}
            	$("#classname").append(appendOption2);
            	
            	if(courseList.length>0){
            		$('#coursehours').empty();
                	var appendOption3 = "";
                	for(var i=0;i<courseList.length;i++){
                		appendOption3 += '<input type="hidden" id="course'+courseList[i].id+'" value="'+courseList[i].needHours+'" />';
                	}
                	$("#coursehours").append(appendOption3);
                	
                	$("#time").val(courseList[0].needHours);
            	}
            	
            	$('#teacher').empty();
            	var appendOption4 = "";
            	var teacherList = data.teacherList;
            	for(var i=0;i<teacherList.length;i++){
            		appendOption4 += '<option value='+teacherList[i].id+'>'+teacherList[i].teacherName+'</option>';
            	}
            	$("#teacher").append(appendOption4);
			},
			error:function(){
				alert("获取失败");
			}
		});	
	}
</script>
</body>
</html>
