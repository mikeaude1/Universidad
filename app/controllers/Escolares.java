package controllers;

import play.db.jpa.JPABase;
import javax.persistence.Query;
import play.mvc.Controller;
import models.Alumnos;
import play.mvc.With;
import java.util.*;
import models.*;
import models.Periodo;
import static play.db.jpa.GenericModel.findAll;
import play.mvc.Before;
public class Escolares extends Controller {

    @Before
    static void checkAuth() {
  try {
        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        Usuarios usuario = Usuarios.findById(idusuarios);
      
            Accesos acceso = Accesos.find("usuario.id=? AND perfil.Nivelacceso=? AND activo=?", usuario.id, 1,true).first();

            if (acceso == null) {
                flash.error("Debes iniciar sesión para acceder a esta página.");
                redirect("/Externo/Login");
            }
        } catch (Exception e) {
            flash.error("Ocurrió un error al verificar la autenticación.");
            redirect("/Externo/Login");
        }
    }

    public static void Registroaspirantes() {
        List<Carreras> carrera = Carreras.findAll();
        render(carrera);
    }

    public static void Asistencias() {
        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        Usuarios usuario = Usuarios.findById(idusuarios);

        List<Historialmateria> hm = Historialmateria.find("Historialalumno.alumno.Persona=?", usuario.Persona).fetch();
       
      

        render(hm);
    }

    public static void Guardaraspirantes(String Nombre, String Apaterno, String Amaterno, String folio, Long carrera) {
        Carreras carrera1 = Carreras.findById(carrera);
        Personas persona1 = new Personas();
        persona1.Nombre = Nombre;
        persona1.ApellidoPaterno = Apaterno;
        persona1.ApellidoMaterno = Amaterno;
        persona1.Activo = true;
        persona1.save();
        Registroaspirantes aspirante = new Registroaspirantes();
        aspirante.persona = persona1;
        aspirante.carrera = carrera1;
        aspirante.folio = folio;
        aspirante.save();

        render(aspirante, persona1);
    }

    public static void Inscribiralumno() {
        List<Carreras> carrera = Carreras.findAll();
        render(carrera);
    }

    public static void Tablaaspirantes(Long idcarrera) {
        System.out.println(idcarrera);
        List<Registroaspirantes> tablaaspirante = Registroaspirantes.find("carrera.id = ?", idcarrera).fetch();
        render(tablaaspirante, idcarrera);
    }

    public static void Mandarinscripcion(Long aspirante, Long idcarrera) {
        //Registroaspirates aspirante = Registroaspirante.find("aspirante.id=?", aspirantes
        List<Periodo> gperiodo = Periodo.findAll();

        render(aspirante, gperiodo, idcarrera);
    }

    public static void grupoperiodo(Long periodo, Long idcarrera, Long aspirante) {
        System.out.println(periodo);
        System.out.println(idcarrera);
        System.out.println(aspirante);
        List<Grupos> grupo = Grupos.find("periodo.id=? AND Carrera.id=?", periodo, idcarrera).fetch();

        render(grupo, periodo, aspirante);
    }

    public static void gruporeinscripcion(Long periodo, Long idcarrera, Long p) {
        System.out.println(p);
        List<Grupos> grupo = Grupos.find("periodo.id=? AND Carrera.id=?", periodo, idcarrera).fetch();

        render(grupo, periodo, p);
    }

    public static void Generarreinscripcion(Long grupo, long p, Long periodo) {
        System.out.println(p);
        Grupos group = Grupos.findById(grupo);
        Periodo perio = Periodo.findById(periodo);
        Alumnos alum = Alumnos.findById(p);
        Historialalumnos historiala = new Historialalumnos();
        historiala.Periodo = perio;
        historiala.activo = true;
        historiala.alumno = alum;
        historiala.grupo = group;
        historiala.save();
        render(historiala);
    }

    public static void Generarinscripcion(Long grupo, Long aspirante) {
        Alumnos matricula = Alumnos.find("1=1 order By id Desc").first();

        Registroaspirantes aspirant = Registroaspirantes.findById(aspirante);
        Alumnos alumno = new Alumnos();
        alumno.activo = true;
        alumno.matricula = matricula.matricula;
        alumno.Persona = aspirant.persona;
        alumno.save();
        Grupos grup = Grupos.findById(grupo);
        List< Planestudiomaterias> plane = Planestudiomaterias.find("planestudio= ? AND grado =?", grup.Plan, grup.grado).fetch();
        Historialalumnos historiala = new Historialalumnos();
        historiala.Periodo = grup.periodo;
        historiala.activo = true;
        historiala.alumno = alumno;
        historiala.grupo = grup;
        historiala.save();

        for (Planestudiomaterias plan : plane) {
            Historialmateria historialm = new Historialmateria();
            historialm.Historialalumno = historiala;
            historialm.activo = true;
            historialm.Materia = plan.Materia;

            historialm.save();
        }
        render(historiala);
    }

    public static void Buscaralumno() {
        render();
    }

    public static void Expediente(Long p) {
        Alumnos persona = Alumnos.findById(p);
        System.out.println(p);
        Historialalumnos alumnos = Historialalumnos.find("alumno.id=? order By id Desc", p).first();
        System.out.println(alumnos + "sisoyama");
        Historialalumnos Materia = Historialalumnos.find("alumno.id=? ", p).first();
        System.out.println(Materia);
        List<Carreras> carrera = Carreras.findAll();
        List<Historialalumnos> halumnos = Historialalumnos.find("alumno.id=? AND activo = true", p).fetch();
        //List<Calificaciones> calificacion = Calificaciones.find("Historialmateria.Historialalumno.id=?", alumnos.id).fetch();
        // System.out.println(calificacion + "sisoy");
         
        List<Historialmateria> hmig = Historialmateria.find("Historialalumno.alumno=?", persona).fetch();
       
     
        render(persona, alumnos, Materia, carrera, halumnos, p, hmig);
    }

    public static void borrarhalumno(Long halum) {
        System.out.println(halum);
        Historialalumnos inscripcion = Historialalumnos.find("id=? ", halum).first();
        inscripcion.activo = false;
        inscripcion.save();
        render(halum);
    }

    public static void Periodo(Long idcarrera, Long p) {
        List<Periodo> periodo = Periodo.findAll();
        render(idcarrera, periodo, p);
    }

    public static void Tablabusqueda(String matricula, String nombre, String apaterno, String amaterno) {
        List< Alumnado> persona;

        if (matricula.equals("")) {

            persona = Alumnos.find("Persona.Nombre like ? AND Persona.ApellidoPaterno like ? AND Persona.ApellidoMaterno like ?", String.format("%%%s%%", nombre), String.format("%%%s%%", apaterno), String.format("%%%s%%", amaterno)).fetch();

        } else {
            persona = Alumnos.find("matricula= ?", matricula).fetch();

        }

        render(persona);

    }
}
