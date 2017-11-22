<%@ page import="cn.guet.mooc.entity.CourseEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    CourseEntity course = (CourseEntity)request.getAttribute("course");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>课程详情页</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    //触发登录模态框
    <script>
        $('#identifier').modal(options);
    </script>
</head>
<body style="background: #eee;">
<!--导航条begin-->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">软件测试慕课平台</a>
        </div>
        <div class="nav-right">
            <!-- 按钮触发模态框 -->
            <a href="javascript:void(0)" data-toggle="modal" data-target="#myModal">登录</a>
            <a href="register.html">注册</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav mynav">
                <li class="active"><a href="index.html">慕课课程</a></li>
                <li><a href="skillList.html">测试技术</a></li>
                <li><a href="toolsList.html">测试工具</a></li>
                <li><a href="downloadList.html">测试下载</a></li>
                <li><a href="about.html">关于我们</a></li>
                <!--<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        关于我们 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">jmeter</a></li>
                        <li><a href="#">EJB</a></li>
                        <li><a href="#">Jasper Report</a></li>
                    </ul>
                </li>-->
                <li>
                    <form class="navbar-form navbar-left row" role="search">
                        <div class="form-group col-xs-10">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default col-xs-2">
                            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                        </button>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!--导航条end-->

<!--登录模态框 begin-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">用户登录</h4>
            </div>
            <div class="modal-body">
                <form class="bs-example bs-example-form" role="form">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-user"></span>
                        <input type="text" class="form-control" placeholder="请输入用户名...">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-lock"></span>
                        <input type="text" class="form-control" placeholder="请输入密码...">
                    </div>
                    <div class="identity">
                        <label><input type="radio" name="identity" value="1" />学生</label>
                        <label><input type="radio" name="identity" value="2" />教师</label>(请选择登录身份)
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary login-btn">登录</button>
                <div class="modal-footer-left">
                    <a href="">忘记密码？</a>
                </div>
                <div class="modal-footer-right">
                    <a href="register.html">去注册</a>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal -->
</div>
<!--登录模态框 end-->
<!--课程学习begin-->
<div class="container courseDetail-container">
    <div class="courseDetail-top">
        <div class="top-left">
            <h1><%=course.getName() %></h1>
            <p>软件工程是研究或应用工程化方法创造、构建和维护高质量软件的学科。本课程以软件工程概念、问题、思维、理论与技术为主线，深入浅出地介绍了软件工程学科与知识体系、计算思维
            </p>
        </div>
        <div class="top-right">
            <img src="${pageContext.request.contextPath}<%=course.getPicturePath() %>"/>
        </div>
    </div>
    <div class="courseDetail-content">
        <div class="courseDetail-left">
            <h1>课程简介</h1>
            <p><%=course.getContent() %></p>
        </div>
        <div class="courseDetail-right">
            <div class="courseInfo">
                <h1>课程信息</h1>
                <p><span>开课</span>2017-10-1</p>
                <p><span>结课</span>2018-1-1</p>
                <a href="courseStudy.html" >开始学习</a>
            </div>
            <div class="teacherInfo">
                <h1>教师信息</h1>
                <p><span>姓名</span>张三</p>
                <p><span>学校</span>桂林电子科技大学</p>
            </div>
        </div>
    </div>
</div>
<!--课程学习end-->

<!--footer begin-->
<footer class="footer">
    <p>Copyright © 2017- GUET All Rights Reserved.</p>
</footer>
<!--footer end-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
</body>
</html>
