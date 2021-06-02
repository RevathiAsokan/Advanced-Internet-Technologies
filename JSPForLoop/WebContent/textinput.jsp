<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
<title>Output</title>
<body bgcolor="#C0C0C0">
<%String a=request.getParameter("num1");%>
<font>This Page displaying the range from 1 to <%=a%> </font>
<br/><%int number=Integer.parseInt(a);
for(int i=1;i<=number;i++)
{
%>
<table border="0"><tr><td><%=i %></td></tr></table>
<%} %>
</body>
</html>