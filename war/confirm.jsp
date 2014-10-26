<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String name = request.getParameter("name");
String addr = request.getParameter("addr");
String email = request.getParameter("email");

session.setAttribute("name", name);
session.setAttribute("addr", addr);
session.setAttribute("email", email);
%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
</head>
<body>
  <table border="0" width="70%" align="center">
  <tr><td colspan="2"><h3>Registration form</h3></td></tr>
  <tr><td colspan="2"><i><b>Please confirm your contact information...</b></i></td></tr>
  <tr>
	<td><b>Name:</b></td><td><%=name%></td>
  </tr>
  <tr>
	<td><b>Address:</b></td><td><%=addr%></td>
  </tr>
  <tr>
	<td><b>E-mail:</b></td><td><%=email%></td>
  </tr>
  <tr><td colspan="2">
	<input type="button" value="confirm" 
	onclick=javaScript:self.location.href="register.jsp"></td>
  </tr>
  </table>
 </body>
</html>