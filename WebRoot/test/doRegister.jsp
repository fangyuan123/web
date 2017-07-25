<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doRegister.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <%--  <jsp:useBean id="user" scope="request" class="com.javaBean.user"></jsp:useBean> --%>
    <jsp:setProperty name="user" property="*"/>
    
  </head>
  
  <body>
   <%--  <%String username=user.getUsername();
    String email=user.getEmail();
    String password1=user.getPassword1();
    String password2=user.getPassword2();

    class regcheck{
    	
		public boolean IsDigit(char cCheck) { 
		   return (('0'<=cCheck) && (cCheck<='9')); 
	
	    }
		
	    public boolean IsAlpha(char cCheck) { 
	    	return ((('a'<=cCheck) && (cCheck<='z')) || (('A'<=cCheck) && (cCheck<='Z'))); 
	    } 
	
	    public boolean IsValid(String str) { 
	        for (int i=0; i<str.length(); i++) { 
	        	char cCheck = str.charAt(i); 
	        	if (!(IsDigit(cCheck) || IsAlpha(cCheck))) { 
	        		return false; 
	        	} 
	        } 
	        return true; 
	    } 
	    
	     public boolean checkemail(String str){
	    	return str.matches(/[\w\-]{1,}@[\w\-]{1,}\.[\w\-]{1,}/)==0?true:false; 
	    }
	 
	    public boolean check(){
	    	if(username.length()==0){
	    		alert("用户名不能为空！");
	    		return false;
	    	}
	    	else if(!IsValid(username)){
	    		alert("用户名只能由字母和数字组成！");
	    		return false;
	    	}
	    	else if(email.length()==0){
	    		alert("请填写邮箱！");
	    		return false;
	    	}
	    	else if(!checkemail(email)){
	    		alert("请输入有效的邮箱地址！");
	    		return false;
	    	}
	    	else if(password1.length()==0){
	    		alert("请填写登陆密码！");
	    		return false;
	    	}
	    	else if(password1.length()<6||password1.length()>10){
	    		alert("密码长度只能为6-10个字符!");
	    		return false;
	    	}
	    	else if(!IsValid(password1)){
	    		alert("密码只能由字母和数字组成！");
	    		return false;
	    	}
	    	else if(password2.length()==0){
	    		alert("请确认密码！");
	    		return false;
	    	}
	    	else if(!password1.equals(password2)){
	    		alert ("两次密码不一致！");	
	    		return false;
	    	}
	    	else{
	    		alert ("注册成功，请登录！");	
	    		return true;
	    	}
	    }
	    
    
    }
    
    regcheck a=new regcheck();
    a.check();
    
    
  
    %> --%>
  </body>
</html>
