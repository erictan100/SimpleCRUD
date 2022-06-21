<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>

</head>
<body>

<%@page import="com.dao.UserDao, com.dao.bean.User, java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>


	<h2>Student Enrolment Details</h2>

<%
	List<User>list=UserDao.getAllRecord();
	request.setAttribute("list",list);
%>

	<table border="1" width="90%">
		<tr>
			<th>No.</th>
			<th>Student Name</th>
			<th>Student ID</th>
			<th>Residential Address</th>
			<th>Department</th>
			<th>Date of Enrolment</th>
			<th>Update</th>
		</tr>

		<c:forEach items="${list}" var = "s">
		<tr>
			<td>${s.getId()}</td>
			<td>${s.getstudentname()}</td>
			<td>${s.getstudentid()}</td>
			<td>${s.getaddress()}</td>
			<td>${s.getdepartment()}</td>
			<td>${s.getdoe()}</td>
		
			<td>
			<a href="edit.jsp?id=${s.getId()}">Edit</a>
			<a href="delete.jsp?id=${s.getId()}">/Delete</a>
			</td>
		</tr>
	
		</c:forEach>
	</table>
	<br/><a href="index.jsp">Back</a>
	</div>
	
</div>
</div>
</body>
</html>