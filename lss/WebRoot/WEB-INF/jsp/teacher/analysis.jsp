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
                    	<a href="${proPath }/teacher/teacherInfor.action">
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
                        	<li><a href="${proPath }/teacher/studentInfor.action"><i></i><span>学生信息</span></a></li>
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
                    <li  class="active">
                        <a href="${proPath }/teacher/analysis.action?teacher_id=${loginUser_teacher.id}">
                            <i class="glyphicon glyphicon-pencil"></i>
                            <span>教学质量评价</span>
                        </a>
                    </li>
		</ul>
	</div>
	</aside> 
		<section id="main-content">
			<div id="div1" style="width: 230px; height: 170px;float:left;margin-left:250px;margin-top:90px;background-color:#CC3333">
				<center><h2 style="margin-top:39px;color:white;">非常满意</h2></center>
				<center><h4 style="color:white;">学生人数：${level1}</h4></center>
			</div>
			<div id="div2" style="width: 200px; height: 130px;float:left;margin-left:15px;margin-top:90px;background-color:#2F4554">
				<center><h3 style="margin-top:31px;color:white;">满意</h3></center>
				<center><h5 style="color:white;">学生人数：${level2}</h5></center>
			</div>
			<div id="div3" style="width: 200px; height: 130px;float:left;margin-left:10px;margin-top:90px;background-color:#61A0A8">
				<center><h3 style="margin-top:31px;color:white;">一般</h3></center>
				<center><h5 style="color:white;">学生人数：${level3}</h5></center>
			</div>
			<div id="div4" style="width: 200px; height: 130px;float:left;margin-left:10px;margin-top:90px;background-color:#D48265">
				<center><h3 style="margin-top:31px;color:white;">及格</h3></center>
				<center><h5 style="color:white;">学生人数：${level4}</h5></center>
			</div>
			<div id="div5" style="width: 200px; height: 130px;float:left;margin-left:10px;margin-top:90px;background-color:#91C7AE">
				<center><h3 style="margin-top:31px;color:white;">不满意</h3></center>
				<center><h5 style="color:white;">学生人数：${level5}</h5></center>
			</div>
			<div id="div6" style="float:left;margin-top:300px;margin-left:-50px;">
				<Button id="detail" type="button" class="btn btn-primary" onclick="intoDetail()">点击查看详情</Button>
			</div>
			<div id="main" style="width: 550px; height: 350px;float:right;margin-right:70px;margin-top:90px "></div>
		</section> 
		<input id="hidden1" value="${level1}" hidden/>
		<input id="hidden2" value="${level2}" hidden/>
		<input id="hidden3" value="${level3}" hidden/>
		<input id="hidden4" value="${level4}" hidden/>
		<input id="hidden5" value="${level5}" hidden/>
		<input id="hidden6" value="${lssPath}" hidden/>
		<input id="teacherId" value="${loginUser_teacher.id}" hidden/>
	</section>
	
	<script src="<%=basePath%>common/js/jquery-1.11.1.min.js"></script>
	<script src="<%=basePath%>common/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table-editable.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-editable.js"></script>
	<script src="<%=basePath%>common/js/bootstrap-table-export.js"></script>
	<script src="<%=basePath%>common/js/tableExport.js"></script>
	<script src="<%=basePath%>common/js/index.js"></script>
	<script src="<%=basePath%>common/js/echarts.common.min.js"></script>
	<script>
		$(function() {
			var data =  [ {
				value : $('#hidden1').val(),
				name : '非常满意'
			}, {
				value : $('#hidden2').val(),
				name : '满意'
			}, {
				value : $('#hidden3').val(),
				name : '一般'
			}, {
				value : $('#hidden4').val(),
				name : '合格'
			}, {
				value : $('#hidden5').val(),
				name : '不满意'
			} ];
			
			// 基于准备好的dom，初始化echarts实例
			var myChart = echarts.init(document.getElementById('main'));

			// 指定图表的配置项和数据
			var option = {
				tooltip : {
					trigger : 'item',
					formatter : "{a} <br/>{b}: {c} ({d}%)"
				},
				legend : {
					orient : 'vertical',
					x : 'left',
					data : [ '非常满意', '满意', '一般', '合格', '不满意' ]
				},
				series : [ {
					name : '评价',
					type : 'pie',
					radius : [ '50%', '70%' ],
					avoidLabelOverlap : false,
					label : {
						normal : {
							show : false,
							position : 'center'
						},
						emphasis : {
							show : true,
							textStyle : {
								fontSize : '30',
								fontWeight : 'bold'
							}
						}
					},
					labelLine : {
						normal : {
							show : false
						}
					},
					data : data
				} ]
			};

			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		});
		
		function intoDetail(){
			location.href = $('#hidden6').val()+"/teacher/analysisDetail.action?teacher_id="+$('#teacherId').val();
		}
	</script>
</body>
</html>