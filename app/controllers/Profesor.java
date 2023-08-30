package controllers;

import play.mvc.Controller;

import play.mvc.With;
import java.util.*;
import models.*;
import models.Periodo;
import static play.db.jpa.GenericModel.findAll;

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
        List<Historialdocente> hdocente = new ArrayList<Historialdocente>();
        List<Historialdocente> historiald = Historialdocente.find("grupo.periodo.id=?", periodo).fetch();
        for (Historialdocente hd : historiald) {
            if (hd.tienehm()) {
                hdocente.add(hd);
            }
        }
        render(hdocente, periodo);

    }

    public static void Tablacalificaciones(long hdocente, long periodo) {
        System.out.println(hdocente);
        Historialdocente hd = Historialdocente.findById(hdocente);
        List<Historialmateria> hmateria = Historialmateria.find(" Historialalumno.grupo.id=? AND Materia.id=?", hd.grupo.id, hd.materia.id).fetch();

        System.out.println(hmateria);

        render(hmateria);

    }

    public static int nuevacalificacion(int unidad, int calificacion, long hmateria, int auxiliar) {
        System.out.println(calificacion);
        System.out.println(hmateria);
        System.out.println(unidad);
        System.out.println(auxiliar);
        System.out.println(auxiliar);
        System.out.println(auxiliar);
        Historialmateria historialMateria = Historialmateria.findById(hmateria);
        Calificaciones calif = Calificaciones.find("Historialmateria.id=?", hmateria).first();

        if (auxiliar != 0) {

            calif.activo = true;
            calif.Calificacion = calificacion;
            calif.Historialmateria = historialMateria;
            calif.Unidad = unidad;
            calif.save();
            auxiliar = calificacion;
            return calif.Calificacion;

        } else {
            Calificaciones califica = new Calificaciones();
            califica.activo = true;
            califica.Calificacion = calificacion;
            califica.Historialmateria = historialMateria;
            califica.Unidad = unidad;
            califica.save();
            auxiliar = calificacion;
            return califica.Calificacion;
        }
    }
}
