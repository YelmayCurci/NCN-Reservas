<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Ver Reservas - NCN Reservas</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/VerReserva.css" />
</head>
<body>
	<header>
		<h1>NCN Reservas</h1>
		<nav>
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/vistas/index.jsp">Inicio</a></li>
				<li><a
					href="${pageContext.request.contextPath}/vistas/reservas.jsp">Reservas</a></li>
				<li><a
					href="${pageContext.request.contextPath}/vistas/Contacto.jsp">Contacto</a></li>
					
			</ul>
		</nav>
	</header>

	<main class="reservas-container">
		<h2>Reservas Realizadas</h2>
		<p>Consulta aquí las reservas que ya se han realizado</p>

		<div class="formulario">
			<label for="buscar">Buscar por nombre o curso:</label> <input
				type="text" id="buscar" placeholder="Ej: Pepito Pérez o 4°TC">
			<button class="enviar" onclick="buscarReserva()">Buscar</button>
		</div>

		<section class="reservas-grid" id="lista-reservas">
			<%
        ResultSet resultados = (ResultSet) request.getAttribute("conjuntoResultados");
        if (resultados != null) {
          try {
            if (!resultados.isBeforeFirst()) {
      %>
			<p>No hay reservas registradas.</p>
			<%
            } else {
              while (resultados.next()) {
      %>
			<div class="card">
				<h3><%= resultados.getString("Nombre") %></h3>
				<p>
					<b>Apellido:</b>
					<%= resultados.getString("Apellido") %></p>
				<p>
					<b>Telefono:</b>
					<%= resultados.getString("Telefono") %></p>
				<p>
					<b>Correo:</b>
					<%= resultados.getString("Correo") %></p>
				<p>
					<b>Especialidad:</b>
					<%= resultados.getString("Especialidad") %></p>
				<p>
					<b>Fecha:</b>
					<%= resultados.getString("Fecha") %></p>
				<p>
					<b>Horario:</b>
					<%= resultados.getString("Horario") %></p>
			</div>
			<%
              }
            }
          } catch (SQLException e) {
            out.println("<p>Error al mostrar las reservas: " + e.getMessage() + "</p>");
          }
        } else {
      %>
			<p>No hay reservas registradas.</p>
			<%
        }
      %>
		</section>
	</main>

	<footer>
		<p>© 2025 NCN Reservas | Proyecto escolar</p>
	</footer>

	<script>
    function buscarReserva() {
      const filtro = document.getElementById("buscar").value.toLowerCase();
      const reservas = document.querySelectorAll(".card");
      reservas.forEach(card => {
        const texto = card.innerText.toLowerCase();
        card.style.display = texto.includes(filtro) ? "block" : "none";
      });
    }
  </script>
</body>
</html>
