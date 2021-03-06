<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>
<layout:template>
	<jsp:attribute name="cssEspecificos"></jsp:attribute>
	<jsp:attribute name="scriptsEspecificos">
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	</jsp:attribute>
	<jsp:body>
	
	<nav>
    <div class="nav-wrapper">
      <div class="col s6">
        <a href="<c:url value="/"/>" class="breadcrumb">Início</a>
                <a href="<c:url value="/editora/"/>" class="breadcrumb">Lista de Editoras</a>
        <a href="#!" class="breadcrumb">Cadastro de Editoras</a>
      </div>
    </div>
  </nav>
  <p />
		<div class="container">
		<div class="row">
			<form class="col s6" id="frm" action="<c:url value="/editora/salvar" />"
				method="POST">
		<div>
			<label for="id">Código:</label> <input type="text" id="id" name="id"
						value="${editora.id}" readonly />
		</div>
		<div>
			<label for="nome">Nome:</label> <input type="text" id="nome"
						name="nome" value="${editora.nome}" />
		</div>
		<button class="btn waves-effect waves-light" type="reset">Limpar</button>
		<button class="btn waves-effect waves-light" type="submit">Salvar</button>
	</form>
	</div>
	</div>


</jsp:body>
</layout:template>













