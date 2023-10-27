package controllers;

import play.db.jpa.JPABase;
import javax.persistence.Query;
import play.mvc.Controller;
import play.db.jpa.Model;
import play.mvc.With;
import java.util.*;
import models.*;
import models.Periodo;
import static play.db.jpa.GenericModel.findAll;
import play.mvc.Before;
    import models.Alumnos;
import models.Personas;
import models.Historialalumnos;
import models.Carreras;


public class Alumnado extends Controller{

    @Before
    static void checkAuth() {
try {
        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        Usuarios usuario = Usuarios.findById(idusuarios);
       
            Accesos acceso = Accesos.find("usuario.id=? AND perfil.Nivelacceso=? AND activo=?", usuario.id, 3,true).first();
  
            if (acceso == null) {
                flash.error("Debes iniciar sesión para acceder a esta página.");
                redirect("/Externo/Login");
            }
        } catch (Exception e) {
            flash.error("Ocurrió un error al verificar la autenticación.");
            redirect("/Externo/Login");
        }
    }

      public static void Expedientealumno() {
          String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        Usuarios usuario = Usuarios.findById(idusuarios);
       Personas p = Personas.findById(usuario.Persona.id);
           
         Alumnos persona = Alumnos.find("Persona.id=?",p.id).first();
        
        Historialalumnos alumnos = Historialalumnos.find("alumno.id=? order By id Desc", p.id).first();
        System.out.println(alumnos + "sisoyama");
        Historialalumnos Materia = Historialalumnos.find("alumno.id=? ", p.id).first();
        System.out.println(Materia);
        List<Carreras> carrera = Carreras.findAll();
        List<Historialalumnos> halumnos = Historialalumnos.find("alumno.id=? AND Activo=?", p.id,true).fetch();
        

        List<Historialmateria> hmig = Historialmateria.find("Historialalumno.alumno.Persona=?", usuario.Persona).fetch();
       
     
        render(persona, alumnos, Materia, carrera, halumnos, p.id, hmig);
    }
    
}
