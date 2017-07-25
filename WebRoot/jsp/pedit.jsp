<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.users.User,com.dao.*,com.dao.impl.UserDaoImpl,java.sql.SQLException,javax.servlet.http.HttpSession"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="./js/menu.js"></script>
	<script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script> 
	<link rel="stylesheet" type="text/css" href="./css/head.css" />
	<link rel="stylesheet" type="text/css" href="./css/body.css" />
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
        <h1>修改个人信息</h1>
        <%
        String username=(String)session.getAttribute("username");
        UserDao userDao=DaoFactory.getUserDaoInstance();
        User user=new User();
        try {
			user=userDao.findByUsername(username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        %>
        <form action="EditServlet" method="post">
        <table align="center">
          <tr>
             <th>姓名：</th>
             <td><input type="text" name="realname" id="realname" value="<%=user.getRealname()%>"/></td>
          </tr>
          <tr>
             <th>学号：</th>
             <td><input type="text" name="num" id="num" value="<%=user.getNum()%>"/></td>
          </tr>
          <tr>
             <th>班级：</th>
             <td><input type="text" name="uclass" id="uclass" value="<%=user.getUclass()%>"></td>
          </tr>
          <tr><th colspan="2">
             <input type="submit" value="保存"/>
             <input type="reset" value="重置"/>
        </table>                                           
        </form>
  </div>  
  </body>
</html>
