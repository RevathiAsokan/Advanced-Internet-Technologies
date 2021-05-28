<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
	<H1><center> Result on <%=request.getParameter("opt") %> </center></H1>
	<%
	int num1 = Integer.parseInt(request.getParameter("n1"));
	int num2 = Integer.parseInt(request.getParameter("n2"));
	int result = 0;
	String str = request.getParameter("opt");
	
	switch(str){
		case "Addition" : result = num1 + num2;
					break;
		case "Subtraction" : result = num1 - num2;
					break;
		case "Multiplication" : result = num1 * num2;
					break;
		case "Division" : result = num1 / num2;
	}
	%>
	Result is <%= result%>
</body>
</html>