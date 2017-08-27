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
      <div class="col s12">
        <a href="<c:url value="/"/>" class="breadcrumb">Início</a>
        <a href="<c:url value="/autor/"/>" class="breadcrumb">Lista de Autores</a>
        <a href="#!" class="breadcrumb">Cadastro de Autores</a>
      </div>
    </div>
  </nav>
  <p />
		<div class="container">
		<div class="row">
		<form class="col s6" id="frm"
					action="<c:url value="/autor/salvar" />" method="POST">
			<div class="row">
				<label for="id">Código:</label> <input type="text" id="id" name="id"
							value="${autor.id}" readonly />
			</div>
			<div class="row">
				<label for="nome">Nome:</label> <input type="text" id="nome"
							name="nome" value="${autor.nome}" />
			</div>
			<button class="btn waves-effect waves-light" type="reset">Limpar</button>
			<button class="btn waves-effect waves-light" type="submit">Salvar</button>
		</form>
		</div>
	</div>
</jsp:body>
</layout:template>













