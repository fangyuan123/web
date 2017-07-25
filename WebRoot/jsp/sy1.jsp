<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验一</title>
    
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
        <li><a href="./jsp/tinformation.jsp"">教师信息</a></li>
        <li><a href="./jsp/pinformation.jsp">个人信息</a></li>
        <li><a href="LogoutServlet">退出登陆</a>
      </ul>
    </div>
    <div class="container">
        <h1>实验一 HTML 5+CSS+JavaScript</h1>
        <h2>一、实验目的</h2>
        <ol type="1">
          <li>熟悉常用HTML 5标记的含义，能够熟练使用这些标记设计静态Web页面，实现Web页面上的各种元素的合理布局，如表单、表格、图片以及框架等标记的使用。</li>
          <li>了解 CSS3样式表的定义和使用方法，能够使用CSS3美化和布局Web页面。</li>
          <li>掌握JavaScript脚本语言的基本语法。</li>
          <li>能够使用JavaScript 与浏览器对象进行交互。</li>
          <li>能够使用JavaScript处理表单和表单元素事件。</li>
        </ol>
        <h2>二、实验要求</h2>
        <ol type="1">
          <li>使用HTML 5开发Web静态页面,按照HTML 5的规范设计与开发网站。</li>
          <li>练习HTML 5的新特性和效果。</li>
          <li>练习使用Web页面开发工具（MyEclipse、Dreamwear、VS.NET或其它）。</li>
          <li>完成实验报告和实验成果。</li>
        </ol>
        <h2>三、实验内容</h2>
        <ol type="1">
          <li>能够独立安装Web服务器,TOMCAT，理解Web服务器的常用配置，并利用其搭建网站，设计一组静态的网页，至少5个页面，其中包括1个注册页面。</li>
          <li>利用CSS技术布局并美化页面。</li>
          <li>使用JavaScript脚本对注册页面进行验证，防止错误数据输入。</li>
          <li>使用JavaScript库（不限）完成一些特效。</li>
        </ol>
        <h2>四、评分标准</h2>
        <ol type="1">
          <li>按照HTML 5 标准设计一组静态的网页，至少5个页面，其中包括1个注册页面。（3分）</li>
          <li>CSS技术布局并美化页面。（5分）</li>
          <li>使用JavaScript脚本对注册页面进行验证，防止错误数据输入。（5分）</li>
          <li>使用一些JavaScript脚本实现网面部分内容的动态显示。（2分）</li>
          <li>使用JQuery完成一些特效（适当加分）。</li>
        </ol>
    </div>
  </body>
</html>
