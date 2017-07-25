<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="./js/check.js"></script>  
    <script type="text/javascript" src="./js/menu.js"></script>
    <script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script> 
    <link rel="stylesheet" type="text/css" href="./css/head.css" />
    <link rel="stylesheet" type="text/css" href="./css/log_reg.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%-- <jsp:useBean id="user" scope="request" class="com.javaBean.RegForm"></jsp:useBean> --%>
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
      <section id="content">
	   <form action="RegServlet" name="RegForm" method="post">
		   <h1>用户注册</h1>
		   <div>
		     	<input type="text" placeholder="请设置您的用户名"  id="username" name="username" value="${formbean.username}"/>
		     	<h2>${formbean.errors.errname}</h2>
		   </div>
		   <div>
		   		<input type="text" placeholder="请设置您的邮箱"  id="email" name="email" value="${formbean.email}"/>
                <h2>${formbean.errors.erremail}</h2>
		   </div>
		   <div>
		    	<input type="password" placeholder="请设置您的登录密码" id="password1" name="password" value="${formbean.password}"/>
		    	<h2>${formbean.errors.errpsw1}</h2>
		   </div>
		   <div>
		    	<input type="password" placeholder="请确认您的登录密码"  id="password2" name="password1" value="${formbean.password1}"/>
                <h2>${formbean.errors.errpsw2}</h2>
		   </div>
		   <div>
		  		<input type="submit" value="注册" />
		  		<input type="reset"  value="重置" />
		  </div>
	   </form>
	  </section> 
  </div>	   
  </body>
</html>
