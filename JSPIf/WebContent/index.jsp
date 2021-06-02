<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<script type="text/javascript">
function check()
{
	var x=document.forms["frm"]["num1"].value;
	var y=document.forms["frm"]["num2"].value;
	if ((x==null || x=="")||(y==null || y=="")){
		alert("Please provide the range");
		return false;
	}
}
</script>
<title>Home page</title>
<body bgcolor="#C0C0C0">
<form name="frm" method="get" action="input.jsp"
onsubmit="return check()">
<p>Please enter the range to check even number</p>
<font color="#A8E0F7"></font>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#D8D8D8 ">
	<tr>
		<td width="22%">&nbsp;</td>
		<td width="78%">&nbsp;</td>
	</tr>
	<tr>
		<td>Enter the range:</td>
		<td><input type="text" name="num1"></td>
	</tr>
	<tr>
		<td>Enter the range:</td>
		<td><input type="text" name="num2"></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type="submit" name="submit" value="Submit"></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
</table>
</form>
</body>
</html>