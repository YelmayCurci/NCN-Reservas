package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditarServlet")
public class EditarServlet extends HttpServlet {	

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        try {
            Connection conexion = ConexionBD.getConexion();

            String sql = "SELECT * FROM reservas WHERE id=" + id;
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                request.setAttribute("reserva", rs);
            }

            request.getRequestDispatcher("vistas/EditarReserva.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}