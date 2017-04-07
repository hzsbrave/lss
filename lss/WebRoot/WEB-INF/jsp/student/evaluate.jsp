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
    <title></title>
    <link rel="stylesheet" href="<%=basePath %>common/css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath %>common/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="<%=basePath %>common/css/conn.css">
    <link rel="stylesheet" href="<%=basePath %>common/css/profile.css"/>
    <style type="text/css">
        input{ outline-color: #64D3E7; padding:3px 10px; border-radius: 4px; border:1px solid #64D3E7;}
    </style>
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
                    <!-- 
                    <img src="../images/2.jpg" alt="" />
                     -->
                    <span>${loginUser_student.studentName }</span>
                    <span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu pull-right extended" aria-labelledby="profile">
                    <div class="log-arrow-up"></div>
                    <!-- 
                    <li><a href="/student/manage/profile.html"><i class="glyphicon glyphicon-briefcase"></i>Profile</a></li>
                    <li><a href="##"><i class="glyphicon glyphicon-cog"></i>Setting</a></li>
                    <li><a href="##"><i class="glyphicon glyphicon-tint"></i>Notification</a></li>
                     -->
                    <li><a href="${proPath }/login/loginOut.action?flag=1"><i class="glyphicon glyphicon-log-out"></i>退出</a></li>
                  </ul>
                </div>
            </div>
        </header>
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <ul class="sidebar-menu">
                    <li>
                        <a href="${proPath }/student/studentInfor.action">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>个人信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="${proPath }/student/studentEdit.action">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>修改个人信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="${proPath }/student/studentScore.action">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>成绩信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="${proPath }/student/changePwd.action">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>修改登录密码</span>
                        </a>
                    </li>
                    <li class="active">
                        <a href="${proPath }/student/evaluate.action">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>教学评价</span>
                        </a>
                    </li>
                </ul>
            </div>
        </aside>
       <section class="main-content">
       		<input id="hidden" value="${lssPath}" hidden/>
        	<input id="userid" value="${loginUser_student.id}" hidden/>
            <section class="wrapper">
            	<div class="container">
                    <div id="toolbar">
                    	<Button type="button" id="submit">提交评价</Button>
                    </div>
                 <%--    <form id="myform" method="post" action="${proPath }/student/insertevaluate.action"> --%>
	                    <table id="table"
	                           data-click-to-select="true" 
	                           data-sort-name="stuid"
	                           data-sort-order="asc">
	                        <thead>
	                        <tr>
	                           
	                        </tr>
	                        </thead>
	                    </table>
                 <!--    </form> -->
                </div>
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
    <script src="<%=basePath %>common/js/evaluate.js"></script>
   	<script type="text/javascript">

   	</script>
   	
  </body>
</html>