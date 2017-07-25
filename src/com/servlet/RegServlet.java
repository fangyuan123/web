package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.locale.converters.DateLocaleConverter;

import com.utils.WebUtils;
import com.javaBean.RegForm;
import com.dao.DaoFactory;
import com.dao.UserDao;
import com.users.User;



public class RegServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public RegServlet() {
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
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		RegForm formbean = WebUtils.request2Bean(request,RegForm.class);
		if (formbean.isValidate() == false) {//如果校验失败
            //将封装了用户填写的表单数据的formbean对象发送回register.jsp页面的form表单中进行显示
            request.setAttribute("formbean", formbean);
            //校验失败就说明是用户填写的表单数据有问题，那么就跳转回register.jsp
            //response.getWriter().print("<script>alert('注册失败：用户名或密码错误！');window.location.href='register.jsp';</script>");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		
        User user=new User(username, password, email);
		UserDao userDao=DaoFactory.getUserDaoInstance();
		try {
			userDao.add(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        request.getRequestDispatcher("./jsp/success.jsp").forward(request,response);
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
