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
    <title>岭南师范学院教务管理系统</title>
    <link href="<%=basePath %>common/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath %>common/css/bootstrap-table.min.css" rel="stylesheet">
    <link href="<%=basePath %>common/css/conn.css" rel="stylesheet">
    <link href="<%=basePath %>common/css/profile.css" rel="stylesheet">
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
                	<li  class="active">
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
               <div class="row">
                   <div class="col-sm-12">
                       <div class="profile clearfix">
                           <div class="col-sm-12">
                               <div class="col-xs-12 col-sm-4 text-center">
                                   <ul class="list-group">
                                       <li class="list-group-item text-left">
                                            <span class="glyphicon glyphicon-user"></span>
                                            ${loginUser.teacherName }
                                       </li>
                                       <!-- 
                                       <li class="list-group-item">
                                            <div class="img-circle" >
                                                <img src="../images/2.jpg" alt=""/>
                                            </div>
                                       </li>
                                        -->
                                       <li class="list-group-item clearfix text-right">
                                           <span class="pull-left">
                                               <strong>职工号</strong>
                                           </span>
                                           <span>${loginUser.teacheNo }</span>
                                       </li>
                                       <li class="list-group-item clearfix text-right">
                                           <span class="pull-left">
                                               <strong>入职时间</strong>
                                           </span>
                                           <span><fmt:formatDate value="${loginUser.enterDate}" pattern="yyyy年MM月dd日" /></span>
                                       </li>
                                      
                                   </ul>
                               </div>
                               <div class="col-xs-12 col-sm-8 profile-name">
                                   <h2>个人信息</h2>
                                   <hr />
                                   <form role="form" method="post" action="${proPath }/teacher/updateTeacher.action">
                                   <dl class="dl-horizontal-profile">
                                   <input type="hidden" name="id" id="id" value="${loginUser.id }"/>
                                     <dt>姓名</dt><dd><input type="text" id="teacherName" name="teacherName" value="${loginUser.teacherName }"/></dd>
                                     <dt>性别</dt>
                                       <dd>
                                       		<select id="gender" name="gender">
                                       			<option value="0" <c:if test="${loginUser.gender==0}">selected="selected"</c:if>>男</option>
                                       			<option value="1" <c:if test="${loginUser.gender==1}">selected="selected"</c:if>>女</option>
                                       		</select>
                                       </dd>
                                     <dt>籍贯</dt><dd><input type="text" id="natives" name="natives" value="${loginUser.natives }"/></dd>
                                     <dt>民族</dt><dd><input type="text" id="national" name="national" value="${loginUser.national }"/></dd>
                                     <dt>出生年月</dt><dd><input type="month" id="birthday" name="birthday" value='<fmt:formatDate value="${loginUser.birthday}" pattern="yyyy-MM" />'></dd>
                                     <dt>联系方式</dt><dd><input type="text" id="phone" name="phone" value="${loginUser.phone }"/></dd>
                                     <dt>家庭住址</dt><dd><input type="text" id="familyAddress" name="familyAddress" value="${loginUser.familyAddress }"/></dd>
                                     <dt>现住址</dt><dd><input type="text" id="nowAddress" name="nowAddress" value="${loginUser.nowAddress }"/></dd>
                                     <dt>身份证号</dt><dd><input type="text" id="idcard" name="idcard" value="${loginUser.idcard }"/></dd>
                                     <dt>政治面貌</dt><dd><input type="text" id="political" name="political" value="${loginUser.political }"/></dd>
                                     <dt>学历</dt>
                                     <dd>
                                     	<select id="xueliId" name="xueliId">
                                    		<option value="0" <c:if test="${loginUser.xueliId==0}">selected="selected"</c:if>>本科</option>
                                     		<option value="1" <c:if test="${loginUser.xueliId==1}">selected="selected"</c:if>>硕士</option>
                                     		<option value="2" <c:if test="${loginUser.xueliId==1}">selected="selected"</c:if>>教授</option>
                                     		<option value="3" <c:if test="${loginUser.xueliId==1}">selected="selected"</c:if>>博士</option>
                                     	</select>
                                     </dd>
                                     <dt></dt><dd><button class="btn btn-info" type="submit">提交</button></dd>
                                   </dl>
                                   </form>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
              
            </section>
        </section>
    </section>
   
    <script src="<%=basePath %>common/js/jquery-1.11.1.min.js"></script>
    <script src="<%=basePath %>common/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>common/js/index.js"></script>
  </body>
</html>