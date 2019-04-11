<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ include file="database.jsp" %>
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
			int result;
			String username = request.getParameter("username");
			String password = request.getParameter("password");
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
			try {
				// 1 加载驱动程序
				Class.forName(driver);
				// 2 连接数据库
				Connection conn = DriverManager.getConnection(url, user, pass);
				System.out.println("connected");
				// 3 用来执行SQL语句
				Statement statement = conn.createStatement();
				// 要执行的SQL语句
				String sql = "SELECT * FROM userinfo;";
				ResultSet rs = statement.executeQuery(sql);
				System.out.println("writed");
				while(rs.next()){
					if(username.equals(rs.getString(1))){
						if(password.equals(rs.getString(2))){
							result = 1;//1表示登录成功
							response.getWriter().print("1");
							response.getWriter().close();
							System.out.println(result);
							rs.close();
							conn.close();
							return;
						}
						else{
							result = 4;//4表示密码错误
							response.getWriter().print(result);
							response.getWriter().close();
							System.out.println(result);
							rs.close();
							conn.close();
							return;
						}
					}
				}
				result = 5;//5表示用户不存在
				response.getWriter().print(result);
				response.getWriter().close();
				System.out.println(result);
				rs.close();
				conn.close();
				return;
			} catch (ClassNotFoundException e) {
			System.out.println("Sorry,can`t find the Driver!");
			e.printStackTrace();
			} catch (SQLException e) {
			e.printStackTrace();
			} catch (Exception e) {
			e.printStackTrace();
			}
		}
	%>
	
	<%
		String s = "12";
		System.out.println(Integer.parseInt(s));
		System.out.println("success");
		System.out.println(request.getParameter("username"));
		login(request, response);
	%>
</body>
</html>