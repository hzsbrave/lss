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
		thead > tr > th:nth-child(2),tbody > tr > td:nth-child(2){ display:none;}
		select > option:hover{ background:#fff;}
		.editable-submit{ margin:3px 3px;}
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
                    <li class="active">
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>成绩管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu" style="display:block;">
                        	<li><a href="${proPath }/score/list.action" style="color:#FF6C60;"><i></i><span>成绩信息</span></a></li>
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
                 <%--    <li>
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
            	<div class="container">
            	<!-- 
                    <div class="alert alert-info" id="eventsResult" style="display:block;">
                        Here is the result of event.
                    </div>
            	 -->
                    <div id="tool">
                    	<!-- 
                        <select class="btn btn-default" id="term">
                        	<option value="000001">2012-2013</option>
                             <option value="000002">2013-2014</option>
                             <option value="000003">2014-2015</option>
                        </select>
                        <select class="btn btn-default" id="termth">
                        	<option value="01">第一学期</option>
                            <option value="02">第二学期</option>
                        </select>
                    	 -->
                    	 <!-- 
                         <select class="btn btn-default" id="class">
	                         <c:forEach items="${classesList }" var="class">
	                        	<option value="${class.id }">${class.className }</option>
	                         </c:forEach>
                        </select>
                        <select class="btn btn-default" id="course">
                        	<c:forEach items="${courseList }" var="course">
	                        	<option value="${course.id }">${course.courseName }</option>
	                         </c:forEach>
                        </select>
                    	  -->
                    </div>
                    <table id="table"
                           data-detail-formatter="detailFormatter" 
                           data-click-to-select="true" 
                           data-show-export="true"
                           data-sort-name="id"
                           data-sort-order="asc">
                        <thead>
                        <tr>
                            <!--<th data-field="checkbox" data-checkbox="true"></th>
                            <th data-field="id" data-sortable="true">ID</th>
                            <th data-field="stuid" data-editable="true">学号</th>
                            <th data-field="name" data-editable="true">姓名</th>
                            <th data-field="sex">性别</th>
                            <th data-field="birth">出生年月</th>
                            <th data-field="classid">班级</th>
                            <th data-field="classid">班级</th>-->
                        </tr>
                        </thead>
                    </table>
                </div>
            </section>
        </section>
    </section>
    <!--模态对话框-->
    <div class="modal fade" id="scoreModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">警告！</h4>
			</div>
			<div class="modal-body">
				<p>模态弹出窗主体内容</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default guanbi" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-danger" data-dismiss="modal" id="comfirm">OK</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
 <div class="modal-backdrop fade in"></div>
<!--模态对话框-->
	<script src="<%=basePath %>common/js/jquery-1.11.1.min.js"></script>
    <script src="<%=basePath %>common/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>common/js/bootstrap-table.js"></script>
	<script src="<%=basePath %>common/js/bootstrap-table-editable.js"></script>
    <script src="<%=basePath %>common/js/bootstrap-editable.js"></script>
    <script src="<%=basePath %>common/js/bootstrap-table-export.js"></script>
    <script src="<%=basePath %>common/js/tableExport.js"></script>
    <script src="<%=basePath %>common/js/index.js"></script>
    <script src="<%=basePath %>common/js/scoreconfig.js"></script>
  </body>
</html>