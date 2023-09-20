package controllers;

import play.*;
import play.mvc.*;

import java.util.*;

import models.*;
import play.libs.Codec;

/**
 *
 * @author maude
 */
public class Interno extends Controller {

    public static void Perfilusuario() {
        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        Usuarios usua = Usuarios.findById(idusuarios);
        List<Accesos> acceso = Accesos.find("usuario.id=?", usua.id).fetch();
        render(acceso, usua);
    }

    @Before
    static void checkAuth() {

        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        Usuarios usuario = Usuarios.findById(idusuarios);
        try {
            Accesos acceso = Accesos.find("usuario.id=?", usuario.id).first();

            if (acceso == null) {
                flash.error("Debes iniciar sesión para acceder a esta página.");
                redirect("/Externo/Login");
            }
        } catch (Exception e) {
            flash.error("Ocurrió un error al verificar la autenticación.");
            redirect("/Externo/Login");
        }
    }

    public static void Administrador(String usuario, String nombre, String apaterno, String amaterno, int nivel, String password) {
        Personas perso = Personas.find("Nombre=? AND ApellidoPaterno=? AND ApellidoMaterno=?", nombre, apaterno, amaterno).first();
        if (perso == null) {
            Personas person = new Personas();
            person.Activo = true;
            person.Nombre = nombre;
            person.ApellidoMaterno = amaterno;
            person.ApellidoPaterno = apaterno;
            person.save();

            Usuarios nuevousua = new Usuarios();
            nuevousua.Activo = true;
            nuevousua.Nombreusuario = usuario;
            nuevousua.Persona = person;
            nuevousua.Contraseña = Codec.hexMD5(password);
            nuevousua.save();
            Perfiles perfile = Perfiles.find("Nivelacceso=?", nivel).first();

            Accesos acceso = new Accesos();
            acceso.perfil = perfile;
            acceso.usuario = nuevousua;
            acceso.activo = true;
            acceso.save();
        } else {
            Usuarios nuevousua = new Usuarios();
            nuevousua.Activo = true;
            nuevousua.Nombreusuario = usuario;
            nuevousua.Persona = perso;
            nuevousua.save();
            Perfiles perfile = Perfiles.find("Niveldeacceso=?", nivel).first();

            Accesos acceso = new Accesos();
            acceso.perfil.id = perfile.id;
            acceso.usuario = nuevousua;
            acceso.activo = true;
            acceso.save();

        }

        redirect("Interno/Listausuarios");
    }

    public static void Crearusuario() {
        List<Perfiles> perfil = Perfiles.findAll();

        render(perfil);
    }

    public static String Eliminar(Long usuario) {
        try {
            Usuarios us = Usuarios.findById(usuario);
            us.Activo = false;
            us.save();
            return "success";
        } catch (Exception e) {
            return "Error" + e;
        }
    }

    public static void Editar(Long usuario) {
        try {
            List<Perfiles> allperfiles = Perfiles.findAll();
            List<Accesos> perfilus = Accesos.find("usuario.id=?", usuario).fetch();
            Usuarios usua = Usuarios.findById(usuario);

            render(allperfiles, perfilus, usua);

        } catch (Exception e) {
            renderJSON("{\"error\": \"Error: " + e.getMessage() + "\"}");
        }
    }

    public static void actualizardatos(String nombre, String apaterno, String amaterno, String usuarioS, String password, Long usuario) {
        try {
            Usuarios usua = Usuarios.findById(usuario);
            usua.Persona.Activo = true;
            usua.Persona.Nombre = nombre;
            usua.Persona.ApellidoPaterno = apaterno;
            usua.Persona.ApellidoMaterno = amaterno;
            usua.Persona.save();
            usua.Activo = true;
            usua.Nombreusuario = usuarioS;
            usua.Contraseña = password;
            usua.save();
        } catch (Exception e) {
            renderJSON("Error:" + e.getMessage());
        }

    }

    public static void Sidebar() {
        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        List<Perfiles> perfil = new ArrayList<Perfiles>();
        List<Accesos> acceso = Accesos.find("usuario.id=?", idusuarios).fetch();
        for (Accesos acc : acceso) {
            perfil.add(acc.perfil);
        }
        List<Menus> menu = new ArrayList<Menus>();
        for (Perfiles per : perfil) {
            List<Menus> menusPerfil = Menus.find("Perfil.id=?", per.id).fetch();
            menu.addAll(menusPerfil);
        }
        render(menu);
    }

    public static void Listausuarios() {
        List<Usuarios> allusers = Usuarios.find("Activo=?", true).fetch();
        List<Accesos> accesos = Accesos.find("Activo=?", true).fetch();

        render(allusers, accesos);
    }

    public static void activarDesactivarPerfil(Long usuario, Long perfil, int activo) {
        System.out.println("activo = " + activo);
        System.out.println("usuario = " + usuario);
        System.out.println("perfil = " + perfil);
        Perfiles perfile = Perfiles.findById(perfil);

        boolean resultado = perfile.actdesactivar(usuario, perfil, activo);

        renderText("Perfil activado/desactivado con éxito." + resultado);

    }
}
