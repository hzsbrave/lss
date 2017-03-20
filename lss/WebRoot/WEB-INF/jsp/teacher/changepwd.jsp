<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/common/common.jspf" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>岭南师范学院教务管理系统</title>
    <link href="<%=basePath %>common/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath %>common/css/bootstrap-table.min.css" rel="stylesheet">
    <link href="<%=basePath %>common/css/conn.css" rel="stylesheet">
    <link href="<%=basePath %>common/css/profile.css" rel="stylesheet">
  </head>
  <body>
    <section id="container">
        <header class="header">
            <div class="sidebar-toggle-box">
                <div class="glyphicon glyphicon-menu-hamburger tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
            </div>
            <a href="#" class="logo">岭南师范学院教务管理系统</a>
            <div class="collapse navbar-collapse">
                <div class="dropdown">
                  <a class="dropdown-toggle user-info" type="button" id="profile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    <span>${loginUser.teacherName }</span>
                    <span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu pull-right extended" aria-labelledby="profile">
                    <div class="log-arrow-up"></div>
                    <li><a href="${proPath }/teacher/teacherEdit.action"><i class="glyphicon glyphicon-log-out"></i>设置</a></li>
                    <li><a href="${proPath }/login/loginOut.action"><i class="glyphicon glyphicon-log-out"></i>退出</a></li>
                  </ul>
                </div>
            </div>
        </header>
        <aside>
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
                        <ul class="sec-menu">
                        	<li><a href="${proPath }/teacher/scoreInfor.action"><i></i><span>成绩信息</span></a></li>
                        	<li><a href="${proPath }/score/addScore.action"><i></i><span>成绩添加</span></a></li>
                            <!-- 
                            <li><a href="${proPath }/teacher/scoreSelect.action"><i></i><span>成绩查询</span></a></li>
                             -->
                        </ul>
                    </li>
                      <li  class="active">
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
        	<section class="wrapper">
        		<input id="hidden" value="${lssPath}" hidden/>
        		<input id="userid" value="${loginUser.id}" hidden/>
            	<form class="form-horizontal" role="form">
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="old" >旧密码：</label>
                      <div class="col-sm-5">
                         	<input id="oldPwd" type="text"/>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="new">新密码：</label>
                      <div class="col-sm-5">
                       		<input id="newPwd" type="text"/>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
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
   	<script type="text/javascript">
	$(function(){
		var oldpwd,newpwd,id;
		$("#a").on("click",function(){
			oldpwd    = $("#oldPwd").val();
			newpwd	  = $("#newPwd").val();
			id        = $("#userid").val();
			//alert(oldpwd+"*"+newpwd+"*"+id);
				var url =  "&oldPwd="+oldpwd+"&newPwd="+newpwd+"&userId="+id
				$.ajax({
					type:"POST",
					url:$('#hidden').val()+"/teacher/changePwdDetail.action",
					dataType:"json",
					data:url,
					success: function(data){
						if(data.success == "1"){
							alert("修改成功");
							location.href = $('#hidden').val()+"/login/loginOut.action";
						}else{
							alert("原密码错误");
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