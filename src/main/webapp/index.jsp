<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Database</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
		<div class="row">
		<div class="col-lg-3 col-md-8 col-sm-12"></div>
		
		<div class="col-lg-6 col-md-8 col-sm-12 form">
				<h2 class="form-title text-center">Student Enrolment Details</h2>
				<form action="AddStudent.jsp" method="post">
					<table>
						<tr>
							<td><a class="link" href="viewstudent.jsp">View Student Details</a></td>
						</tr>
						
						<tr>
							<td>Student Name: </td>
						</tr>
						<tr>
							<td><input type="text"  class="form-control" placeholder="StudentName" name="studentname"><br/></td>
						</tr>
						
						<tr>
							<td>Student ID:</td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="Eg. ABC1234567" name="studentid"><br/></td>
						</tr>
						<tr>
							<td>Residential Address:</td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="Eg. XiamenUniversity, Sepang" name="address"><br/></td>
						</tr>
						<tr>
							<td>Department:</td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="Eg. Marketing" name="department"><br/></td>
						</tr>
						<tr>
							<td>Date of Enrolment(DoE):</td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="Eg. dd/mm/yyyy" name="doe"><br/></td>
						</tr>
						<tr>
							<td><input type="submit" class="btn btn-secondary btn-block" value="Add Student"><br/></td>
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