<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="es">
<head>
<meta charset="UTF-8">
<title>NCN Reservas</title>
<link rel="stylesheet"href="${pageContext.request.contextPath}/estilos/index.css">
</head>
<body>

	<header>
		<div class="logo">
			<nav>NCN Reservas</nav>
			<img
				src="${pageContext.request.contextPath}/estilos/imagenes/logo.png"
				alt="Logo NCN" class="img-logo">

		</div>

		<nav>
			<a href="${pageContext.request.contextPath}/vistas/index.jsp">Inicio</a>
			<a href="${pageContext.request.contextPath}/vistas/Reservas.jsp">Reservas</a>
			<a href="${pageContext.request.contextPath}/vistas/VerReserva.jsp">VerReserva</a> 
			<a href="${pageContext.request.contextPath}/vistas/Recetas.jsp">Recetas</a>
			<a href="${pageContext.request.contextPath}/vistas/Contacto.jsp">Contacto</a>

		</nav>

	</header>

	<main class="contenedor">

		<h1>Gestión de Turnos Médicos</h1>

		<p class="subtitulo">Seleccione una opción</p>

		<div class="opciones">

			<div class="bloque">
				<p>Solicitar un turno</p>
				<a href="${pageContext.request.contextPath}/vistas/reservas.jsp"
					class="boton">Reservar Turno</a>

			</div>

			<div class="logo-centro">

				<img
					src="${pageContext.request.contextPath}/estilos/imagenes/logo.png"
					alt="Logo NCN" class="logo-img-centro">

			</div>

			<div class="bloque">

				<p>Ver sus recetas</p>

				<a href="#" class="boton secundario">Recetas</a>

			</div>

		</div>

	</main>

	<footer class="footer">

		<h3>Teléfonos útiles</h3>

		<div class="telefonos">

			<a href="#">102 - Niñez y Adolescencia</a>
			 <a href="#">103 - Emergencias</a>
			  <a href="#">107 - SAME</a> 
			  <a href="#">911 - Policía</a>
			<a href="#">144 - Violencia de género</a>
			 <a href="#">147 -Atención ciudadana</a>

		</div>

		<p>© 2025 NCN Reservas | Proyecto Escolar</p>

	</footer>

</body>

</html>