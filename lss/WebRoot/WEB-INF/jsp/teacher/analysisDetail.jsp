<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/common.jspf"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>岭南师范学院教务管理系统</title>
<link href="<%=basePath%>common/css/bootstrap.css" rel="stylesheet">
<link href="<%=basePath%>common/css/bootstrap-table.min.css"
	rel="stylesheet">
<link href="<%=basePath%>common/css/conn.css" rel="stylesheet">
<style type="text/css">
.detail, tbody>tr>td:first-child {
	width: 30px;
}

thead>tr>th:nth-child(3), tbody>tr>td:nth-child(3) {
	display: none;
}
</style>
</head>
<body>
	<section id="container"> <header class="header">
	<div class="sidebar-toggle-box">
		<div class="glyphicon glyphicon-menu-hamburger tooltips"
			data-placement="right" data-original-title="Toggle Navigation"></div>
	</div>
	<a href="${proPath }/login/index.action" class="logo">岭南师范学院教务管理系统</a>
	</header> 
	<aside class="toggle-nav">
	<div id="sidebar" class="nav-collapse ">
		<ul class="sidebar-menu">
					<li>
                    	<a href="${proPath }/teacher/analysis.action?teacher_id=${loginUser.id}">
                        	<i class="glyphicon glyphicon-pencil"></i>
                            <span>返回</span>
                        </a>
                    </li>
		</ul>
	</div>
	</aside> 
		 <section class="main-content">
       		<input id="hidden" value="${lssPath}" hidden/>
       		<div style="float:left;margin-top:100px;margin-left:50px;">
       		 <label for="course">课程：</label>
				<select class="form-control" id="course" name="course" onchange="change(this)">
					<c:forEach items="${list}" var="course">
						<option value="${course.courseId }">${course.courseName }</option>
					</c:forEach>
				</select>
				</div>
			</div>
            <section class="wrapper">
            	<div class="container">
                 <!--    <div id="toolbar">
                    	<div class="form-group">
						</div>
                    </div> -->
	                    <table id="table"
	                           data-click-to-select="true" 
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
	
	<script src="<%=basePath%>common/js/jquery-1.11.1.min.js"></script>
	<script src="<%=basePath%>common/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table-editable.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-editable.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table-export.js"></script>
	<script src="<%=basePath%>common/js/tableExport.js"></script>
	<script src="<%=basePath%>common/js/index.js"></script>
	<script src="<%=basePath%>common/js/analysisdetail.js"></script>
	<script>
		$(function() {

		});
	</script>
</body>
</html>