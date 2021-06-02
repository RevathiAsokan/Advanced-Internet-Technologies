<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<h2 align="center"> Request Dispatcher in JSP</h2>
<form method="post" action="dispatcher.jsp">
<table align="center">
	<tr>
		<td> Username: </td>
		<td><input type="text" name="fname"/></td>
	</tr>
	<tr>
		<td> Password: </td>
		<td><input type="password" name="pwd"/></td>
	</tr>
	<tr>
		<td><input type="submit" name="Submit"/></td>
	</tr>
</table>
</form>
</body>
</html>