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
//添加
public void add(HttpServletRequest request, HttpServletResponse response, Statement statement)
		throws ServletException, IOException{
	String CardID = request.getParameter("CardID");
	String Name = request.getParameter("Name");
	String Gender = request.getParameter("Gender");
	String temp = request.getParameter("Credit");
	String Tel = request.getParameter("Tel");
	String StartDate = request.getParameter("StartDate");
	String OverdueDate = request.getParameter("OverdueDate");
	int Credit;
	if(temp.isEmpty()){
		Credit = 0;
	}
	else{
		Credit = Integer.parseInt(request.getParameter("Credit"));
	}
	try{
		String sql = "select CardID from membercard;";
		ResultSet rs = statement.executeQuery(sql);
	} catch (Exception e) {
		e.printStackTrace();
	}
}
//删除
public void del(HttpServletRequest request, HttpServletResponse response, Statement statement)
		throws ServletException, IOException{
	
}
//修改积分
public void cre(HttpServletRequest request, HttpServletResponse response, Statement statement)
		throws ServletException, IOException{
	
}
//会员卡续期
public void rnw(HttpServletRequest request, HttpServletResponse response, Statement statement)
		throws ServletException, IOException{
	
}
%>

<%
	String do_what = request.getParameter("do_what");
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
		
		if(do_what == "add")	add(request, response, statement);
		if(do_what == "delete")	del(request, response, statement);
		if(do_what == "credit")	cre(request, response, statement);
		if(do_what == "renew")	rnw(request, response, statement);
		
		
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