<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/common.jspf"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>岭南师范学院教务管理系统</title>
<link href="<%=basePath%>common/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>common/css/conn.css" rel="stylesheet"
	type="text/css">
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
					<li><a href="${proPath }/student/list.action"><i></i><span>学生信息</span></a></li>
					<li><a href="${proPath }/student/add.action"
						style="color: #FF6C60;"><i></i><span>学生添加</span></a></li>
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
			<%--  <li>
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
	</aside> <section class="main-content"> <section class="wrapper">
	<input id="hidden" value="${lssPath}" hidden /> <input id="classlist"
		value="${requestScope.classesList}" hidden />
	<form class="form-horizontal" role="form">
		<div class="form-group">
			<label class="col-sm-2 control-label" for="stuid">学号：</label>
			<div class="col-sm-5">
				<input class="form-control" id="stuid" type="text" name="studentNo">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="stuname">姓名：</label>
			<div class="col-sm-5">
				<input class="form-control" id="stuname" type="text"
					name="studentName">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="grade">年级：</label>
			<div class="col-sm-5">
				<input class="form-control" id="grade" type="text" name="grade">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-md-2 col-sm-2 control-label" for="classid">信息（学院、专业、班级）：</label>
			<div class="col-sm-5" onclick="clickInfo()">
				<input  id="classid" hidden></input>
				<input class="form-control" id="classid2"></input>
				<%-- <select class="form-control" id="classid" name="classId">
					<c:forEach items="${classesList }" var="class">
						<option value="${class.id }">${class.className }</option>
					</c:forEach> 
				</select> --%>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="phone">手机号码：</label>
			<div class="col-sm-5">
				<input class="form-control" id="phone" type="text">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="email">邮箱：</label>
			<div class="col-sm-5">
				<input class="form-control" id="email" type="email">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="nation">身份证号码：</label>
			<div class="col-sm-5">
				<input class="form-control" id="idcard" type="text">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">性别：</label>
			<div class="col-sm-5">
				<label class="checkbox-inline"> <input type="radio"
					name="gender" value="0" checked>男
				</label> <label class="checkbox-inline"> <input type="radio"
					name="gender" value="1">女
				</label>
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<!-- 
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="birth">出生年月：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="birth" type="month" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" for="nation">民族：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="nation" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="birthplace">籍贯：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="birthplace" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="sog">毕业中学：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="sog" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="politicsStatus">政治面貌：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="politicsStatus" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="address">家庭住址：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="address" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                     -->
		<div class="form-group">
			<label class="col-sm-2 control-label" for="termbegin">入学时间：</label>
			<div class="col-sm-5">
				<input class="form-control" id="termbegin" type="date"
					name="enterDate">
			</div>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
		<!-- 
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="year">学制：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="year" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
    
                   <div class="form-group">
                      <label class="col-sm-2 control-label" for="qqnumber">QQ：</label>
                      <div class="col-sm-5">
                         <input class="form-control" id="qqnumber" type="text" >
                      </div>
                      <div class="col-sm-3 alert alert-danger"></div>
                   </div>
                     -->
		<div class="form-group">
			<div class="col-sm-5 col-sm-offset-2">
				<button class="btn btn-primary" id="stuSubmit" type="button">提交</button>
			</div>
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary btn-sm"
				data-toggle="modal" data-target="#myModal">批量导入数据（Excel）</button>
			<div class="col-sm-3 alert alert-danger"></div>
		</div>
	</form>


	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div role="document" class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">批量插入信息：(Excel)</h4>
				</div>
				<div class="modal-body">
					<form id="fileform" method="post"
						action="${proPath }/student/insertmore.action"
						enctype="multipart/form-data">
						<div>
							<input type="file" id="fileinput" name="file_path"
								onchange="getFile()" />
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<!-- <button type="button" class="btn btn-primary">Save changes</button> -->
				</div>
			</div>
		</div>
	</div>

	</section> </section> </section>

	<!-- Modal for studentInfo-->
	<div class="modal fade" id="infoModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">填写相关的学生集体信息：</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-md-2 col-sm-2 control-label" for="acamedyId">所属学院：</label>
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
							<label class="col-md-2 col-sm-2 control-label" for="majorId">所属专业：</label>
							<div class="col-sm-5">
								<select class="form-control" id="major" name="majorId" onchange="majorOnChange(this)">
									<option>请选择--</option>
									<c:forEach items="${majorList }" var="major">
										<option value="${major.id }">${major.majorName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 col-sm-2 control-label" for="classId">所属班级：</label>
							<div class="col-sm-5">
								<select class="form-control" id="classes" name="classId">
									<option>请选择--</option>
									<c:forEach items="${classesList }" var="class">
										<option value="${class.id }">${class.className }</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">放弃填写</button>
					<button type="button" class="btn btn-primary" id="submit2" onclick="toClassid()">完成</button>
				</div>
			</div>
		</div>
	</div>

	<script src="<%=basePath%>common/js/jquery-1.11.1.min.js"></script>
	<script src="<%=basePath%>common/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>common/js/index.js"></script>
	<script src="<%=basePath%>common/js/stuReg.js"></script>
	<script src="<%=basePath%>common/js/stuSubmit.js"></script>
	<script type="text/javascript">
		function getFile() {
			$("#fileform").submit();
		}

		function clickInfo() {
			$('#infoModel').modal({
				show : true,
				backdrop : true
			})//手动显示模态框
		}
		
		var success = true;
		function acamedyOnChange(obj) {
			if (success == false) {
				return;
			}
			success = false;
			var url = "&academyId=" + $(obj).val();
			var appendOption = '<option>请选择--</option>';
			var appendOption2 = '<option>请选择--</option>';
			$.ajax({
						type : "POST",
						url : $('#hidden').val() + "/student/add.action",
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
								$("#major").append(appendOption);
							}
							if (data.classesList != null) {
								for (var k = 0; k < data.classesList.length; k++) {
									appendOption2 += '<option value='+data.classesList[k].id+'>'
											+ data.classesList[k].className
											+ '</option>';
								}
								$("#classes").append(appendOption2);
							}
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
			var appendOption3 = '<option>请选择--</option>';
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
								$("#classes").append(appendOption3);
							}
							success2 = true;
						},
						error : function() {
							alert("失败");
							success2 = true;
						}
					});
		}
		
		function toClassid(){
			var v = $('#classes').val();
			if(v == '请选择--'){
				alert('请选择班级信息');
				return;
			}
			$('#classid').val(v);
			$('#classid2').val( $("#classes").find("option:selected").text());
			$("#infoModel").modal('hide');//手动隐藏模态框
		}
	</script>
</body>
</html>
