<%@page import="com.skyoung.test.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Java代码写在如下的里边 -->
	<%
		Person person = new Person();
		System.out.print(person.getPersonInfo());
		person.getPersonInfo();
	%>
	
</body>
</html>