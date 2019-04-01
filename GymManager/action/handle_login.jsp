<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public void login(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
			String result;
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if(username.isEmpty()){
				result = "2";//2表示用户名为空
				response.getWriter().print(result);
				response.getWriter().close();
				System.out.println(result);
				return;
			}
			if(password.isEmpty()){
				result = "3";//3表示密码为空
				response.getWriter().print(result);
				response.getWriter().close();
				System.out.println(result);
				return;
			}
			if(username.equals("skyoung")){
				if(password.equals("123456")){
					result = "1";//1表示登录成功
					response.getWriter().print("1");
					response.getWriter().close();
					System.out.println(result);
					return;
				}
				result = "4";//4表示密码错误
				response.getWriter().print(result);
				response.getWriter().close();
				System.out.println(result);
				return;
			}
			result = "5";//5表示用户不存在
			response.getWriter().print(result);
			response.getWriter().close();
			System.out.println(result);
			return;
		}
	%>
	
	<%
		System.out.println("success");
		System.out.println(request.getParameter("username"));
		login(request, response);
	%>
</body>
</html>