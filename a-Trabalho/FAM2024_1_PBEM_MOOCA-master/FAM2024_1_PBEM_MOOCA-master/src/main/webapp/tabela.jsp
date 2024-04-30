<%@page import="java.text.DateFormat"%>
<%@page import="br.com.vemprafam.pojo.Aluno"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="br.com.vemprafam.dao.DaoAluno"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>tabela do aluno (JSP)</title>
</head>
<body>
<table border ='1'>
<tr>
	<th>RA</th>
	<th>Nome</th>
	<th>Data de Nascimento</th>
	<th>Renda<td></td></th>
</tr>
<%
DaoAluno dao = new DaoAluno();
List<Aluno> lista = dao.getLista();
SimpleDateFormat dateFormat= new SimpleDateFormat("dd/MM/yyyy");
NumberFormat numberFormat = NumberFormat.getCurrencyInstance();

for (Aluno a: lista) {
	String dataF= dateFormat.format(a.getDataNascimento());
	String rendaF= numberFormat.format(a.getRenda());
%>
<tr>
	<td><%=a.getRa() %></td>
	<td><%=a.getNome() %></td>
	<td><%=dataF %></td>
	<td><%=rendaF %></td>
</tr>
<%
}
%>

</table>

<a href='/Projeto'>Voltar</a>
</body>
</html>