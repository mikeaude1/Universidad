package controllers;

import play.mvc.Controller;

import play.mvc.With;
import java.util.*;

import models.*;
import models.Periodo;
import play.libs.Codec;

/**
 *
 * @author maude
 */
public class Externo extends Controller {

    public static void Login(String mensaje) {
        session.clear();
        render(mensaje);
    }

    public static void Principal(String usuario, String password) {
        Usuarios usua = Usuarios.find("Nombreusuario=? AND Contraseña=? AND Activo=?", usuario, password, true).first();
        System.out.println(usua);
        if (usua != null) {
            usua.setContraseña(password);
            session.put("idusuario", usua.id);
            redirect("/Interno/Perfilusuario");
        } else {

            Login("Usuario o contraseña incorrectos");
        }
    }
}
