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
		/* thead > tr > th:nth-child(2),tbody > tr > td:nth-child(2){ display:none;} */
    </style>
  </head>
  <body>
    <section id="container">
    	<header class="header">
        	<div class="sidebar-toggle-box">
            	<div class="glyphicon glyphicon-menu-hamburger tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
            </div>
            <a href="index.html" class="logo">岭南师范学院教务管理系统</a>
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
                    <li class="active">
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
                     <li>
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
        	<section class="wrapper">
            	<div class="container">
                    <div id="toolbar">
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
                    </div>
                    <table id="table"
                           data-click-to-select="true" 
                           data-sort-name="stuid"
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
    <div class="modal fade" id="studentsModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">警告！</h4>
			</div>
			<div class="modal-body">
				
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
    <script src="<%=basePath %>common/js/personalscore.js"></script>
    <script>
	  $(function(){
		$(".guanbi,.close").click(function(){
            	 $(".modal-backdrop").hide();
		});
		$("#trash").click(function(){
			modal("#studentsModal",'danger');
		});
		
	  });
    </script>
  </body>
</html>