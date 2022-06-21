<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="com.dao.UserDao" %>
<jsp:useBean id="s" class="com.dao.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
	int i = UserDao.update(s);
	response.sendRedirect("viewstudent.jsp");
%>

</body>
</html>