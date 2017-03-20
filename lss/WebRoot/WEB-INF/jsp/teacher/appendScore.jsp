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
                    	<a href="${proPath }/teacher/teacherInfor.action">
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
                        	<li><a href="${proPath }/teacher/studentInfor.action"><i></i><span>学生信息</span></a></li>
                        </ul>
                    </li>
                    <li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>成绩管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu" style="display:block;">
                        	<li><a href="${proPath }/teacher/scoreInfor.action"><i></i><span>成绩信息</span></a></li>
                        	<li><a href="${proPath }/score/addScore.action" style="color:#FF6C60;"><i></i><span>成绩添加</span></a></li>
                            <!-- 
                            <li><a href="${proPath }/teacher/scoreSelect.action"><i></i><span>成绩查询</span></a></li>
                             -->
                        </ul>
                    </li>
                      <li>
                        <a href="${proPath }/teacher/changePwd.action">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>修改登录密码</span>
                        </a>
                    </li>
                    <li>
                        <a href="${proPath }/teacher/analysis.action?teacher_id=${loginUser.id}">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>教学质量评价</span>
                        </a>
                    </li>
                </ul>
            </div>
        </aside>
        <section class="main-content">
        <input id="hidden" value="${lssPath}" hidden/>
        	<section class="wrapper">
            	<form class="form-horizontal" role="form">
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="classid">学生姓名：</label>
                      <div class="col-sm-5">
                         <select class="form-control" id="studentId" name="studentId">
                         	<c:forEach items="${studentList }" var="student">
                        	 <option value="${student.id }">${student.studentName }</option>
                         	</c:forEach>
                          </select>
                     	</div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="classid">课程：</label>
                      <div class="col-sm-5">
                         <select class="form-control" id="courseId" name="courseId">
                         	<c:forEach items="${courselList }" var="course">
                        	 <option value="${course.id }">${course.courseName }</option>
                         	</c:forEach>
                          </select>
                     	</div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="grade">成绩：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="score" name="score" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <div class="col-sm-5 col-sm-offset-2">
                         <button class="btn btn-primary" id="submit" type="button">提交</button>
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
<script type="text/javascript">
$(function(){
	var studentId,courseId,score;
	$("#submit").on("click",function(){
		studentId    = $("#studentId").val();
		courseId	  = $("#courseId").val();
		score        = $("#score").val();
		//alert(oldpwd+"*"+newpwd+"*"+id);
			var url =  "&studentId="+studentId+"&courseId="+courseId+"&score="+score
			$.ajax({
				type:"POST",
				url:$('#hidden').val()+"/score/insertScore.action",
				dataType:"json",
				data:url,
				success: function(data){
					if(data.is_exist == "1"){
						alert("添加成功");
						location.href = $('#hidden').val()+"/teacher/scoreInfor.action";
					}else{
						alert("成绩已存在，若需要修改，请在成绩详情信息处修改！");
						location.href = $('#hidden').val()+"/teacher/scoreInfor.action";
					}
				},
				error:function(){
					alert("操作失败");
				}
			});	
	});	
});
</script>
</body>
</html>
