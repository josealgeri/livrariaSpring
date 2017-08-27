<%@ tag pageEncoding="utf-8"%>
<%@ attribute name="cssEspecificos" fragment="true" required="false"%>
<%@ attribute name="scriptsEspecificos" fragment="true" required="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8" />
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bike-shop " />
<title>.:: Livraria ::.</title>
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:invoke fragment="cssEspecificos"></jsp:invoke>
</head>
<body>
	<!-- Dropdown Structure -->
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="<c:url value="/autor/"/>">Autores</a></li>
		<li><a href="<c:url value="/editora/"/>">Editoras</a></li>
		<li><a href="<c:url value="/genero/"/>">Gêneros</a></li>
		<li class="divider"></li>
		<li><a href="<c:url value="/livro/"/>">Livros</a></li>
	</ul>
	<nav>
		<div class="nav-wrapper">
			<ul class="left hide-on-med-and-down">
			<li><a href="<c:url value="/#/"/>">Início</a></li>
				<li><a href="<c:url value="/#/"/>">Sobre</a></li>
				<li><a href="<c:url value="/#/"/>">Contato</a></li>
				<!-- Dropdown Trigger -->
				<li><a class="dropdown-button" href="#!"
					data-activates="dropdown1">Cadastros<i
						class="material-icons right">arrow_drop_down</i></a></li>
			</ul>
		</div>
	</nav>

	<!--/banner-->
	<div id="wrap">
		<jsp:doBody />
		<div class="clearfix"></div>
	</div>
	<!--- fOOTER Starts Here --->

	<!---->
	<!--- fOOTER Starts Here --->


	<!--Import jQuery before materialize.js-->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

</body>
</html>