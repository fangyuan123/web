package com.filter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class MyFilter implements Filter {

	/**
	 * 
	 */
	

	/*private HttpServletRequest servletRequest;
	private ServletResponse servletResponse;
	private FilterChain filterChain;
*/
	/**
	 * Constructor of the object.
	 */
	public MyFilter() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	
	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) servletRequest;
		HttpSession session = req.getSession();
		
		String username = (String)session.getAttribute("username");
		if (username != null&&username!="") {
			// 如果现在存在了session，则请求向下继续传递
			filterChain.doFilter(servletRequest, servletResponse);
		} else {
			// 跳转到提示登陆页面
			servletRequest.getRequestDispatcher("../error.jsp").forward(servletRequest, servletResponse);
		}

		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
