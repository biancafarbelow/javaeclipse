<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Primeira Página JSP</title>
</head>
<body>
<p> texto </p>
<p>
<%
String msg ="Mensagem";
out.println("Hello World SJP!");
%>
</p>

<p> <%=msg %></p>
<%
System.out.println("JSP Executada");

%>
</body>
</html>