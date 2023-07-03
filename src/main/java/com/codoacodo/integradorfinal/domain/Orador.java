package com.codoacodo.integradorfinal.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Facundo
 */
public class Orador implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private Long id;
    private String nombre;
    private String apellido;
    private String descripcion;
    private Date fechaDeAlta;

    
    public Orador() { }

    public Orador(String nombre, String apellido, String descripcion, Date fechaDeAlta) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.descripcion = descripcion;
        this.fechaDeAlta = fechaDeAlta;
    }

    public Orador(Long id, String nombre, String apellido, String descripcion, Date fechaDeAlta) {
        this(nombre, apellido, descripcion, fechaDeAlta);
        this.id = id;
    }
    
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFechaDeAlta() {
        return fechaDeAlta;
    }

    public void setFechaDeAlta(Date fechaDeAlta) {
        this.fechaDeAlta = fechaDeAlta;
    }

    
    @Override
    public String toString() {
        return "Orador{" + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", descripcion=" + descripcion + ", fechaDeAlta=" + fechaDeAlta + '}';
    }

    
}
