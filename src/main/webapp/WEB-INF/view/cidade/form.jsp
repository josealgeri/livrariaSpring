<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formulário de Cadastro</title>
</head>
<body>

	<form id="frm" action="<c:url value="/autor/salvar" />" method="POST">
		<div>
			<label for="id">Código:</label> <input type="text" id="id" name="id"
				value="${autor.id}" readonly />
		</div>
		<div>
			<label for="nome">Nome:</label> <input type="text" id="nome"
				name="nome" value="${autor.nome}" />
		</div>
		<button type="reset">Limpar</button>
		<button type="submit">Salvar</button>
	</form>
</body>
</html>