<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Reading all parameters</title>
</head>
<body>
<h2>Reading all parameters</h2>
<%
Enumeration paramName = request.getParameterNames();
Properties paramProp = new Properties();

while(paramName.hasMoreElements()){
	String name = (String)paramName.nextElement();
	String value = request.getParameter(name);
	//out.println("param name = "+name+", value = "+value+"<br>");
	paramProp.put(name, value);
}

if(paramProp.get("AdvancedWeb") != null && (paramProp.get("AdvancedWeb")).equals("on")){
	out.println("I like to study Advanced Web Programming");	
}else{
	out.println("I don't like to study Advanced Web Programming");
}







%>


</body>
</html>