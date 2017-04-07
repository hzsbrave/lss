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
                    <li class="active">
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
               <div class="row">
                   <div class="col-sm-12">
                       <div class="profile clearfix">
                           <div class="col-sm-12">
                               <div class="col-xs-12 col-sm-4 text-center">
                                   <ul class="list-group">
                                       <li class="list-group-item text-left">
                                            <span class="glyphicon glyphicon-user"></span>
                                            ${loginUser_student.studentName }
                                       </li>
                                       <!-- 
                                       <li class="list-group-item">
                                            <div class="img-circle" >
                                                <img src="../images/4.jpg" alt=""/>
                                            </div>
                                       </li>
                                        -->
                                       <li class="list-group-item clearfix text-right">
                                           <span class="pull-left">
                                               <strong>学号</strong>
                                           </span>
                                           <span>${loginUser_student.studentNo }</span>
                                       </li>
                                       <li class="list-group-item clearfix text-right">
                                           <span class="pull-left">
                                               <strong>入学时间</strong>
                                           </span>
                                           <span><fmt:formatDate value="${loginUser_student.enterDate}" pattern="yyyy年MM月dd日" /></span>
                                       </li>
                                   </ul>
                               </div>
                               <div class="col-xs-12 col-sm-8 profile-name">
                                   <h2>个人信息</h2>
                                   <hr />
                                    <form role="form" method="post" action="${proPath }/student/updateStudent.action">
                                     <dl class="dl-horizontal-profile">
                                     	<input type="hidden" name="id" id="id" value="${loginUser_student.id }"/>
                                       <dt>姓名</dt><dd><input type="text" id="studentName" name="studentName" value="${loginUser_student.studentName }"/></dd>
                                       <dt>性别</dt>
                                       <dd>
                                       		<select id="gender" name="gender">
                                       			<option value="0" <c:if test="${loginUser_student.gender==0}">selected="selected"</c:if>>男</option>
                                       			<option value="1" <c:if test="${loginUser_student.gender==1}">selected="selected"</c:if>>女</option>
                                       		</select>
                                       </dd>
                                       <dt>籍贯</dt><dd><input type="text" id="natives" name="natives" value="${loginUser_student.natives }"/></dd>
                                       <dt>民族</dt><dd><input type="text" id="national" name="national" value="${loginUser_student.national }"/></dd>
                                       <dt>出生年月</dt><dd><input type="month" id="birthday" name="birthday" value='<fmt:formatDate value="${loginUser_student.birthday}" pattern="yyyy-MM" />'></dd>
                                       <!-- 
                                       <fmt:formatDate value="${loginUser_student.birthday }" pattern="yyyy-MM" />
                                        -->
                                       <dt>联系方式</dt><dd><input type="text" id="phone" name="phone" value="${loginUser_student.phone }"/></dd>
                                       <dt>QQ</dt><dd><input type="text" id="qq" name="qq" value="${loginUser_student.qq }"/></dd>
                                       <dt>邮箱</dt> <dd><input type="text" id="email" name="email" value="${loginUser_student.email }"/></dd>
                                       <dt>家庭住址</dt><dd><input type="text" id="address" name="address" value="${loginUser_student.address }"/></dd>
                                       <dt>身份证号</dt><dd><input type="text" id="idcard" name="idcard" value="${loginUser_student.idcard }"/></dd>
                                       <dt>家庭联系方式</dt><dd><input type="text" id="familyPhone" name="familyPhone" value="${loginUser_student.familyPhone }"/></dd>
                                       <dt>毕业中学</dt><dd><input type="text" id="middleSchool" name="middleSchool" value="${loginUser_student.middleSchool }"/></dd>
                                       <dt>政治面貌</dt><dd><input type="text" id="political" name="political" value="${loginUser_student.political }"/></dd>
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