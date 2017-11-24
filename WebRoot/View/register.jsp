<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>用户注册</title>
	
	<link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/style.css" />

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
			        <a class="navbar-brand" href="index.html">软件测试慕课平台</a>
			    </div>
			    <div class="nav-right">
			    	<!-- 按钮触发模态框 -->
					<a href="javascript:void(0)" data-toggle="modal" data-target="#myModal">登录</a>
					<a href="View/register.jsp">注册</a>
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
						<form role="form" action="Student/login" id="login-form" method="post" name="login-form">
					        <div class="input-group">
					            <span class="input-group-addon glyphicon glyphicon-user"></span>
					            <input type="text" name="id" class="form-control" placeholder="请输入用户名...">
					        </div>
					        <div class="input-group">
					            <span class="input-group-addon glyphicon glyphicon-lock"></span>
					            <input type="password" name="password" class="form-control" placeholder="请输入密码...">
					        </div>
					        <div class="identity">
					            <label><input type="radio" name="identity" value="1" />学生</label>
					            <label><input type="radio" name="identity" value="2" />教师</label>(请选择登录身份)
					        </div>
					    </form>
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
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!--登录模态框 end-->
	
		<!--注册begin-->
		<div class="container listPage-container register-container">
			<div class="titleLeft discuss-notice register-notice">
				<p>欢迎大家注册慕课测试平台，请认真填写以下信息，其中带<span>*</span>的为必填项，其他为选填项！</p>
			</div>
			<div id="register-tag">
				<ul>
					<!--<li class="select">
						<a href="javascript:void(0)" class="select">学生用户注册</a>
					</li>
					<li>
						<a href="javascript:void(0)">教师用户注册</a>
					</li>-->
					<li class="select">学生用户注册</li>
					<li>教师用户注册</li>
				</ul>
			</div>
			<div id="courseBox">
				<div id="register-content">
					<div class="mod article-box public-article-box" style="display:block">
						<form action="Student/register" id="stu-register-form" method="post" name="stu-register-form">
							<table>
								<tr>
									<td class="text-right">
										<span>*</span>用户名：
									</td>
									<td>
										<input type="text" name="id" placeholder="请输入用户名" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">
										<span>*</span>密码：
									</td>
									<td>
										<input type="password" name="password" placeholder="请输入密码" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">
										<span>*</span>确认密码：
									</td>
									<td>
										<input type="password" name="check-password" placeholder="请再次输入密码" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">
										<span>*</span>身份证号：
									</td>
									<td>
										<input type="text" name="personalID" placeholder="请输入身份证号" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">姓名：</td>
									<td>
										<input type="text" name="username" placeholder="请输入姓名" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">性别：</td>
									<td>
										<select class="form-control" name="sex">
											<option value="">请选择性别</option>
											<option value="0">男</option>
											<option value="1">女</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="text-right">出生日期：</td>
									<td>
										<input type="text" name="birthDate" id="J-xl" placeholder="请输入出生日期" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">学号：</td>
									<td>
										<input type="text" name="studentID" placeholder="请输入学号" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">入学年份：</td>
									<td>
										<input type="text" name="attendaceDate" id="J-x2" placeholder="请输入入学年份" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">专业名称：</td>
									<td>
										<input type="text" name="majorName" placeholder="请输入专业名称" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">电话：</td>
									<td>
										<input type="text" name="telNumber" placeholder="请输入电话" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">邮箱：</td>
									<td>
										<input type="text" name="email" placeholder="请输入邮箱" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">QQ号：</td>
									<td>
										<input type="text" name="qq" placeholder="请输入QQ号" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">微信号：</td>
									<td>
										<input type="text" name="wechat" placeholder="请输入微信号" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">通讯地址：</td>
									<td>
										<input type="text" name="address" placeholder="请输入通讯地址" class="form-control" />
									</td>
								</tr>
								<tr>
									<td>
									</td>
									<td class="text-right public-btn">
										<input type="submit" value="注册学生用户" class="btn btn-default" />
									</td>
								</tr>
							</table>
						</form>
					</div>
					<div class="mod article-box public-article-box" style="display:none">
						<form action="Teacher/register" id="tec-register-form" method="post" name="tec-register-form">
							<table>
								<tr>
									<td class="text-right">
										<span>*</span>用户名：
									</td>
									<td>
										<input type="text" name="id" placeholder="请输入用户名" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">
										<span>*</span>密码：
									</td>
									<td>
										<input type="text" name="password" placeholder="请输入密码" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">
										<span>*</span>确认密码：
									</td>
									<td>
										<input type="text" name="check-password" placeholder="请再次输入密码" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">
										<span>*</span>身份证号：
									</td>
									<td>
										<input type="text" name="personalID" placeholder="请输入身份证号" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">姓名：</td>
									<td>
										<input type="text" name="username" placeholder="请输入姓名" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">性别：</td>
									<td>
										<select class="form-control" name="sex">
											<option value="">请选择性别</option>
											<option value="0">男</option>
											<option value="1">女</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="text-right">出生日期：</td>
									<td>
										<input type="text" name="birthDate" id="J-x3" placeholder="请输入出生日期" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">单位：</td>
									<td>
										<input type="text" name="organization" placeholder="请输入单位" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">职称：</td>
									<td>
										<input type="text" name="professionalTitle" placeholder="请输入职称" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">电话：</td>
									<td>
										<input type="text" name="telNumber" placeholder="请输入电话" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">邮箱：</td>
									<td>
										<input type="text" name="email" placeholder="请输入邮箱" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">QQ号：</td>
									<td>
										<input type="text" name="qq" placeholder="请输入QQ号" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">微信号：</td>
									<td>
										<input type="text" name="wechat" placeholder="请输入微信号" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">通讯地址：</td>
									<td>
										<input type="text" name="address" placeholder="请输入通讯地址" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">研究方向：</td>
									<td>
										<input type="text" name="researchDirction" placeholder="请输入研究方向（用；分号分隔）" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">授课领域：</td>
									<td>
										<input type="text" name="teachingField" placeholder="请输入授课领域（用；分号分隔）" class="form-control" />
									</td>
								</tr>
								<tr>
									<td class="text-right">个人成就：</td>
									<td>
										<input type="text" name="personalAchivement" placeholder="请输入个人成就" class="form-control" />
									</td>
								</tr>
								<tr>
									<td>
									</td>
									<td class="text-right public-btn">
										<input type="submit" value="注册教师用户" class="btn btn-default" />
									</td>
								</tr>
							</table>
						</form>		
					</div>
				</div>
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
		<script type="text/javascript" src="./js/registerTab.js" ></script>
		<script type="text/javascript" src="./js/calendar/laydate.js" ></script>
		<script type="text/javascript">
			laydate({
				elem: '#J-x1'	
			});
			
			laydate({
				elem: '#J-x2'
			});
			
			laydate({
				elem: '#J-x3'
			});
		</script>
	</body>
</html>
