package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.script.ScriptContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if(!(username==null||"".equals(username)||password==null||"".equals(password)))
	 	  {
		 	  if("abcde".equals(username)&&"123".equals(password))
		 	  {
		 		  request.getSession().setAttribute("userid",username);
		 		  response.getWriter().print("<script>alert('"+username+":登陆成功!');window.location.href='index.jsp';</script>");
		 	  }
		 	  else {
		 		 response.getWriter().print("<script>alert('登陆失败：用户名或密码错误！');window.location.href='login.jsp';</script>");
		 	  }
		   }
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
