<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Your Data is Not Added into Database</h2>

<jsp:useBean id="s" class="com.dao.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<p>Please try again, Press back to add details</p>

<br/><a href="index.jsp">Back</a>

</body>
</html>