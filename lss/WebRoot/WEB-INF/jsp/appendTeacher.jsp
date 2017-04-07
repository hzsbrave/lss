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
                        	<li><a href="${proPath }/student/list.action"><i></i><span>学生信息</span></a></li>
                            <li><a href="${proPath }/student/add.action"><i></i><span>学生添加</span></a></li>
                        </ul>
                    </li>
                    <li class="active">
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>教师管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu" style="display:block;">
                        	<li><a href="${proPath }/teacher/list.action"><i></i><span>教师信息</span></a></li>
                            <li><a href="${proPath }/teacher/add.action" style="color:#FF6C60;"><i></i><span>教师添加</span></a></li>
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
                      <label class="col-sm-2 control-label" for="teacherid">教师号：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="teacherid" type="text" name="teacherNo">
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="teachername">姓名：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="teacherName" type="text" name="teacherName">
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <!-- 
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="staffid">职工号：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="staffid" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                    -->
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="phone">手机号码：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="phone" type="tel" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="identity">身份证：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="identity" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label">性别：</label>
                      <div class="col-sm-5">
                         <label class="checkbox-inline">
                          <input type="radio" name="gender" value="0" checked>男
                       </label>
                       <label class="checkbox-inline">
                          <input type="radio" name="gender" value="1">女
                       </label>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <!-- 
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="birthplace">籍贯：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="birthplace" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" for="nation">民族：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="nation" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="birth">出生年月：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="birth" type="month" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="entrytime">入职时间：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="entrytime" type="month" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="address">家庭住址：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="address" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="dwelling">现住址：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="dwelling" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="politicsStatus">政治面貌：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="politicsStatus" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                    -->
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="edubackground">学历：</label>
                      <div class="col-sm-5">
                         <select class="form-control" id="xueliId" name="xueliId">
                       	 	<option value="0">本科</option>
                       	 	<option value="1">硕士</option>
                       	 	<option value="2">教授</option>
                       	 	<option value="3">博士</option>
                          </select>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="acamedy">所属学院：</label>
                      <div class="col-sm-5">
                         <select class="form-control" id="acamedyId" name="academyId">
                         	<c:forEach items="${academyList }" var="academy">
                        	 	<option value="${academy.id }">${academy.academyName }</option>
                         	</c:forEach>        
                          </select>
                     	</div>
                   </div>
                   <div class="form-group">
                      <div class="col-sm-5 col-sm-offset-2">
                         <button class="btn btn-primary" id="teaSubmit" type="button">提交</button>
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
		$("#teaSubmit").on("click",function(){
			var teacherno = $("#teacherid").val();
			var teachername = $("#teacherName").val();
			var xueliid = $("#xueliId").val();
			var gender = $("input:checked").val();
			var acamedyid = $("#acamedyId").val();
			var phone = $("#phone").val();
			var identity = $("#identity").val();
			if(teacherno == "") { $("#teacherid").parent().siblings(".alert").html("教师号不能为空").fadeIn();return;}
			if(teachername == "") { $("#teacherName").parent().siblings(".alert").html("教师名不能为空").fadeIn();return;}
			if(phone == "") { $("#phone").parent().siblings(".alert").html("手机号码不能为空").fadeIn();return;}
			if(identity == "") { $("#identity").parent().siblings(".alert").html("身份证号码不能为空").fadeIn();return;}
			else{
				var url = "&teacherNo="+teacherno+"&teacherName="+teachername+"&gender="+gender+"&xueliId="+xueliid+"&acamedyId="+acamedyid+"&phone="+phone+"&identity="+identity;
				$.ajax({
					type:"POST",
					url:$('#hidden').val()+"/teacher/insert.action",
					dataType:"json",
					data:url,
					success: function(data){
						//alert("isExist:"+data)
						if(data.isExist == 0){
							alert("添加成功");
							location.href = $('#hidden').val()+"/teacher/list.action";
						}else{
							alert("账户已存在");
							location.href = $('#hidden').val()+"/teacher/add.action";
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
