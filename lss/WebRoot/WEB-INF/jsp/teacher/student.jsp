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
		/* thead > tr > th:nth-child(3),tbody > tr > td:nth-child(3){ display:none;} */
        .search .form-group{ display:inline-block; margin:10px -15px !important;}
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
                    <span>${loginUser.teacherName }</span>
                    <span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu pull-right extended" aria-labelledby="profile">
                    <div class="log-arrow-up"></div>
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
                	<li class="active">
                    	<a href="javascript:void(0);">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>学生管理</span>
                            <span class="glyphicon glyphicon-plus"></span>
                        </a>
                        <ul class="sec-menu" style="display:block;">
                        	<li><a href="${proPath }/teacher/studentInfor.action" style="color:#FF6C60;"><i></i><span>学生信息</span></a></li>
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
                      <li>
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
        <input id="hidden" value="${lssPath}" hidden/>
        	<section class="wrapper">
            	<div class="container">
                <form class="form-horizontal search" role="form">
                		<!-- 
                          <div class="form-group">
                              <div class="col-sm-12">
                                 <select name="" id="" class="form-control">
                                     <option value="">2012级</option>
                                 </select>
                              </div>
                           </div> 
                           <div class="form-group">
                              <div class="col-sm-12">
                                  <select name="" id="" class="form-control">
                                  	<c:forEach items="${classesList }" var="class">
                                     <option value="${class.id }">${class.className }</option>
                                  	</c:forEach>
                                 </select>
                              </div>
                           </div>
                           <div class="form-group">
                              <div class="col-sm-5">
                                 <button class="btn btn-info" id="btn" type="submit" name="submit">提交</button>
                              </div>
                           </div>
                		 -->
                    </form>
                    <div id="toolbar" class="btn-group">
                        <button type="button" class="btn btn-default" id="small">
                            <i class="glyphicon glyphicon-zoom-out"></i>
                        </button>
                        <button type="button" class="btn btn-default" id="big">
                            <i class="glyphicon glyphicon-zoom-in"></i>
                        </button>
                    </div>
                    <table id="table"
                           data-detail-formatter="detailFormatter" 
                           data-click-to-select="true" 
                           data-show-export="true"
                           data-sort-name="stuid"
                           data-sort-order="asc">
                        <thead>
                        <tr>
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
    <script src="<%=basePath %>common/js/teaStuconfig.js"></script>
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
	  });
    </script>
  </body>
</html>