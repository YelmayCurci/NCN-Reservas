package com.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//ncn reservas
public class ConexionBD {

	private static final String URL = "jdbc:mysql://localhost:3306/reservas"; // nombre de la base
	private static final String USUARIO = "root"; // usuario de MySQL
	private static final String CLAVE = "";
	private static Connection conexion = null;

	public static Connection getConexion() {
		if (conexion == null) {

			try {

				Class.forName("com.mysql.cj.jdbc.Driver");

				conexion = DriverManager.getConnection(URL, USUARIO, CLAVE);
				System.out.println(" Conexión exitosa a la base de datos");

			} catch (ClassNotFoundException e) {
				System.out.println(" Error: no se encontró el driver de MySQL");
				e.printStackTrace();

			} catch (SQLException e) {
				System.out.println(" Error al conectar a la base de datos");
				e.printStackTrace();
			}
		}
		return conexion;
	}

	public static void cerrarConexion() {

		try {

			if (conexion != null && !conexion.isClosed()) {

				conexion.close();

				System.out.println(" Conexión cerrada correctamente");
			}
		} catch (SQLException e) {

			System.out.println(" Error al cerrar la conexión");

			e.printStackTrace();
		}
	}
}