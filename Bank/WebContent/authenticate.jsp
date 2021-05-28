<%@ page errorPage="error.jsp" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<font size = 4 face="Verdana" color = #120292>
	<%
		String user = request.getParameter("customerId");
		int customerID = Integer.parseInt(user);
		String password = request.getParameter("password");
		
		if(customerID == 70542 && password.equals("revathi"))
		{
			out.println("Welcome to Online Banking System");
		%>
		<br><br>
		<%
			out.println("Login successful...! ");
		}else{
			out.println("Login unsuccessful...! Invalid credentials.");
		}
	%>
	</font>
</body>
</html>