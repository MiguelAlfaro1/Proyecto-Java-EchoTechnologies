/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sistemaadmin.entidades;

import java.util.ArrayList;

/**
 *
 * @author migue
 */
public class Rol {
    private int id;
    private String nombre;
    private int top_aux;
    private ArrayList<Usuario> usuario;

    public Rol() {
    }

    public Rol(int id, String nombre, int top_aux, ArrayList<Usuario> usuario) {
        this.id = id;
        this.nombre = nombre;
        this.top_aux = top_aux;
        this.usuario = usuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTop_aux() {
        return top_aux;
    }

    public void setTop_aux(int top_aux) {
        this.top_aux = top_aux;
    }

    public ArrayList<Usuario> getUsuario() {
        return usuario;
    }

    public void setUsuario(ArrayList<Usuario> usuario) {
        this.usuario = usuario;
    }
}
