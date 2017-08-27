<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>** Lista de Autores **</title>
</head>
<body>
	<a href="<c:url value="/autor/novo"/>">Novo Regisro</a>
	<p />
	<table border="1">
		<thead>
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="autor" items="${autores}">
				<tr>
					<td>${autor.id}</td>
					<td>${autor.nome}</td>
					<td><a href="<c:url value="/autor/${autor.id}"/>">Editar</a> <a
						href="<c:url value="/autor/remover/${autor.id}"/>">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
		<a href="<c:url value="/"/>">Início</a>
</body>
</html>