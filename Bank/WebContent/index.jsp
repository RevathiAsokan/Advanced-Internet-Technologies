<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to online banking</title>
</head>
<body>
<form name="login" action="authenticate.jsp">
	<font size = 4 face="Verdana" color = #120292>
		<marquee> Online Banking System </marquee>
		<br><br>
		<table cellspacing=5 cellpadding=5 bgcolor=MediumSeaGreen colspan=2 rowspan=2 align="center">
			<tr>
				<td> Bank Customer Authentication Form </td>
			</tr>
			<tr>
				<td> Enter Customer ID: </td>
				<td><input type=text name="customerId"></td>
			</tr>
			<tr>
				<td>Enter Password: </td>
				<td><input type=password name="password"></td>
			</tr>
		</table>
		<br>
		<table align="center">
			<tr>
				<td><input type="submit" value="Login"></td>
				<td><input type="reset" value="Cancel"></td>
			</tr>
		</table>
	</font>
</form>

</body>
</html>