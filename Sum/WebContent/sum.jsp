<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Output</title>
</head>
<body>
<%
String number1 =request.getParameter("number1");
String number2 =request.getParameter("number2");
Float sum = Float.parseFloat(number1) + Float.parseFloat(number2);
out.print("Sum of " + number1 + " and " + number2 + " = " + sum);
%>
</body>
</html>