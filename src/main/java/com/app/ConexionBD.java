package com.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//ncn reservas
public class ConexionBD {

    private static final String URL = "jdbc:mysql://localhost:3306/reservas";
    private static final String USUARIO = "root";
    private static final String CLAVE = "";

    public static Connection getConexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conexion = DriverManager.getConnection(URL, USUARIO, CLAVE);

            System.out.println("✅ Conexión nueva creada");
            return conexion;

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error al conectar a la BD");
        }
    }
}