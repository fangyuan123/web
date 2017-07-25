<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验四</title>
    
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
        <h1>实验四 网站设计及实现实验</h1>
        <h2>一、实验目的</h2>
        <ol type="1">
          <li>深入了解B/S模式的基本原理，能够合理划分浏览器端和服务器端功能的功能。</li>
          <li>能够运用软件工程的方法，分析设计Web应用程序结构。</li>
          <li>能够运用JSP技术与MVC设计模式，依据特定的应用背景，实现步骤2中设计的Web应用程序。</li>
          <li>步骤3中实现的Web应用程序能够正常部署及发布。</li>
        </ol>
        <h2>二、实验要求</h2>
        <ol type="1">
          <li>实验之前认真查阅相关资料，准备好实验方案。</li>
          <li>认真实验，对实验过程、结果进行分析，注意验证实验效果。</li>
          <li>采用“一人一组”的方式，结合具体的开发项目进行设计，完成实验报告和实验成果。</li>
          <li>需要提交文档包括：需求分析、总体设计、详细设计、编码。</li>
        </ol>
        <h2>三、实验内容</h2>
        <ol type="1">
          <li>使用软件工程方法，依据特定背景设计基于B/S模式的Web程序。</li>
          <li>依据一定的应用，采用基于Java的Web开发、 .Net，PHP,开发Web程序，功能较为完善。</li>
        </ol>
        <h2>四、评分标准</h2>
        <ol type="1">
          <li>使用软件工程方法，采用基于Java的Web开发技术，依据特定背景设计基于B/S模式的Web程序，功能较为完善。（35分）</li>
          <li>设计开发文档包括：需求分析、总体设计、详细设计、编码。（15分）</li>
        </ol>
    </div>
  </body>
</html>