<%
	session.removeAttribute("username");
	session.removeAttribute("password");
	session.invalidate();
	response.sendRedirect("index.jsp");
%>