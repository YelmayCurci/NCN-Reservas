package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//ncn reservas
@WebServlet(name = "AltaServlet", urlPatterns = { "/AltaServlet" })

public class AltaServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Nombre= request.getParameter("Nombre");
		String Apellido = request.getParameter("Apellido");
		String Telefono = request.getParameter("Telefono");
		String Correo = request.getParameter("Correo electronico");
		String Especialidad = request.getParameter("especialidad");
		String Fecha = request.getParameter("fecha");
		String Horario = request.getParameter("horario");

		//FALTA VALIDACIÓN DE DATOS
		
		try (Connection con = ConexionBD.getConexion()) {
			String sql = "INSERT INTO reservas (Nombre, Apellido, Telefono, Correo, Especialidad, Fecha, Horario) VALUES (?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, Nombre);
			ps.setString(2, Apellido);
			ps.setString(3, Telefono);
			ps.setString(4, Correo);
            ps.setString(5, Especialidad);
			ps.setString(6, Fecha);
			ps.setString(7, Horario);
			
			ps.executeUpdate();

			// controlar si se generó una fila en la BD
			response.sendRedirect(request.getContextPath() + "/LeerServlet");
			
		} catch (Exception e) {
			e.printStackTrace();

			response.getWriter().println("Error al guardar la reserva: " + e.getMessage());
		}
	}
}