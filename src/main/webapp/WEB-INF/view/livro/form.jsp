<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>
<layout:template>
	<jsp:attribute name="cssEspecificos"></jsp:attribute>
	<jsp:attribute name="scriptsEspecificos">
	</jsp:attribute>
	<jsp:body>
	<nav>
    	<div class="nav-wrapper">
      		<div class="col s12">
        		<a href="<c:url value="/"/>" class="breadcrumb">Início</a>
        		<a href="<c:url value="/livro/"/>" class="breadcrumb">Lista de Livros</a>
        		<a href="#!" class="breadcrumb">Cadastro de Livros</a>
      		</div>
    	</div>
	</nav>
 <p />
	<div class="container">
		<div class="row">
			<form class="col s6" id="frm"
					action="<c:url value="/livro/salvar" />" method="POST">
		<div>
			<label for="id">Código:</label> <input type="text" id="id" name="id"
							value="${livro.id}" readonly />
		</div>
		<div>
			<label for="titulo">Título:</label> <input type="text" id="nome"
							name="titulo" value="${livro.titulo}" />
		</div>
		<div class="input-field col s6">
			<select name="editora">
				<c:forEach var="editora" items="${editoras}">
					<option value="${editora.id}"
									${editora.id == livro.editora.id ? 'selected' : ''}>
							${editora.nome}</option>
				</c:forEach>
			</select>
			<label for="editora">Editora:</label> 
		</div>
		
		
		<div class="input-field col s6">
			 <select name="genero">
				<c:forEach var="genero" items="${generos}">
					<option value="${genero.id}"
									${genero.id == livro.genero.id ? 'selected' : ''}>
							${genero.descricao}</option>
				</c:forEach>
			</select>
			<label for="genero">Gênero:</label>
		</div>
		<div class="input-field col s6">
			 <select name="autor">
				<c:forEach var="autor" items="${autores}">
					<option value="${autor.id}"
									${autor.id == livro.autor.id ? 'selected' : ''}>
							${autor.nome}</option>
				</c:forEach>
			</select>
			<label for="autor">Autor:</label>
		</div>
		
		<div class="input-field col s6">
		<label for="ano">Ano:</label>
			<input type="text" id="ano" name="ano" value="${livro.ano}" />
							 
		</div>
		<div>
			<label for="isbn">ISBN:</label> <input type="text" id="isbn"
							name="isbn" value="${livro.isbn}" />
		</div>
		
		
		<button class="btn waves-effect waves-light" type="reset">Limpar</button>
		<button class="btn waves-effect waves-light" type="submit">Salvar</button>
	</form>
	</div>
	</div>
	
	<!--Import jQuery before materialize.js-->
  <script type="text/javascript"
			src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="js/materialize.min.js"></script>
  <script>
			$(document).ready(function() {
				$('select').material_select();
			});
		</script>
	
    
</jsp:body>
</layout:template>
