package com.servlet;


import com.dao.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


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
	    PrintWriter out = response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String user=request.getParameter("user");
		boolean flage = false;
		if(user.equals("student"))
		{
			UserDao userDao=DaoFactory.getUserDaoInstance();
		    //用户登录
			try {
				flage = userDao.findByUsernameAndPassword(username, password);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	        if(flage==false){
	        	out.print("<script>alert('登陆失败：用户名或密码错误！');window.location.href='login.jsp';</script>");
	        	return;
	        }
	        //登录成功后，就将用户存储到session中
	        request.getSession().setAttribute("username", username);
	        out.print("<script>alert('"+username+":登陆成功!');window.location.href='./jsp/index.jsp';</script>");
	        return;
		}
		else
		{
			TeacherDao teacherDao=DaoFactory.getTeacherDaoInstance();
		
			try {
				flage = teacherDao.findByUsernameAndPassword(username, password);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		    if(flage==false){
	        	out.print("<script>alert('登陆失败：用户名或密码错误！');window.location.href='login.jsp';</script>");
	        	return;
	        }
	        //登录成功后，就将用户存储到session中
	        request.getSession().setAttribute("username", username);
	        out.print("<script>alert('"+username+":登陆成功!');window.location.href='./jsp/admin.jsp';</script>");
	        return;
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
