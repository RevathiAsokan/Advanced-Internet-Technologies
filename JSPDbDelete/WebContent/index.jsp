<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<form name="frm" method="post" action="delete.jsp">
	<h2 align="center"><font color="#FF00FF"><strong>Delete operation</strong></font></h2>
	<table align="center">
	<tr>
		<td> Enrollment number: </td>
		<td><input type="text" name="enroll"/></td>
	</tr>
	<tr>
		<td><input type="submit" name="Register"/></td>
	</tr>
	</table>
</form>