<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detail Added</title>
</head>
<body>

<h2>You Have Successfully Added Your Data</h2>

<jsp:useBean id="s" class="com.dao.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<a class="link" href="viewstudent.jsp">View Your Details</a>

<br/><a href="index.jsp">Back</a>

</body>
</html>