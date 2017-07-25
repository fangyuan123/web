<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验二</title>
    
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
        <h1>实验二 动态Web页面设计实验</h1>
        <h2>一、实验目的</h2>
        <ol type="1">
          <li>熟悉JSP的开发工具，掌握服务器端Web程序的工作原理。</li>
          <li>熟悉JSP编译指令，动作标记。</li>
          <li>熟悉JSP的隐含对象，正确理解request、session、application三个对象的作用域。</li>
          <li>掌握编写JavaBean的方法，使用JSP &lt jsp:useBean &gt、&lt jsp:set Property &gt、&lt jsp:getProperty &gt3个动作指令。</li>
          <li>掌握JSP中表单和表单Bean的映射。</li>
        </ol>
        <h2>二、实验要求</h2>
        <ol type="1">
          <li>实验之前认真查阅相关资料，准备好实验方案。</li>
          <li>认真实验，对实验过程、结果进行分析，注意验证实验效果。</li>
          <li>完成实验报告和实验成果。</li>
        </ol>
        <h2>三、实验内容</h2>
        <ol type="1">
          <li>修改实验1中的静态页面，改为JSP页面。</li>
          <li>依据注册页面，设计1个JavaBean并实现服务器端的验证，防止错误数据的录入。</li>
          <li>使用session对象，实现登录、注销功能。</li>
          <li>练习使用客户端跳转、服务器端跳转。</li>
        </ol>
        <h2>四、评分标准</h2>
        <ol type="1">
          <li>使用JSP技术设计Web页面，至少有5个页面，一定要能够体现JSP内置对象不同的作用域。（5分）</li>
          <li>使用JSP技术设计完成“实验一”中的设计，并增加服务器端页面验证功能，防止错误数据的录入。（5分）</li>
          <li>设置session对象，实现登录、注销功能。（5分）</li>
        </ol>
    </div>
  </body>
</html>
