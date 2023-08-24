package controllers;

import play.mvc.Controller;

import play.mvc.With;
import java.util.*;
import models.*;
import models.Periodo;

public class Profesor extends Controller {

    public static void index() {
        render();
    }

    public static void Sidebar() {
        render();
    }

    public static void Calificaciones() {
        List<Periodo> periodos = Periodo.findAll();
        render(periodos);
    }

    public static void Obtenermateria(long periodo) {

        Historialmateria hmaterial = Historialmateria.find("Historialalumno.grupo.periodo.id=?", periodo).first();
        List<Historialdocente> historiald = Historialdocente.find("grupo.id=?", hmaterial.Historialalumno.grupo.id).fetch();

        render(historiald, periodo, hmaterial);

    }

    public static void Tablacalificaciones(long hdocente, long periodo, Historialmateria hmaterial) {
        System.out.println(periodo);
        System.out.println(hdocente);
        Historialdocente hdoc = Historialdocente.findById(hdocente);
        System.out.println(hdoc);
        List<Historialmateria> hmateria = Historialmateria.find("Historialalumno.Periodo.id=? AND Historialalumno.grupo.id=? AND Materia.id=?", periodo, hdoc.grupo.id, hdoc.materia.id).fetch();
        System.out.println(hmateria);
        render(hmateria);

    }

    public static int nuevacalificacion(long calificacion, long hmateria, int input) {
        System.out.println(calificacion);
        System.out.println(hmateria);
        Historialmateria hmater = Historialmateria.findById(hmateria);
        Calificaciones calif = Calificaciones.findById(calificacion);

        calif.id = calificacion;
        calif.Calificacion = input;
        calif.activo = true;
        calif.Historialmateria = hmater;
        calif.save();
        return calif.Calificacion;

    }
}
