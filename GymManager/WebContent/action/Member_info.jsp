<%@page import="net.sf.json.util.JSONUtils"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="database.jsp" %>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	try {
		// 1 加载驱动程序
		System.out.println("writed0");
		Class.forName(driver);
		System.out.println("writed1");
		// 2 连接数据库
		Connection conn = DriverManager.getConnection(url, user, pass);
		System.out.println("writed2");
		// 3 用来执行SQL语句
		Statement statement = conn.createStatement();
		System.out.println("writed3");
		// 要执行的SQL语句
		String sql = "SELECT * FROM membercard order by CardID;";
		
		ResultSet rs = statement.executeQuery(sql);
		rs.close();
		conn.close();
		JSONObject json = new JSONObject();
		response.getWriter().print("{abc}");
		response.getWriter().close();
		System.out.println("writed");
		rs.close();
		conn.close();
	} catch (ClassNotFoundException e) {
	System.out.println("Sorry,can`t find the Driver!");
	e.printStackTrace();
	} catch (SQLException e) {
	e.printStackTrace();
	} catch (Exception e) {
	e.printStackTrace();
	}

%>

</body>
</html>