<%
	String name = (String)session.getAttribute("name");
	String email = (String)session.getAttribute("email");
%>

<!DOCTYPE HTML>
<html>
<head> 
	<title>Registration result</title> 
</head> 
<body> 
	<h1>Registration result</h1>
	<p>
		Thank Mr/Ms <b><%=name%></b> for your interest in our services! <br><br>
		The e-ticket confirmation will be sent in a separate email to the address indicated below: <br><br>
		<b><%=email%></b>
</p>

<%
	session.removeAttribute("name");
	session.removeAttribute("addr");
	session.removeAttribute("email");
	session.invalidate();
%>
</body>
</html>