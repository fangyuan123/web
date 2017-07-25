<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登陆</title>
    <!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="./js/menu.js"></script>
	<script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script> 
	<link rel="stylesheet" type="text/css" href="./css/head.css" />
	<link rel="stylesheet" type="text/css" href="./css/log_reg.css" />
	
	
	

  </head>
  
  <body>
    <div id="header">
        <div id="title">Web应用与开发</div>
        <ul id="na">
          <li><a href="./jsp/index.jsp">首页</a></li>
          <li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)">
          <a href="javascript:void(0)">课程资料</a>
            <ul>
              <li><a href="http://www.w3school.com.cn/html/index.asp" target="_blank">HTML</a></li>
              <li><a href="http://www.w3school.com.cn/css/index.asp" target="_blank">CSS</a></li>
              <li><a href="http://www.w3school.com.cn/js/index.asp" target="_blank">JavaScript</a></li>
            </ul>
          </li>
          <li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)">
          <a href="javascript:void(0)">课程实践</a>
            <ul>
              <li><a href="./jsp/sy1.jsp">实验一</a></li>
              <li><a href="./jsp/sy2.jsp">实验二</a></li>
              <li><a href="./jsp/sy3.jsp">实验三</a></li>
              <li><a href="./jsp/sy4.jsp">实验四</a></li>
            </ul>  
          </li>
          <li><a href="./jsp/tinformation.jsp">教师信息</a></li>
          <li><a href="./jsp/pinformation.jsp">个人信息</a></li>
          <li><a href="LogoutServlet">退出登陆</a></li>
        </ul>
      </div>
<div class="container">
	  <div id="content">
		<form action="LoginServlet" method="post">
			<h1>用户登录</h1>
			<div>
				<input type="text" placeholder="用户名或邮箱" required id="username" name="username"/>
			</div>
			<div>
				<input type="password" placeholder="密码" required id="password" name="password"/>
			</div>
			<div>
				学生<input type="radio" name="user" value="student" checked/>
				教师<input type="radio" name="user" value="teacher"/>
			</div>
			<div>
				<input type="submit" value="登录" />
				<a href="#">忘记密码？</a>
				<a href="./register.jsp">注册</a>
			</div>
		</form><!-- form -->
	</div><!-- content -->
</div><!-- container -->
  </body>
</html>