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
                    <li><a href="${proPath }/teacher/teacherEdit.action"><i class="glyphicon glyphicon-log-out"></i>设置</a></li>
                    <li><a href="${proPath }/login/loginOut.action"><i class="glyphicon glyphicon-log-out"></i>退出</a></li>
                  </ul>
                </div>
            </div>
        </header>
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <ul class="sidebar-menu">
                	<li class="active">
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
                                   <dl class="dl-horizontal-profile">
                                     <dt>姓名</dt><dd>${loginUser.teacherName }</dd>
                                     <dt>性别</dt><dd>
                                     <c:if test="${loginUser.gender ==0}">男</c:if>
                                     <c:if test="${loginUser.gender ==1}">女</c:if>
                                     </dd>
                                     <dt>籍贯</dt><dd>${loginUser.natives }</dd>
                                     <dt>民族</dt><dd>${loginUser.national }</dd>
                                     <dt>出生年月</dt><dd><fmt:formatDate value="${loginUser.birthday }" pattern="yyyy年MM月" /></dd>
                                     <dt>联系方式</dt><dd>${loginUser.phone }</dd>
                                     <dt>家庭住址</dt><dd>${loginUser.familyAddress }</dd>
                                     <dt>现住址</dt><dd>${loginUser.nowAddress }</dd>
                                     <dt>身份证号</dt><dd>${loginUser.idcard }</dd>
                                     <dt>政治面貌</dt><dd>${loginUser.political }</dd>
                                     <dt>学历</dt>
                                     <dd>
                                     	<c:if test="${loginUser.xueliId==0 }">本科</c:if>
                                     	<c:if test="${loginUser.xueliId==1 }">硕士</c:if>
                                     	<c:if test="${loginUser.xueliId==2 }">教授</c:if>
                                     	<c:if test="${loginUser.xueliId==3 }">博士</c:if>
                                     </dd>
                                   </dl>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- 
               <div class="row">
                  <div class="col-sm-12">
                    <div class="nest" id="blank">
                      <div class="title-alt">
                        <h6>密码修改</h6>
                        <a href="javascript:;" class="titleClose">
                          <span class="glyphicon glyphicon-remove"></span>
                        </a>
                        <a href="javascript:;" class="titleToggle">
                          <span class="glyphicon glyphicon-chevron-up"></span>
                        </a>
                      </div>
                    </div>
                    <div class="body-nest clearfix">
                      <div class="col-md-3">
                        <div class="text-center">
                          <img src="http://placehold.it/150" alt="" class="img-circle" />
                          <h6>Upload a different photo...</h6>
                          <div class="input-group">
                            <span class="input-group-btn">
                              <span class="btn btn-primary btn-file"> Browse<input type="file" multiple/></span>
                            </span>
                            <input type="text" class="form-control" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-9 personal-info">
                        <div class="alert alert-info alert-dismissable" style="display:block;">
                           <a href="" class="panel-close close" data-dismiss="alert">×</a>
                           <i class="glyphicon glyphicon-apple"></i>
                          This is an .alert. Use this to show important messages to the user.
                        </div>
                        <h3>修改密码</h3>
                        <form action="" method="post" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="oldPwd" class="col-lg-3 control-label">旧密码：</label>
                                <div class="col-lg-8">
                                  <input type="text" class="form-control" placeholder="请输入旧密码..." id="oldPwd" name=""/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="newPwd" class="col-lg-3 control-label">新密码：</label>
                                <div class="col-lg-8">
                                  <input type="text" class="form-control" placeholder="请输入新密码..." id="newPwd" name=""/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="confirmPwd" class="col-lg-3 control-label">确认密码：</label>
                                <div class="col-lg-8">
                                  <input type="text" class="form-control" placeholder="请确认密码..." id="confirmPwd" name=""/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="confirmPwd" class="col-lg-3 control-label"></label>
                                <div class="col-lg-8">
                                   <button type="submit" class="btn btn-primary">提交</button>
                                </div>
                            </div>
                        </form>
                      </div>
                    </div>
                  </div>
               </div>
                -->
            </section>
        </section>
    </section>
   
    <script src="<%=basePath %>common/js/jquery-1.11.1.min.js"></script>
    <script src="<%=basePath %>common/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>common/js/index.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
          $(".titleClose").on("click",function(){
              $(".row").eq(1).hide();
          });
           var $toggle = 0;
          $(".titleToggle").on('click', function(event) {
              if($toggle%2 == 1){
                $(this).children('span').attr("class","glyphicon glyphicon-chevron-up");
              }else if($toggle%2 == 0){
                $(this).children('span').attr("class","glyphicon glyphicon-chevron-down");
              }
              $toggle++;
              if($toggle == 4){
                  $toggle = 0;
              }
              $(".body-nest").stop().slideToggle();
          });

        });
    </script>
  </body>
</html>