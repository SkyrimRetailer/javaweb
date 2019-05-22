package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.skyoung.mvcapp.dao.impl.UserDAOJdbcImpl;
import com.skyoung.mvcapp.domain.User;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("*.user")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/delete.user
		String methodName = servletPath.substring(1, servletPath.length() - 5);		//	delete
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		try {
			//利用反射获取 methodName对应的方法
			Method method  = getClass().getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			//利用反射调用对应的方法
			method.invoke(this, request, response);
		} catch (Exception e) {
			response.sendRedirect("error.jsp");
		}
	}
	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String checkcode = request.getParameter("checkcode");
		String checkcodeval = request.getSession().getAttribute("CHECK_CODE_KEY").toString();
		int result;
		if(!checkcode.toLowerCase().equals(checkcodeval.toLowerCase())) {
			result = 2;//2表示验证码错误
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
		else {//验证码正确则清除 session 域中的 验证码 属性
			request.getSession().removeAttribute("CHECK_CODE_KEY");
		}
		UserDAOJdbcImpl userDAOJdbcImpl = new UserDAOJdbcImpl();
		if(userDAOJdbcImpl.getCountWithUsername(username) == 0) {
			result = 0;//用户名不存在，0表示登录失败
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
		if(userDAOJdbcImpl.get(username).getPassword().equals(password)) {
			request.getSession().setAttribute("username", username);
			result = 1;//1表示登录成功
			response.getWriter().print("1");
			response.getWriter().close();
			System.out.println(result);
			return;
		}
		else {
			result = 0;//密码错误，0表示登录失败
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
	}
	
	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("username");
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}
	
	private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		int result;
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		UserDAOJdbcImpl userDAOJdbcImpl = new UserDAOJdbcImpl();
		if(userDAOJdbcImpl.getCountWithUsername(username) != 0) {
			result = 0;//用户名已存在，0表示注册失败
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}else {
			userDAOJdbcImpl.insert(user);
			result = 1;//1表示注册成功
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
	}
}
