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
    
    <title>学生信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="./js/menu.js" ></script>
    <script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script> 

	<!-- <script type="text/javascript" src="./js/jquery-1.2.6.pack.js"></script>  -->
	<script type="text/javascript" src="./js/animate.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/adminhead.css">
    <link rel="stylesheet" type="text/css" href="./css/body.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div id="header">
        <div id="title">Web应用与开发</div>
        <ul id="na">
          <li><a href="./jsp/admin.jsp">首页</a></li>
          <li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)">
          <a href="javascript:void(0)">课程资料</a>
            <ul>
              <li><a href="http://www.w3school.com.cn/html/index.asp" target="_blank">HTML</a></li>
              <li><a href="http://www.w3school.com.cn/css/index.asp" target="_blank">CSS</a></li>
              <li><a href="http://www.w3school.com.cn/js/index.asp" target="_blank">JavaScript</a></li>
            </ul>
          </li>
          <!-- <li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)">
          <a href="">课程实践</a>
            <ul>
              <li><a href="./jsp/sy1.jsp">实验一</a></li>
              <li><a href="./jsp/sy2.jsp">实验二</a></li>
              <li><a href="#">实验三</a></li>
              <li><a href="#">实验四</a></li>
            </ul>  
          </li> -->
          <li><a href="./jsp/sinformation.jsp">学生信息</a></li>
          <!-- <li><a href="javascript:void(0)">个人信息</a></li> -->
          <li><a href="LogoutServlet">退出登陆</a></li>
        </ul>
    </div>
    <div class="container">
        <h1>学生信息</h1>
        <table>
        <tr><th>用户名</th><th>姓名</th><th>学号</th><th>班级</th><th>邮箱</th><th>管理</th></tr>
        <%
		List<User> Users = new ArrayList<User>();
        UserDao userDao=DaoFactory.getUserDaoInstance();
        User user=new User();
        try {
        	Users=userDao.findAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        for(int i=0;i<Users.size();i++)
        {
        	user=Users.get(i);
        %>
          <tr>
            <td><%=user.getUsername()%></td>
            <td><%=user.getRealname()%></td>
            <td><%=user.getNum()%></td>         
            <td><%=user.getUclass()%></td>        
            <td><%=user.getEmail()%></td>        
            <td><a href="DelServlet?username=<%=user.getUsername() %>">删除</a></td>
           </tr>
        <%}%>
        </table>
    </div>
  </body>
</html>
