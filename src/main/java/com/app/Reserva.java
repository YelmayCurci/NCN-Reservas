package com.app;

public class Reserva {
 private int id;
 private String nombre;
 private String curso;
 private String fecha;
 private String horaEntrada;
 private String horaSalida;
 private String laboratorio;

 // Getters y Setters
 public int getId() { return id; }
 public void setId(int id) { this.id = id; }

 public String getNombre() { return nombre; }
 public void setNombre(String nombre) { this.nombre = nombre; }

 public String getCurso() { return curso; }
 public void setCurso(String curso) { this.curso = curso; }

 public String getFecha() { return fecha; }
 public void setFecha(String fecha) { this.fecha = fecha; }

 public String getHoraEntrada() { return horaEntrada; }
 public void setHoraEntrada(String horaEntrada) { this.horaEntrada = horaEntrada; }

 public String getHoraSalida() { return horaSalida; }
 public void setHoraSalida(String horaSalida) { this.horaSalida = horaSalida; }

 public String getLaboratorio() { return laboratorio; }
 public void setLaboratorio(String laboratorio) { this.laboratorio = laboratorio; }
}