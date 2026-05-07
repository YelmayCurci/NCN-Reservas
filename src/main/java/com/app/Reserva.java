package com.app;

public class Reserva {
 private int id;
 private String Nombre;
 private String Apellido;
 private String Telefono;
 private String Correo;
 private String Especialidad;
 private String Fecha;
 private String Horario;
 
 // Getters y Setters
 public int getId() { return id; }
 public void setId(int id) { this.id = id; }

 public String getNombre() { return Nombre; }
 public void setNombre(String Nombre) { this.Nombre = Nombre; }

 public String getApellido() { return Apellido; }
 public void setApellido(String Apellido) { this.Apellido = Apellido; }

 public String getTelefono() { return Telefono; }
 public void setTelefono(String Telefono) { this.Telefono = Telefono; }

 public String getCorreo() { return Correo; }
 public void setCorreo(String Correo) { this.Correo = Correo; }

 public String getEspecialidad() { return Especialidad; }
 public void setEspecialidad(String Especialidad) { this.Especialidad = Especialidad; }

 public String getFecha() { return Fecha; }
 public void setFecha(String Fecha) { this.Fecha = Fecha; }
 
 public String getHorario() { return Horario; }
 public void setHorario(String Horario) { this.Horario = Horario; }
}