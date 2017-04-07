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
		/*#sidebar{ margin-left:-210px;}
		.main-content{ margin-left:0;}*/
        .select,#chart{ width:48%; height:500px; float:left; margin-left:5px; 
            -webkit-box-sizing: border-box;
               -moz-box-sizing: border-box;
                    box-sizing: border-box;}
                    .pickListButtons {
              padding: 10px;
              text-align: center;
            }
            .pickListButtons button {
              margin-bottom: 5px;
            }
            .pickListSelect {
              height: 200px !important;
            }
            #chart{ border: 1px solid #ccc;}
            #btn{ float:right;}
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
                    <img src="<%=basePath %>common/images/2.jpg" alt="" />
                     -->
                    <span>${loginUser_teacher.teacherName }</span>
                    <span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu pull-right extended" aria-labelledby="profile">
                    <div class="log-arrow-up"></div>
                    <!-- 
                    <li><a href="/teacher/manage/teacherProfile.html"><i class="glyphicon glyphicon-briefcase"></i>Profile</a></li>
                    <li><a href="##"><i class="glyphicon glyphicon-cog"></i>Setting</a></li>
                    <li><a href="##"><i class="glyphicon glyphicon-tint"></i>Notification</a></li>
                     -->
                    <li><a href="${proPath }/login/loginOut.action?flag=2"><i class="glyphicon glyphicon-log-out"></i>退出</a></li>
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
                	<li class="active">
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
                        	<li><a href="${proPath }/score/addScore.action"><i></i><span>成绩添加</span></a></li>
                            <li><a href="${proPath }/teacher/scoreSelect.action" style="color:#FF6C60;"><i></i><span>成绩查询</span></a></li>
                        </ul>
                    </li>
                      <li>
                        <a href="${proPath }/teacher/changePwd.action">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>修改登录密码</span>
                        </a>
                    </li>
                    <li>
                        <a href="${proPath }/teacher/analysis.action?teacher_id=${loginUser_teacher.id}">
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
                <div class="select">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          <h3 class="panel-title">成绩统计</h3>
                        </div>
                        <div class="panel-body">
                          <div class="form-group col-sm-6">
                              <select name="grade" id="grade" class="form-control" onchange="selectClass">
                                  <option value="2012">2012</option>
                                  <option value="2013">2013</option>
                                  <option value="2014">2014</option>
                                  <option value="2015">2015</option>
                              </select>
                          </div>
                          <div class="form-group col-sm-6">
                              <select name="course" id="course" class="form-control">
                              	<c:forEach items="${courseList }" var="course">
                                  <option value="${course.id }">${course.courseName }</option>
                              	</c:forEach>
                              </select>
                          </div>
                          <div id="pickList"></div>
                        </div>
                        <div class="panel-footer clearfix">
                            <button type="button" class="btn btn-info" id="btn">生成图表</button>
                        </div>
                   </div>
                </div>
                <div id="chart"></div>
            </section>
        </section>
    </section>
<!--模态对话框-->
	<script src="<%=basePath %>common/js/jquery-1.11.1.min.js"></script>
    <script src="<%=basePath %>common/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>common/js/index.js"></script>
    <script type="text/javascript" src="<%=basePath %>common/js/multiselect.js"></script>
    <script type="text/javascript" src="<%=basePath %>common/js/echarts.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>common/js/scoreChart.js"></script>
    <script>
	  $(function(){
		$(".guanbi,.close").click(function(){
            	 $(".modal-backdrop").hide();
		});
		$("#trash").click(function(){
			modal("#studentsModal",'danger');
		});
		$("#comfirm").on("click",function(){
			$(".modal-backdrop").hide();
			 var ids = $.map($table.bootstrapTable('getSelections'), function (row) {
                return row.id;
            });
			console.log(ids);
		});

        $("#btn").on("click",function(){
            //var option = $("#pickListResult option").map(function(){return $(this).val();}).get().join(", ");
            var option = $("#pickListResult option").map(function(){return $(this).val();}).get().join(", ");
            //console.log(option);
            chart();
        });
	  });
    </script>
  </body>
</html>