<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验三</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="./js/menu.js"></script>
	<script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script> 
	<link rel="stylesheet" type="text/css" href="./css/head.css" />
	<link rel="stylesheet" type="text/css" href="./css/shiyan.css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
        <li><a href="LogoutServlet">退出登陆</a>
      </ul>
    </div>
     <div class="container">
        <h1>实验三   Web数据库实验</h1>
        <h2>一、实验目的</h2>
        <ol type="1">
          <li>掌握Servlet的开发、配置。</li>
          <li>掌握Filter的开发与配置。</li>
          <li>熟悉JDBC以及DAO的概念及工作原理。</li>
          <li>能够熟练运用JDBC以及DAO模式对数据库进行访问，实现数据查询、添加、修改等常用操作。</li>
        </ol>
        <h2>二、实验要求</h2>
        <ol type="1">
          <li>实验之前认真查阅相关资料，准备好实验方案。</li>
          <li>完成实验报告和实验成果。</li>
        </ol>
        <h2>三、实验内容</h2>
        <ol type="1">
          <li>登录页面表单提交后转到Servlet进行处理，根据用户类型转到不同的页面。。</li>
          <li>请设计一种过滤器实现权限控制机制。如果用户进入Web应用没有登录时，要求用户必须进行登录页面。</li>
          <li>使用JDBC技术进行数据库的连接与访问。</li>
          <li>采用DAO设计模式开发。使用自己熟悉的网络数据库，设计一个小的系统（可以在之间的页面上实现），要求如下：至少包括2张数据表（字段数不少于4）；实现对2张表格的增、删、改、查操作；具有不同类型用户的登录控制页面；要求每一项操作对应于一张页面。</li>
        </ol>
        <h2>四、评分标准</h2>
        <ol type="1">
          <li>使用JDBC技术进行数据库的连接与访问。（5分）</li>
          <li>使用JSP技术设计完成“实验一”中的设计，并增加服务器端页面验证功能，防止错误数据的录采用DAO设计模式开发。使用自己熟悉的网络数据库，设计一个小的系统（可以在之前的页面上实现），要求如下：至少包括2张数据表（字段数不少于4）；实现对2张表格的增、删、改、查操作；具有不同类型用户的登录控制页面；要求每一项操作对应于一张页面。（15分）</li>
        </ol>
    </div>
  </body>
</html>