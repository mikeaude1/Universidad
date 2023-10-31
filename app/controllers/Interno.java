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
        List<Accesos> acceso = Accesos.find("usuario.id=?  AND Activo=? order By perfil", usua.id,1).fetch();
        render(acceso, usua);
    }
@Before
     static void checkAuth1() {
        try {
            String idusuario = session.get("idusuario");
            long idusuarios = Long.parseLong(idusuario);
            Usuarios usuario = Usuarios.findById(idusuarios);

        
                Accesos acceso = Accesos.find("usuario.id=?  AND activo=?", usuario.id,true).first();

                if (acceso == null) {
                    flash.error("Debes iniciar sesión para acceder a esta página.");
                    redirect("/Externo/Login");
                }
            } catch (Exception e) {
                flash.error("Ocurrió un error al verificar la autenticación.");
                redirect("/Externo/Login");
            }
       
        }
    static void checkAuth() {
        try {
            String idusuario = session.get("idusuario");
            long idusuarios = Long.parseLong(idusuario);
            Usuarios usuario = Usuarios.findById(idusuarios);

        
                Accesos acceso = Accesos.find("usuario.id=? AND perfil.Nivelacceso=? AND activo=?", usuario.id, 4,true).first();

                if (acceso == null) {
                    flash.error("Debes iniciar sesión para acceder a esta página.");
                    redirect("/Externo/Login");
                }
            } catch (Exception e) {
                flash.error("Ocurrió un error al verificar la autenticación.");
                redirect("/Externo/Login");
            }
       
        }
    

    public static void Administrador(String usuario, String nombre, String apaterno, String amaterno, int nivel, long perfil, String password) {
        checkAuth();
        
        System.out.println("password = " + password);
        System.out.println("perfil = " + perfil);
        System.out.println("nivel = " + nivel);
        System.out.println("amaterno = " + amaterno);
        System.out.println("apaterno = " + apaterno);
        System.out.println("nombre = " + nombre);
        System.out.println("usuario = " + usuario);
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
            Perfiles perfile = Perfiles.findById(perfil);

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
            
            Perfiles perfile = Perfiles.findById(perfil);

            Accesos acceso = new Accesos();
            acceso.perfil = perfile;
            acceso.usuario = nuevousua;
            acceso.activo = true;
            acceso.save();

        }

        redirect("../../Interno/Listausuarios");
    }

    public static void Crearusuario() {
        checkAuth();
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

    public static String actualizardatos(String nombre, String apaterno, String amaterno, String usuarioS, String password, Long usuario) {
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
            return "success";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }

    }

    public static void Sidebar() {
        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        List<Perfiles> perfiles = new ArrayList<Perfiles>();
        List<Accesos> acceso = Accesos.find("usuario.id=? AND Activo=?", idusuarios,true).fetch();
        for (Accesos acc : acceso) {
            perfiles.add(acc.perfil);

        }
        
        List<Menus> menu = new ArrayList<Menus>();
        for (Perfiles per : perfiles) {
            List<Menus> menusPerfil = Menus.find("Perfil.id=? AND Activo=?", per.id,true).fetch();
            menu.addAll(menusPerfil);
        }
        
        render(menu,perfiles,acceso);
    }

    public static void Listausuarios() {
        checkAuth();
        List<Usuarios> allusers = Usuarios.find("Activo=?", true).fetch();
        List<Accesos> accesos = Accesos.find("Activo=?", true).fetch();
        render(allusers, accesos);
    }

    public static String activarDesactivarPerfil(Long usuario, Long perfil, int activo) {
        try {

            System.out.println("activo = " + activo);
            System.out.println("usuario = " + usuario);
            System.out.println("perfil = " + perfil);
            boolean resultado;
            Perfiles pe = Perfiles.findById(perfil);
            Usuarios usa = Usuarios.findById(usuario);
            Accesos acceso = Accesos.find("usuario.id=? AND perfil.id=? AND Activo=?", usuario, perfil,true).first();
            if (acceso == null) {
                Accesos acces = new Accesos();
                acces.perfil = pe;
                acces.usuario = usa;
                acces.activo = false;
                acces.save();
                resultado = acces.actdesactivar(acces, activo);
            } else {
                resultado = acceso.actdesactivar(acceso, activo);
            }
            System.out.println("todo bien");
            return "success";

        } catch (Exception e) {
            return "error" + e;
        }

    }
}
