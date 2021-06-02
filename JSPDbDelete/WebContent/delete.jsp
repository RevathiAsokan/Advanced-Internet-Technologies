<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "Test";
	String userId = "root";
	String password = "root";
	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>

	<h2 align="center"><font color="#FF00FF"><strong>Student data</strong></font></h2>
	<table align="center" cellpadding="4" cellspacing="4">
	<tr>
	</tr>
	<tr bgcolor="#008000">
		<td><b>Enrollment number</b></td>
		<td><b>Name</b></td>
		<td><b>Age</b></td>
	</tr>
	
	<%
	try {
		connection = DriverManager.getConnection(
		connectionUrl + dbName, userId, password);
		
		String enroll = request.getParameter("enroll");
		String sname = request.getParameter("name");
		String sage = request.getParameter("age");
		
		connection = DriverManager.getConnection(
		connectionUrl + dbName, userId, password);
		Statement stmt = connection.createStatement();
		String delsql = "DELETE FROM student where enroll = " + enroll;
		stmt.executeUpdate(delsql);
		
		out.println("Successfully deleted student record of enrollment no " + enroll);

		statement = connection.createStatement();
		String sql = "SELECT * FROM student";
		
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
		%>
		<tr bgcolor="#8FBC8F">
			<td><%=resultSet.getString("enroll")%></td>
			<td><%=resultSet.getString("sname")%></td>
			<td><%=resultSet.getInt("sage")%></td>
		</tr>
		<%
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</table>
