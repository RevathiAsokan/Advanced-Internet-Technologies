<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Arithmetic Operations</title>
</head>
<body>
<%! int number1 = 100; %>
<%! int number2 = 50; %>
<%
int sum = number1 + number2;
int diff = number1 - number2;
int product = number1 * number2;
int quotient = number1 / number2;
int remainder = number1 % number2;
out.print("Arithmetic operations on numbers " + number1 + " and " + number2 +" : " );
out.print("<br>Sum = " + sum);
out.print("<br>Difference = " + diff);
out.print("<br>Product = " + product);
out.print("<br>Quotient = " + quotient);
out.print("<br>Remainder = " + remainder);
%>
</body>
</html>