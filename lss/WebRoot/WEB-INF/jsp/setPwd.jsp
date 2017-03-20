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
            <a href="#" class="logo">岭南师范学院教务管理系统</a>
        </header>
        <aside class="toggle-nav">
        	<div id="sidebar" class="nav-collapse ">
            	<ul class="sidebar-menu">
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
			<section class="wrapper">
				<input id="hidden" value="${lssPath}" hidden/>
        		<input id="f" value="${type}" hidden/>
        		<input id="f2" value="${id}" hidden/>
            	<form class="form-horizontal" role="form">
           		   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="pwd" >新密码：</label>
                      <div class="col-sm-5">
                         	<input id="pwd" type="password"/>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-md-2 col-sm-2 control-label" for="pwd2">再次输入新密码：</label>
                      <div class="col-sm-5">
                       		<input id="pwd2" type="password"/>
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <div class="col-sm-5 col-sm-offset-2">
                         <button class="btn btn-primary" id="submit" type="button">重设密码</button>
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
    <script src="<%=basePath %>common/js/acamedyconfig.js"></script>
    <script type="text/javascript">
		$(function(){
			var type = $("#f").val();
			var id = $("#f2").val();
			$("#submit").on("click",function(){
				var pwd = $("#pwd").val();
				var pwd2 = $("#pwd2").val();
				
				if(pwd == "") { $("#pwd").parent().siblings(".alert").html("新密码不能为空").fadeIn();return;}
				if(pwd2 == "") { $("#pwd2").parent().siblings(".alert").html("再次输入不能为空").fadeIn();return;}
				
				else{
					if(pwd == pwd2){
						var url = "&pwd="+pwd+"&type="+type+"&id="+id;
						$.ajax({
							type:"POST",
							url:$('#hidden').val()+"/login/setnewpwd.action",
							dataType:"json",
							data:url,
							success: function(data){
								alert(data.message);
								if(data.message == "新密码与原密码不能相同"){
									$("#pwd").val("");
									$("#pwd2").val("");
								}else{
									location.href = $('#hidden').val()+"/login/loginOut.action";
								}
							},
							error:function(){
								alert("重设密码失败");
								location.href = $('#hidden').val()+"/login/loginOut.action";
							}
						});	
					}else{
						alert("两次密码输入不一致");
					}
				}
			});
		});
    </script>
  </body>
</html>