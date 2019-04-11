package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skyoung.mvcapp.dao.impl.UserDAOJdbcImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("*.login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/delete.member
		String methodName = servletPath.substring(1);					//	delete.member
		methodName = methodName.substring(0, methodName.length() - 6);	//	delete
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
		int result;
		if(username.isEmpty()){
			result = 2;//2表示用户名为空
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
		if(password.isEmpty()){
			result = 3;//3表示密码为空
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
		UserDAOJdbcImpl userDAOJdbcImpl = new UserDAOJdbcImpl();
		if(userDAOJdbcImpl.getCountWithUsername(username) == 0) {
			result = 5;//5表示用户不存在
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
		if(userDAOJdbcImpl.get(username).getPassword().equals(password)) {
			result = 1;//1表示登录成功
			response.getWriter().print("1");
			response.getWriter().close();
			System.out.println(result);
			return;
		}
		else {
			result = 4;//4表示密码错误
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
	}

}
