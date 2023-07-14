package controllers;

import play.*;
import play.mvc.*;

import java.util.*;

import models.*;

public class Application extends Controller {

    public static void index() {
        render();
    }

    public static void Registroaspirantes() {
        List<Carreras> carrera = Carreras.findAll();
        render(carrera);
    }

    public static void Sidebar() {
        render();
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

    public static void Tablaaspirantes(long idcarrera) {
        System.out.println(idcarrera);
        List<Registroaspirantes> tablaaspirante = Registroaspirantes.find("carrera.id = ?", idcarrera).fetch();
        render(tablaaspirante, idcarrera);
    }

    public static void Mandarinscripcion(Long aspirante, Long idcarrera) {

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
}
