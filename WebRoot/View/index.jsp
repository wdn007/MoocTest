<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>基于慕课的软件测试课程学习平台</title>
	
	<link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/style.css" />
	<link rel="stylesheet" href="./css/img-cir-play.css" />
	//触发登录模态框
	<script>
		$('#identifier').modal(options);
	</script>
</head>
	<body>
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
			        <a class="navbar-brand" href="${pageContext.request.contextPath}/Show/indexShow.do">软件测试慕课平台</a>
			    </div>
			    <div class="nav-right">
			    	<c:if test="${ id == null }">
			    	<!-- 按钮触发模态框 -->
					<a href="javascript:void(0)" data-toggle="modal" data-target="#myModal">登录</a>
					<a href="View/register.jsp">注册</a>
					</c:if>
					<c:if test="${ id != null }">
					<a class="personalCenter" href="#" class="dropdown-toggle" data-toggle="dropdown">
						${ id }<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">个人中心</a>
						</li>
						<li>
							<a href="Student/logout">退出</a>
						</li>
					</ul>
					</c:if>
				</div>
			    <div class="collapse navbar-collapse" id="example-navbar-collapse">
			        <ul class="nav navbar-nav mynav">
			            <li class="active"><a href="${pageContext.request.contextPath}/Show/indexShow.do">慕课课程</a></li>
			            <li><a href="${pageContext.request.contextPath}/article/skillArticleShow">测试技术</a></li>
			            <li><a href="${pageContext.request.contextPath}/article/toolArticleShow">测试工具</a></li>
			            <li><a href="${pageContext.request.contextPath}/download/downloadShow">测试下载</a></li>
			            <li><a href="${pageContext.request.contextPath}/View/about.jsp">关于我们</a></li>
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
						<form class="bs-example bs-example-form" role="form" action="Student/login" id="login-form" method="post" name="login-form">
					        <div class="input-group">
					            <span class="input-group-addon glyphicon glyphicon-user"></span>
					            <input type="text" name="id" class="form-control" placeholder="请输入用户名...">
					        </div>
					        <div class="input-group">
					            <span class="input-group-addon glyphicon glyphicon-lock"></span>
					            <input type="text" name="password" class="form-control" placeholder="请输入密码...">
					        </div>
					        <div class="identity">
					            <label><input type="radio" name="identity" value="1" />学生</label>
					            <label><input type="radio" name="identity" value="2" />教师</label>(请选择登录身份)
					        </div>
					</div>
					<div class="modal-footer">
						<input type="submit" value="登录" class="btn btn-primary login-btn"/> 
						<div class="modal-footer-left">
							<a href="">忘记密码？</a>
						</div>
						<div class="modal-footer-right">
							<a href="">去注册</a>
						</div>
					</div>
				</form>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!--登录模态框 end-->
		
		<!--翻页课程列表begin-->
		<div class="container listPage-container">
			<div id="container">
			    <div id="list" style="left: -600px;">
			        <img src="./img/5.jpg" alt="1"/>
			        <img src="./img/1.jpg" alt="1"/>
			        <img src="./img/2.jpg" alt="2"/>
			        <img src="./img/3.jpg" alt="3"/>
			        <img src="./img/4.jpg" alt="4"/>
			        <img src="./img/5.jpg" alt="5"/>
			        <img src="./img/1.jpg" alt="5"/>
			    </div>
			    <div id="buttons">
			        <span index="1" class="on"></span>
			        <span index="2"></span>
			        <span index="3"></span>
			        <span index="4"></span>
			        <span index="5"></span>
			    </div>
			    <a href="javascript:;" id="prev" class="arrow">&lt;</a>
			    <a href="javascript:;" id="next" class="arrow">&gt;</a>
			</div>
			
			<div class="tagBar">
				<ul  class="tagLeft">
					<li><a href="#">全部<span>(100)</span></a></li>
					<li><a href="#">正在进行</a></li>
					<li><a href="#">即将开始</a></li>
					<li><a href="#">已结束</a></li>
				</ul>
			</div>
			<div id="courseBox">
				<c:forEach items="${ CourseInfoList }" var="courseList">
				<div class="course-list">
					<div class="courseImg col-xs-12"><a href="courseDetail.html"><img src="./img/sofewareTest.jpg"  /></a></div>
					<div class="textRight col-xs-12">
						<div class="courseName">
							<a href="courseDetail.html">${ courseList.name }</a>
						</div>
						<div class="courseDetail1">
							<a>桂林电子科技大学</a>
							<a>${ courseList.name }</a>
						</div>
						<div class="courseDetail2">
							<a href="courseDetail.html">
								${ courseList.content }
								<!--<p>${ courseList.content }</p>-->
							</a>
						</div>
						<div class="courseState">
							<p><span class="glyphicon glyphicon-user"></span><span>100</span>人参加</p>
							<p class="greenText"><span class="glyphicon glyphicon-time"></span>开课时间：${ courseList.beginTime }到${ courseList.endTime }</p>
						</div>
						<div class="courseBtn">
							<input type="button" value="收藏" />
						</div>
					</div>
					<div style="clear:both"></div>
				</div>
				</c:forEach>
<!--  			<div class="course-list">
					<div class="courseImg col-xs-12"><a href="courseDetail.html"><img src="./img/sofewareTest.jpg"  /></a></div>
					<div class="textRight col-xs-12">
						<div class="courseName">
							<a href="courseDetail.html">软件测试</a>
						</div>
						<div class="courseDetail1">
							<a>桂林电子科技大学</a>
							<a>张三</a>
						</div>
						<div class="courseDetail2">
							<a href="courseDetail.html">
								<p>软件工程是研究或应用工程化方法创造、构建和维护高质量软件的学科。本课程以软件工程概念、问题、思维、理论与技术为主线，
									深入浅出地介绍了软件工程学科与知识体系、计算思维
								</p>
							</a>
						</div>
						<div class="courseState">
							<p><span class="glyphicon glyphicon-user"></span><span>100</span>人参加</p>
							<p class="greenText"><span class="glyphicon glyphicon-time"></span>开课时间：2017-10-1到2018-1-1</p>
						</div>
						<div class="courseBtn">
							<input type="button" value="收藏" />
							<input type="button" value="开始学习" />
						</div>
					</div>
					<div style="clear:both"></div>
				</div>	-->	
			</div>
			<div class="coursePager">
				<ul>
					<c:choose>
                         <c:when test="${recordCount != 0}">
                         	<li>共查询到${recordCount}条记录</li>
                         </c:when>
                         <c:otherwise>
                         	<li>未查询到记录</li>
                         </c:otherwise>
                   </c:choose>
                   	<li>当前页<span>${currentPage}</span>/<span>${pageCount}</li>
					
					<c:choose>
                         <c:when test="${currentPage != 1}">
                         	<li><a href="javascript:void(0)"  onclick="gotoPage(1)">首页</a></li>
                         	<li><a href="javascript:void(0)"  onclick="gotoPage(${currentPage-1})">上页</a></li>
                         </c:when>
                         <c:otherwise>
                         	<li>首页</li>
                         	<li>上页</li>
                         </c:otherwise>
                    </c:choose>
                    <c:choose>
                         <c:when test="${currentPage != pageCount}">
                         	<li><a href="javascript:void(0)"  onclick="gotoPage(${currentPage+1})">下页</a></li>
                         	<li><a href="javascript:void(0)"  onclick="gotoPage(${pageCount})">末页</a></li>
                         </c:when>
                         <c:otherwise>
                         	<li>下页</li>
                         	<li>末页</li>
                         </c:otherwise>
                    </c:choose>
				</ul>
			</div>
		</div>
		<!--翻页课程列表end-->
		<!--footer begin-->
		<footer class="footer">
			<p>Copyright © 2017- GUET All Rights Reserved.</p>
		</footer>
		<!--footer end-->
		<script type="text/javascript" src="./js/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="./js/img-cir-play.js" ></script>
		<script type="text/javascript">
		    function gotoPage(pageNum) {
		        var myForm = document.createElement("form");
		        myForm.method = "get";
		        myForm.action = "Show/indexShow.do";
		        var myInput = document.createElement("input");
		        myInput.setAttribute("name", "currentPage");
		        myInput.setAttribute("value", pageNum);
		        myForm.appendChild(myInput);
		        document.body.appendChild(myForm);
		        myForm.submit();
		    }
		</script>
		<script type="text/javascript">
		    $("#_pn").val("${page.currentPage}");
		</script>
	</body>
</html>
