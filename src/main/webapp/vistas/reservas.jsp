<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Reservar Turno</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/estilos/reservas.css">
</head>
<body>

<header>
   <div class="logo"></div>
    <img src="LOGO.png" alt="Logo NCN" class="img-logo">
    <nav >NCN Reservas </nav>
    <nav>
    
        <a href="${pageContext.request.contextPath}/vistas/index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/vistas/reservas.jsp">Reservas</a>
        <a href="${pageContext.request.contextPath}/vistas/VerReserva.jsp">VerReserva</a>
        <a href="${pageContext.request.contextPath}/vistas/Recetas.jsp">Recetas</a>
        <a href="${pageContext.request.contextPath}/vistas/Contacto.jsp">Contacto</a>
           
    </nav>
</header>

<section class="contenedor">
    <h1>Reservar Turno Médico</h1>
   <p class="subtitulo">Complete Los Datos </p>

    <form class="formulario"
         action="${pageContext.request.contextPath}/AltaServlet" method="post">

        <label>Nombre</label>
        <input type="text" placeholder="Ingrese su nombre" required>

        <label>Apellido</label>
        <input type="text" placeholder="Ingrese su apellido" required>

        <label>Teléfono</label>
        <input type="tel" placeholder="Ej: 11 2345 6789" required>

        <label>Correo electrónico</label>
        <input type="email" placeholder="ejemplo@gmail.com" required>

        <label>Especialidad</label>
        <select required>
            <option value="">Seleccione</option>
            <option>Clínica Médica</option>
            <option>Pediatría</option>
            <option>Cardiología</option>
            <option>Dermatología</option>
        </select>

        <label>Fecha</label>
        <input type="date" required>

        <label>Horario</label>
        <input type="time" required>

        <button type="submit">Confirmar Turno</button>
          <a href="${pageContext.request.contextPath}/LeerServlet"></a>
        

    </form>
</section>

<!-- FOOTER -->
<footer class="footer">
    <h3>Teléfonos útiles</h3>
    <div class="telefonos">
        <a href="#">102 - Niñez y Adolescencia</a>
        <a href="#">103 - Emergencias</a>
        <a href="#">107 - SAME</a>
        <a href="#">911 - Policía</a>
        <a href="#">144 - Violencia de género</a>
        <a href="#">147 - Atención ciudadana</a>
    </div>

    <p>NCN Reservas - Proyecto Escolar</p>
</footer>

</body>
</html>




