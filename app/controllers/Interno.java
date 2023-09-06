package controllers;

import play.*;
import play.mvc.*;

import java.util.*;

import models.*;

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
            Accesos acceso = Accesos.find("usuario.id=? ", usuario.id).first();

            if (acceso == null) {
                flash.error("Debes iniciar sesión para acceder a esta página.");
                redirect("/Externo/Login");
            }
        } catch (Exception e) {
            flash.error("Ocurrió un error al verificar la autenticación.");
            redirect("/Externo/Login");
        }
    }

    public static void Administrador() {
        try {
            String idusuario = session.get("idusuario");
            Usuarios usuario = Usuarios.findById(idusuario);
            Accesos acceso = Accesos.find("usuario.id=? ", usuario.id, 3).first();
            Accesos accesos = Accesos.find("usuario.id=? ", usuario.id, 4).first();
            if (acceso == null || accesos == null) {
                flash.error("Debes acceder Como Administrador.");
                redirect("/Externo/Login");
            }
        } catch (Exception e) {
            flash.error("Ocurrió un error al verificar la autenticación.");
            redirect("/Externo/Login");
        }
        render();
    }

    public static void Crearusuario() {
        try {
            String idusuario = session.get("idusuario");
            Usuarios usuario = Usuarios.findById(idusuario);
            Accesos acceso = Accesos.find("usuario.id=? ", usuario.id, 3).first();
            Accesos accesos = Accesos.find("usuario.id=? ", usuario.id, 4).first();
            if (acceso == null || accesos == null) {
                flash.error("Debes acceder Como Administrador.");
                redirect("/Externo/Login");
            }
        } catch (Exception e) {
            flash.error("Ocurrió un error al verificar la autenticación.");
            redirect("/Externo/Login");
            render();
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

}
