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

	<title>测试技术列表</title>
	
	<link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/style.css" />
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
			            <li><a href="downloadList.html">测试下载</a></li>
			            <li><a href="about.html">关于我们</a></li>
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
		
		<!--二级导航条begin-->
		<div class="container second-nav">
		<form id="filterForm" action="article/skillArticleShow" method="post">
			<input type="hidden" value="${param.classificationInput}" name="classificationInput" id="classificationInput" />
			<input type="hidden" value="${param.currentPage}" name="currentPage" id="currentPage"/>
		</form>
		<ul class="nav navbar-nav" id="classification">
				<li class="active">
					<a href="javascript:void(0);">全部</a>
				</li>
				<li>
					<a href="javascript:void(0);">前沿技术和理念</a>
				</li>
				<li>
					<a href="javascript:void(0);">用例设计</a>
				</li>
				<li>
					<a href="javascript:void(0);">功能测试</a>
				</li>
				<li>
					<a href="javascript:void(0);">性能测试</a>
				</li>
				<li>
					<a href="javascript:void(0);">单元测试</a>
				</li>
				<li>
					<a href="javascript:void(0);">WEB测试</a>
				</li>
				<li>
					<a href="javascript:void(0);">移动应用测试</a>
				</li>
				<li>
					<a href="javascript:void(0);">其他相关</a>
				</li>
			</ul>
		</div>
		<!--二级导航条end-->
			
		<!--翻页课程列表begin-->
		<div class="container listPage-container" style="margin-top: 0;">
			<div class="tagBar locationBar">
				您的位置：<a href="#">首页</a>
				<span>&gt;</span>
				<a href="#">测试技术</a>
				<span>&gt;</span>
				<a href="#">全部</a>
				<!--<ul  class="tagLeft">
					<li><a href="#">您的位置：首页</a><span class="glyphicon glyphicon-chevron-right"></span></li>
					<li><a href="#">测试技术</a><span class="glyphicon glyphicon-chevron-right"></li>
					<li><a href="#">全部</a></li>
				</ul>-->
			</div>
			<div id="courseBox">
				<c:forEach items="${ toolsArticles }" var="List">
				<div class="course-list skill-list">
					<h1><span>【${ List.classification }】</span>${ List.title }</h1>
					<h2><span>${ List.userId }&nbsp;&nbsp;</span>发表于:<span>${ List.createDate }</span></h2>
					<p class="content-p">
						${ List.content }
					</p>
					<p>关键词：
						<c:forEach var="keyword" items="${ List.keyword }">
							<a>${ keyword }</a>
						</c:forEach>
					</p>
					<div style="clear:both"></div>
				</div>
				</c:forEach>
		<!-- 		<div class="course-list skill-list">
					<h1><span>【功能测试】</span>触发器功能测试及应用</h1>
					<h2>发表于:<span>2017-11-8 10:00</span></h2>
					<p class="content-p">
						计算机是计算工具，更是创新平台，高效有趣地利用计算机需要更简洁实用的编程语言。20年来，Python语言一直以接近自然语言的风格诠释程序设计，成为当今世界最受欢迎的编程语言。请跟随我们用探索和创新的…
					</p>
					<p>关键词：<a>测试技术</a><a>功能测试</a></p>
					<div style="clear:both"></div>
				</div>   -->
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
		<script type="text/javascript">
		    function gotoPage(pageNum) {
		        var myForm = document.createElement("form");
		        myForm.method = "get";
		        myForm.action = "article/skillArticleShow";
		        var myInput = document.createElement("input");
		        myInput.setAttribute("name", "currentPage");
		        myInput.setAttribute("value", pageNum);
		        myForm.appendChild(myInput);
		        document.body.appendChild(myForm);
		        myForm.submit();
		    }
		    
		    $("#classification li").onclick(function(){
			    var classification = this.innerText;
			    classification = classification.substring(0, classification.length-1);
			    $("#classificationInput").val(classification);
			    $("#filterForm").submit();
		 	});
		    function gotoPage(pageNum) {
			    $("#currentPage").val(pageNum);
			    $("#filterForm").submit();
			}
		</script>
		<script type="text/javascript">
	    	$("#_pn").val("${page.currentPage}");
	    </script>  
	</body>
</html>
