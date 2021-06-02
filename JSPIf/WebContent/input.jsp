<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Input</title>
</head>
<body bgcolor="#C0C0C0">
<%
String a = request.getParameter("num1");
%>
<%
String b = request.getParameter("num2");
%>
<b> Even number program in JSP Using if <br></b>
<%
int x = Integer.parseInt(a);
int y = Integer.parseInt(b);
for(int i=x; i<=y; i++){
	if((i%2)==0){
		out.print("Even number : " + i);
		out.print("<br>");
	}
}
%>
</body>
</html>