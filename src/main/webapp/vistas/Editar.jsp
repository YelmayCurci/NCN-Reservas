<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar Reserva</title>
    <link rel="stylesheet" href="Editar.css">
</head>
<body>

<header>
    <div class="header-izq">
        <img src="LOGO.png" class="img-logo">
        <span class="titulo-logo">NCN Reservas</span>
    </div>

    <nav>
        <a href="index.html">Inicio</a>
        <a href="reservas.html">Reservas</a>
        <a href="verReserva.html">Ver Reserva</a>
        <a href="recetas.html">Recetas</a>
        <a href="contacto.html">Contacto</a>
    </nav>
</header>

<section class="contenedor">
    <h1>Editar Turno</h1>
    <p class="subtitulo">Modifique los datos del turno</p>

    <form class="formulario"method="post">
    <label>id</label>
    <input type="hidden" name="id" value="<%=rs.getInt("id") %>">

        <label>Nombre</label>
        <input type="text" value="<%= rs.getString("Nombre") %>" required >

        <label>Apellido</label>
        <input type="text" value="<%= rs.getString("Apellido") %>" required>

        <label>Teléfono</label>
        <input type="tel" value="1123456789" required>

        <label>Correo electrónico</label>
        <input type="email" value="juan@gmail.com" required>

        <label>Especialidad</label>
        <select required>
            <option>Clínica Médica</option>
            <option>Pediatría</option>
            <option>Cardiología</option>
            <option>Dermatología</option>
        </select>

        <label>Fecha</label>
        <input type="date" value="2026-04-20" required>

        <label>Horario</label>
        <input type="time" value="10:30" required>

        <button type="submit">Guardar Cambios</button>

    </form>
</section>

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


