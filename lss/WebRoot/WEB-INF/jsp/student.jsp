<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
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
<link href="<%=basePath%>favicon.ico" rel="icon" type="image/x-icon" />
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
/*
		#sidebar{ margin-left:-210px;}
		.main-content{ margin-left:0;}
		*/
</style>
</head>
<body>
	<section id="container"> <header class="header">
	<div class="sidebar-toggle-box">
		<div class="glyphicon glyphicon-menu-hamburger tooltips"
			data-placement="right" data-original-title="Toggle Navigation"></div>
	</div>
	<a href="${proPath }/login/index.action" class="logo">岭南师范学院教务管理系统</a>
	</header> <aside class="toggle-nav">
	<div id="sidebar" class="nav-collapse ">
		<ul class="sidebar-menu">
			<li><a href="${proPath }/login/index.action"> <i
					class="glyphicon glyphicon-pencil"></i> <span>首页</span>
			</a></li>
			<li class="active"><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>学生管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu" style="display: block;">
					<li><a href="${proPath }/student/list.action"
						style="color: #FF6C60;"><i></i><span>学生信息</span></a></li>
					<li><a href="${proPath }/student/add.action"><i></i><span>学生添加</span></a></li>
					<li><a href="#" onclick="searchStudent()"><i></i><span>关键字筛选</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>教师管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/teacher/list.action"><i></i><span>教师信息</span></a></li>
					<li><a href="${proPath }/teacher/add.action"><i></i><span>教师添加</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>班级管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/class/list.action"><i></i><span>班级信息</span></a></li>
					<li><a href="${proPath }/class/add.action"><i></i><span>班级添加</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>课程管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/course/add.action"><i></i><span>课程设置</span></a></li>
					<li><a href="${proPath }/course/classCourse.action"><i></i><span>课程信息</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>成绩管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/score/list.action"><i></i><span>成绩信息</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>专业管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/major/list.action"><i></i><span>专业信息</span></a></li>
					<li><a href="${proPath }/major/add.action"><i></i><span>专业添加</span></a></li>
				</ul></li>
			<li><a href="javascript:void(0);"> <i
					class="glyphicon glyphicon-pencil"></i> <span>学院管理</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a>
				<ul class="sec-menu">
					<li><a href="${proPath }/academy/list.action"><i></i><span>学院信息</span></a></li>
					<li><a href="${proPath }/academy/add.action"><i></i><span>学院添加</span></a></li>
				</ul></li>
			<li><a href="${proPath }/login/loginOut.action"> <i
					class="glyphicon glyphicon-pencil"></i> <span>退出</span> <span
					class="glyphicon glyphicon-plus"></span>
			</a></li>
			<%--      <li>
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
	</aside> <section class="main-content"> <input id="hidden"
		value="${lssPath}" hidden /> <section class="wrapper">
	<div class="container">
		<!-- 
                    <div class="alert alert-info" id="eventsResult" style="display:block;">
                        Here is the result of event.
                    </div>
            	 -->
		<div id="toolbar" class="btn-group">
			<a href="${proPath }/student/add.action" class="btn btn-default"
				id="addStu"> <i class="glyphicon glyphicon-plus"></i>
			</a>
			<button type="button" class="btn btn-default" id="trash">
				<i class="glyphicon glyphicon-trash"></i>
			</button>
			<button type="button" class="btn btn-default" id="small">
				<i class="glyphicon glyphicon-zoom-out"></i>
			</button>
			<button type="button" class="btn btn-default" id="big">
				<i class="glyphicon glyphicon-zoom-in"></i>
			</button>
		</div>
		<table id="table" data-show-export="true">
			<thead>
				<tr>
				</tr>
			</thead>
		</table>
	</div>
	</section> </section> </section>
	<!--模态对话框-->
	<div class="modal fade" id="studentsModal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">警告！</h4>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default guanbi"
						data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal"
						id="comfirm">OK</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<div class="modal-backdrop fade in"></div>
	<!--模态对话框-->

	<!-- Modal for initSelectStudent-->
	<div class="modal fade" id="selectModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">请筛选：</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-md-2 col-sm-2 control-label" for="acamedy">所属学院：</label>
							<div class="col-sm-5">
								<select class="form-control" id="acamedy" name="academyId"
									onchange="acamedyOnChange(this)">
									<c:forEach items="${academyList }" var="academy">
										<option value="${academy.id }">${academy.academyName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 col-sm-2 control-label" for="major">所属专业：</label>
							<div class="col-sm-5">
								<select class="form-control" id="major" name="majorId" onchange="majorOnChange(this)">
									<c:forEach items="${majorList }" var="major">
										<option value="${major.id }">${major.majorName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 col-sm-2 control-label" for="classes">所属班级：</label>
							<div class="col-sm-5">
								<select class="form-control" id="classes" name="classId">
									<c:forEach items="${classesList }" var="class">
										<option value="${class.id }">${class.className }</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">放弃筛选</button>
					<button type="button" class="btn btn-primary" id="submit">筛选</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for searchStudent-->
	<div class="modal fade" id="searchModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">根据关键字筛选学生信息（学院名、专业名、班级名、学号、姓名）：</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-md-2 col-sm-2 control-label" for="searchInput">请输入：</label>
							<div class="col-sm-5">
								<input id="searchInput" name="searchKey" />
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">放弃筛选</button>
					<button type="button" class="btn btn-primary" id="submit2">筛选</button>
				</div>
			</div>
		</div>
	</div>

	<script src="<%=basePath%>common/js/jquery-1.11.1.min.js"></script>
	<script src="<%=basePath%>common/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table-editable.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-editable.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table-export.js"></script>
	<script src="<%=basePath%>common/js/tableExport.js"></script>
	<script src="<%=basePath%>common/js/index.js"></script>
	<script src="<%=basePath%>common/js/stuconfig.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".guanbi,.close").click(function() {
				$(".modal-backdrop").hide();
			});
			$("#trash").click(
					function() {
						modal("#studentsModal", 'danger');
						$(".modal-footer > button:eq(1)").attr("class",
								"btn btn-danger multidel");
					});
			$("#comfirm").on(
					"click",
					function() {
						$(".modal-backdrop").hide();
						var ids = $.map($table.bootstrapTable('getSelections'),
								function(row) {
									return row.id;
								});
						console.log(ids);
					});
		});

		var success = true;
		function acamedyOnChange(obj) {
			if (success == false) {
				return;
			}
			success = false;
			var url = "&academyId=" + $(obj).val() + "&flag=1";
			var appendOption = '';
			var appendOption2 = '';
			$
					.ajax({
						type : "POST",
						url : $('#hidden').val() + "/student/list.action",
						dataType : "json",
						data : url,
						success : function(data) {
							$("#major").empty();
							$("#classes").empty();
							if (data.majorList != null) {
								for (var j = 0; j < data.majorList.length; j++) {
									appendOption += '<option value='+data.majorList[j].id+'>'
											+ data.majorList[j].majorName
											+ '</option>';
								}
							}
							$("#major").append(appendOption);
							if (data.classesList != null) {
								for (var k = 0; k < data.classesList.length; k++) {
									appendOption2 += '<option value='+data.classesList[k].id+'>'
											+ data.classesList[k].className
											+ '</option>';
								}
							}
							$("#classes").append(appendOption2);
							success = true;
						},
						error : function() {
							alert("失败");
							success = true;
						}
					});
		}
		
		var success2 = true;
		function majorOnChange(obj) {
			if (success2 == false) {
				return;
			}
			success2 = false;
			var url = "&majorId=" + $(obj).val();
			var appendOption3 = '';
			$.ajax({
						type : "POST",
						url : $('#hidden').val() + "/student/majorOnChange.action",
						dataType : "json",
						data : url,
						success : function(data) {
							$("#classes").empty();
							if (data.classesList != null) {
								for (var k = 0; k < data.classesList.length; k++) {
									appendOption3 += '<option value='+data.classesList[k].id+'>'
											+ data.classesList[k].className
											+ '</option>';
								}
							}
							$("#classes").append(appendOption3);
							success2 = true;
						},
						error : function() {
							alert("失败");
							success2 = true;
						}
					});
		}
		
		$("#submit").on(
				"click",
				function() {
					var acamedy = $('#acamedy').val();
					var major = $('#major').val();
					var classes = $('#classes').val();
					if (acamedy == null) {
						acamedy = undefined;
					}
					if (major == null) {
						major = undefined;
					}
					if (classes == null) {
						classes = undefined;
					}
					$table.bootstrapTable('refresh', {
						url : $('#hidden').val()
								+ '/student/get.action?academyId=' + acamedy
								+ "&majorId=" + major + "&classId=" + classes
					});
					$("#selectModel").modal('hide');//手动隐藏模态框
				});

		function searchStudent() {
			$('#searchModel').modal({
				show : true,
				backdrop : true
			})//手动显示模态框
		}

		$("#submit2").on(
				"click",
				function() {
					var key = $('#searchInput').val();
					$table.bootstrapTable('refresh', {
						url : $('#hidden').val()
								+ '/student/get.action?key='+key
					});
					$("#searchModel").modal('hide');
				});
	</script>
</body>
</html>