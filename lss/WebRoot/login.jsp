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
    <link href="<%=basePath %>common/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath %>common/css/login.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" >
		//捕获键盘回车事件
		document.onkeydown=keyListener;    
		function keyListener(e){   
		    e = e ? e : event;   
		    if(e.keyCode == 13){
		        login();    
		    }
		}
		
		//基本的登录元素判断
		function login(){
			var account = document.getElementById("user").value;
			var password = document.getElementById("password").value;
			var role  = $('input[name="role"]:checked').val();
		 	if(account == null || "" == account){
		 	    alert("注意！用户名不能为空！");
		 		return;
		 	}
			if(password == null || "" == password){
				alert("注意！密码不能为空");
		 		return;
		 	}
			if(typeof(role) == "undefined"||role==''){
        		alert("注意！请选择登录角色");
        		return;
        	}
		 	
		 	document.forms[0].submit();
		}

	</script>
      
  </head>
  <body>    
    <section id="container">
        <div class="images">
            <ul>
                <li><img src="<%=basePath %>common/images/1.jpg" alt="" /></li>
                <li><img src="<%=basePath %>common/images/pic3.jpg" alt="" /></li>
                <li><img src="<%=basePath %>common/images/1.jpeg" alt="" /></li> 
                <li><img src="<%=basePath %>common/images/1.jpg" alt="" /></li>
            </ul> 
            <div class="feather"></div>
        </div>
    	<div class="row">
        	<div id="login-wrapper" class="col-md-3">
            	<div class="panel panel-primary">
                	<div class="panel-heading">
                    	<h3 class="panel-title">岭南师范学院教务管理系统<span style="padding-left:45px;color:red;font-size:13px;">${errMsg}</span></h3>
                    </div>
                    <div class="panel-body">
                     	<div class="col-md-12 col-sm-12 alert alert-danger" role="alert">666666</div>
                    	<form id="login" role="form" class="form-horizontal" method="post" action="${proPath}/login/login.action">
                        	<div class="form-group">
                            	<div class="col-md-12 col-sm-12">
                                	<span class="glyphicon glyphicon-user"></span>
                                    <input type="text" class="form-control" placeholder="用户名" id="user" name="name">
                                    <span class="glyphicon glyphicon-remove deluser"></span>
                                </div>
                            </div>
                            <div class="form-group">
                            	<div class="col-md-12 col-sm-12">
                                	<span class="glyphicon glyphicon-lock"></span>
                                    <input type="password" class="form-control" placeholder="密码" id="password" name="pwd">
                                    <span class="glyphicon glyphicon-remove delpwd"></span>
                                   
                                </div>
                                
                            </div>
                             <div class="form-group">
                                  <div class="col-sm-12">
                                   <label class="checkbox-inline">
                                       <span class="glyphicon glyphicon-unchecked"></span>
                                       <input type="radio" name="role" value="student">学生
                                   </label>
                                   <label class="checkbox-inline">
                                      <span class="glyphicon glyphicon-unchecked"></span>
                                      <input type="radio" name="role" value="teacher">教师
                                   </label>
                                   <label class="checkbox-inline">
                                      <span class="glyphicon glyphicon-unchecked"></span>
                                      <input type="radio" name="role" value="manager">管理员
                                   </label>
                                   <label class="checkbox-inline">
                                      <a id="forgetPwd" href="${proPath }/login/forgetpwd.action" >忘记密码</a>
                                   </label>
                                  </div>
                                  <div class="col-sm-3 alert alert-danger"></div>
                               </div>
                            <div class="form-group">
                            	<div class="col-md-12 col-sm-12">
                               		  <button class="btnsub col-md-12 col-sm-12" type="button" id="lo" onclick="login()">登录</button>
                                </div>
                             </div>
                           
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
                
    <script src="<%=basePath %>common/js/jquery-1.11.1.min.js"></script>
    <script src="<%=basePath %>common/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>common/js/login.js"></script>
    <script type="text/javascript">
        $(function(){
            var $key = 0;
            var speed = 500;
            var timer = setInterval(autoplay, 3000);
            function autoplay(){
                $key++;
                if($key>3){
                    $key=1;
                    $(".images ul").css("left",0);
                }
                $(".images ul").stop().animate({"left":-$key*700}, speed);
            }
        });
       
    </script>
  </body>
</html>