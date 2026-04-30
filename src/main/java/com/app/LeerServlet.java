package com.app;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/LeerServlet")
public class LeerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Connection conexion = null;
        Statement declaracion = null;
        ResultSet resultados = null;

        try {
            // 1️⃣ Conexión a la base de datos
            conexion = ConexionBD.getConexion();
            System.out.println("✅ Conexión establecida correctamente.");

            // 2️⃣ Crear el statement
            declaracion = conexion.createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY
            );
            System.out.println("✅ Statement creado correctamente.");

            // 3️⃣ Consulta SQL
            String sql = "SELECT id, Nombre, Apellido, Telefono, Correo, Especialidad, Fecha, Horario " + "FROM reservas ORDER BY Fecha DESC, Horario ASC";
            System.out.println("📘 Ejecutando SQL: " + sql);

            // 4️⃣ Ejecutar la consulta
            resultados = declaracion.executeQuery(sql);
            System.out.println("✅ Consulta ejecutada. Leyendo resultados...");

            // 🔍 Mostrar en consola cada fila leída
            while (resultados.next()) {
                System.out.println("--------------------------------------");
                System.out.println("ID: " + resultados.getInt("id"));
                System.out.println("Nombre: " + resultados.getString("Nombre"));
                System.out.println("Apellido: " + resultados.getString("Apellido"));
                System.out.println("Telefono: " + resultados.getString("Telefono"));
                System.out.println("Correo: " + resultados.getString("Correo"));
                System.out.println("Especialidad: " + resultados.getString("Especialidad"));
                System.out.println("Fecha: " + resultados.getString("Fecha"));
                System.out.println("Horario: " + resultados.getString("Horario"));
            }

            // ⚠️ Mover el cursor al inicio para que el JSP pueda recorrer el ResultSet
            resultados.beforeFirst();

            // 5️⃣ Guardar el resultado como atributo de la request
            request.setAttribute("conjuntoResultados", resultados);

            // 6️⃣ Redirigir a la vista JSP
            System.out.println("➡️ Redirigiendo a vistas/VerReserva.jsp");
            request.getRequestDispatcher("vistas/VerReserva.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error al leer las reservas: " + e.getMessage());
            System.err.println("❌ Error SQL: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("❌ Error general: " + e.getMessage());
        }
    }
}
