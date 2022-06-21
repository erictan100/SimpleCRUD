<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Details</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<%@ page import="com.dao.UserDao, com.dao.bean.User" %>

<%
	String id = request.getParameter("id");
	User s = UserDao.getRecordById(Integer.parseInt(id));
%>

<div class="container">
		<div class="row">
		<div class="col-lg-3 col-md-8 col-sm-12"></div>
		
		<div class="col-lg-6 col-md-8 col-sm-12 form">
				<h2 class="form-title text-center">Edit Student Enrolment Details</h2>
				<form action="update.jsp" method="post">
				<input type="hidden" name="id" value="<%=s.getId()%>"/>
					
					<table>
						<tr>
							<td>Student Name: </td>
						</tr>
						<tr>
							<td><input type="text" class="form-control"  name="studentname" value="<%=s.getstudentname()%>"/><br/></td>
						</tr>
						
						<tr>
							<td>Student ID:</td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" name="studentid" value="<%=s.getstudentid()%>"/><br/></td>
						</tr>
						<tr>
							<td>Residential Address:</td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" name="address" value="<%=s.getaddress()%>"/><br/></td>
						</tr>
						<tr>
							<td>Department:</td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" name="department" value="<%=s.getdepartment()%>"/><br/></td>
						</tr>
						<tr>
							<td>Date of Enrolment:</td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" name="doe" value="<%=s.getdoe()%>"/><br/></td>
						</tr>
						<tr>
							<td><input type="submit" class="btn btn-secondary btn-block" value="Update Detail"><br/></td>
						</tr>
					</table>
				</form>						
		</div>
		
		<div class="col-lg-3 col-md-8 col-sm-12"></div>
		</div>	
</div>


<script src="BSS/js/bootstrap.min.js"></script>
</body>
</html>