<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html><script type="text/javascript">
function check()
{
	var x=document.forms["frm"]["num1"].value;
	if (x==null || x=="") {
		alert("Please provide the range");
		return false;
	}
	return true;
}
</script><title>Input</title>

<body bgcolor="#6E4E6E">
<form name="frm" method="get" action="textinput.jsp" onsubmit="check()">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#D8D8D8 ">
	<p><font color="#F8E0F7"></font></p>
	<tr>
		<td width="22%">&nbsp;</td>
		<td width="78%">&nbsp;</td>
	</tr>
	<tr><center>
		<td>Enter the number:</td>
		<td><input type="text" name="num1"></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type="submit" name="submit" value="Submit"></td>
	</tr>
	<tr></center>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
</table>
</form>
</body>
</html>