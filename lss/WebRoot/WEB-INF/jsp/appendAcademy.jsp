<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
                        	<li><a href="${proPath }/student/list.action"><i></i><span>学生信息</span></a></li>
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
                    <li>
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>课程管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu">
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
                     <li class="active">
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>学院管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu" style="display:block;">
                        	<li><a href="${proPath }/academy/list.action"><i></i><span>学院信息</span></a></li>
                            <li><a href="${proPath }/academy/add.action" style="color:#FF6C60;"><i></i><span>学院添加</span></a></li>
                        </ul>
                    </li>
                     <li>
                    	<a href="${proPath }/login/loginOut.action">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>退出</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                    </li>
                   <%--  <li>
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
                      <label class="col-sm-2 control-label" for="academy">学院名称：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="academyName" type="text" name="academyName">
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div> 
                   <div class="form-group">
                      <div class="col-sm-5 col-sm-offset-2">
                         <button class="btn btn-primary" id="academySubmit" type="button">提交</button>
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
	var academyname;
	$("#academySubmit").on("click",function(){
		academyname      = $("#academyName").val();
	
		if(academyname == "") { $("#academyName").parent().siblings(".alert").html("学院名不能为空").fadeIn();return;}
		
		else{
			var url = "&academyName="+academyname
			$.ajax({
				type:"POST",
				url:$('#hidden').val()+"/academy/insert.action",
				dataType:"json",
				data:url,
				success: function(data){
					//alert("isExist:"+data)
					if(data.isExist == 0){
						alert("添加成功");
						location.href = $('#hidden').val()+"/academy/list.action";
					}else{
						alert("账户已存在");
						location.href = $('#hidden').val()+"/academy/add.action";
					}
				},
				error:function(){
					alert("添加失败");
				}
			});	
		}
	});
});
</script>
</body>
</html>
