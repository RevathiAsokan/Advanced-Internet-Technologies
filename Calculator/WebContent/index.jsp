<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculate</title>
</head>
<body>
<h1> <center> Calculator </center></h1>
	<b> Arithmetic operations</b>
	<hr>
	<form method = "post" action="calculate.jsp">
	<font size=5 face="Times New Roman">
	<input type="radio" name="opt" value = "Addition" checked>Add<br>
	<input type="radio" name="opt" value = "Subtraction">Subtract<br>
	<input type="radio" name="opt" value = "Multiplication">Multiply<br>
	<input type="radio" name="opt" value = "Division">Divide<br>
	</font>
	<br><br>
	Enter number 1: <input type = "text" name="n1" value=""><br>
	Enter number 2: <input type = "text" name="n2" value=""><br>
	<input type = "submit" name="Calculate">
	</form>
</body>
</html>