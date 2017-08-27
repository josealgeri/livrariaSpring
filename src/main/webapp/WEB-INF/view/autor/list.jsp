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
        <a href="#!" class="breadcrumb">Lista de Autores</a>
      </div>
    </div>
  </nav>
  <div class="container" >
		<p />
  <a href="<c:url value="/autor/novo"/>"
				class="btn-floating btn-small waves-effect waves-light"><i
				class="material-icons">add</i></a>


		<p />
		<table border="1" class="highlight">
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
						<td><a href="<c:url value="/autor/${autor.id}"/>"><i
									class="material-icons ">edit</i></a>
							<a href="<c:url value="/autor/remover/${autor.id}"/>">
							<i class="material-icons red-text">delete</i>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p />
	</div>


</jsp:body>
</layout:template>













