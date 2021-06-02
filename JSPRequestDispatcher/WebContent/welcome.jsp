<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<font face="Verdana" color = #120292>
<h1 align="center">Welcome to home page...!</h2>
</font>
<h3><center> Username: <%=request.getParameter("fname") %> </center></H3>
<h3><center> Password: <%=request.getParameter("pwd") %> </center></H3>
</body>
</html>