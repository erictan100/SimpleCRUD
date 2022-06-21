<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.UserDao" %>

<jsp:useBean id="s" class="com.dao.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="s"></jsp:setProperty>

<%
	int x = UserDao.save(s); // save the property that have name as u
	if(x>0)
	{
		response.sendRedirect("SuccessAdd.jsp");
	}
	else
	{
		response.sendRedirect("UnsuccessAdd.jsp");
	}
	
%>