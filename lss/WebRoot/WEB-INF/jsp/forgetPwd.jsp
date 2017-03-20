<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style type="text/css">
    	.detail,tbody > tr > td:first-child{ width:30px;}
		thead > tr > th:nth-child(3),tbody > tr > td:nth-child(3){ display:none;}
    </style>
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
                	<li class="active">
                    	<a href="${proPath }/login/forgetpwd.action">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>找回密码</span>
                        </a>
                    </li>
                    <li>
                    	<a href="${proPath }/login/loginOut.action">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>返回</span>
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
                      <label class="col-sm-2 control-label">账号类型：</label>
                      <div class="col-sm-5">
                         <label class="checkbox-inline">
                          <input type="radio" name="type" value="0" checked>教师
                       </label>
                       <label class="checkbox-inline">
                          <input type="radio" name="type" value="1">学生
                       </label>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="id" >用户账号：</label>
                      <div class="col-sm-5">
                         	<input id="id" type="text"/>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="name">用户名称：</label>
                      <div class="col-sm-5">
                       		<input id="name" type="text"/>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="idcard">身份证号码：</label>
                      <div class="col-sm-5">
                       		<input id="idcard" type="text"/>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="phone">预留手机号码：</label>
                      <div class="col-sm-5">
                       		<input id="phone" type="text"/>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <div class="col-sm-5 col-sm-offset-2">
                         <button class="btn btn-primary" id="submit" type="button">找回密码</button>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                </form>
            </section>
        </section>
    </section>
  
	<script src="<%=basePath %>common/js/jquery-1.11.1.min.js"></script>
    <script src="<%=basePath %>common/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>common/js/bootstrap-table.js"></script>
	<script src="<%=basePath %>common/js/bootstrap-table-editable.js"></script>
    <script src="<%=basePath %>common/js/bootstrap-editable.js"></script>
    <script src="<%=basePath %>common/js/bootstrap-table-export.js"></script>
    <script src="<%=basePath %>common/js/tableExport.js"></script>
    <script src="<%=basePath %>common/js/index.js"></script>
    <script type="text/javascript">
		$(function(){
			$("#submit").on("click",function(){
				var type = $("input:checked").val();
				var id = $("#id").val();
				var name = $("#name").val();
				var idcard = $("#idcard").val();
				var phone = $("#phone").val();
				
				if(id == "") { $("#id").parent().siblings(".alert").html("账号不能为空").fadeIn();return;}
				if(name == "") { $("#name").parent().siblings(".alert").html("名称不能为空").fadeIn();return;}
				if(idcard == "") { $("#idcard").parent().siblings(".alert").html("身份证号码不能为空").fadeIn();return;}
				if(phone == "") { $("#phone").parent().siblings(".alert").html("手机号码不能为空").fadeIn();return;}
				else{
					var url = "&id="+id+"&name="+name+"&idcard="+idcard+"&phone="+phone+"&type="+type;
					$.ajax({
						type:"POST",
						url:$('#hidden').val()+"/login/findPwd.action",
						dataType:"json",
						data:url,
						success: function(data){
							if(data.flag == 1){
								location.href = $('#hidden').val()+"/login/setpwd.action?type="+data.type+"&id="+id;
							}else{
								alert("预留信息不匹配，无法找回");
								location.href = $('#hidden').val()+"/login/forgetpwd.action";
							}
						},
						error:function(){
							alert("找回失败");
						}
					});	
				}
			});
		});
    </script>
  </body>
</html>