<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Contacto</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/estilos/contacto.css">
</head>
<body>

<!-- HEADER -->
<header>
    <div class="header-izq">
        <img src="LOGO.png" class="img-logo">
        <span class="titulo-logo">NCN Reservas</span>
    </div>

    <nav>
        
        <a href="${pageContext.request.contextPath}/vistas/index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/vistas/reservas.jsp">Reservas</a>
        <a href="${pageContext.request.contextPath}/vistas/VerReserva.jsp">VerReserva</a>
        <a href="${pageContext.request.contextPath}/vistas/Recetas.jsp">Recetas</a>
        <a href="${pageContext.request.contextPath}/vistas/Contacto.jsp">Contacto</a>
    </nav>
</header>

<!-- CONTENIDO -->
<section class="contenedor">
    <h1>Contacto</h1>
    <p class="subtitulo">Envíanos tu consulta</p>

    <div class="contacto-box">

        <!-- FORMULARIO -->
        <form class="form-contacto"
         action="${pageContext.request.contextPath}/AltaServlet" method="post">

            <label>Nombre</label>
            <input type="text" placeholder="Tu nombre" required>

            <label>Correo electrónico</label>
            <input type="email" placeholder="ejemplo@gmail.com" required>

            <label>Mensaje</label>
            <textarea placeholder="Escriba su mensaje..." required></textarea>

            <button type="submit">Enviar Mensaje</button>
          <a href="${pageContext.request.contextPath}/LeerServlet"></a>

        </form>

        <!-- INFO -->
        <div class="info-contacto">
            <h3>Información</h3>
            <p><strong>Email:</strong> contacto@ncn.com</p>
            <p><strong>Teléfono:</strong> 11 2345 6789</p>
            <p><strong>Dirección:</strong> Buenos Aires, Argentina</p>
        </div>

    </div>
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

