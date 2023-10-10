package controllers;

import play.db.jpa.JPABase;
import javax.persistence.Query;
import play.mvc.Controller;

import play.mvc.With;
import java.util.*;
import models.*;
import models.Periodo;
import static play.db.jpa.GenericModel.findAll;
import play.mvc.Before;

public class Profesor extends Controller {

    @Before
    static void checkAuth() {

        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        Usuarios usuario = Usuarios.findById(idusuarios);
        try {
            Accesos acceso = Accesos.find("usuario.id=? AND perfil.Nivelacceso=?", usuario.id, 2).first();

            if (acceso == null) {
                flash.error("Debes iniciar sesión para acceder a esta página.");
                redirect("/Externo/Login");
            }
        } catch (Exception e) {
            flash.error("Ocurrió un error al verificar la autenticación.");
            redirect("/Externo/Login");
        }
    }

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
        Calificaciones calif = Calificaciones.find("Historialmateria.id=? AND Unidad=?", hmateria, unidad).first();

        if (calif != null) {

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

    public static void Asistencias() {

        List<Periodo> periodos = Periodo.findAll();

        render(periodos);
    }

    public static void Grupomateria(long periodos) {
        String idusuario = session.get("idusuario");
        long idusuarios = Long.parseLong(idusuario);
        Usuarios usuario = Usuarios.findById(idusuarios);

        System.out.println("usuario = " + usuario.Persona);
        System.out.println("periodo =" + periodos);
        List<Historialdocente> Hd = Historialdocente.find("persona=? AND grupo.periodo.id=?", usuario.Persona, periodos).fetch();

        render(usuario, Hd);
    }

    public static void Fecha(long hdocente) {

        render(hdocente);
    }

    public static void Tablaasistencia(long hdocente, Date fecha) {
        List<Tipodeasistencia> ta = Tipodeasistencia.findAll();
        Historialdocente Hd = Historialdocente.findById(hdocente);
        List<Historialmateria> Hm = Historialmateria.find("Materia.id=?", Hd.materia.id).fetch();
        System.out.println("fecha = " + fecha);
        render(ta, Hd, Hm, fecha);
    }

    public static String Asistenciaguardada(boolean just, long tipo, long hdocente, long Hm, Date fecha) {
        Historialdocente hd = Historialdocente.findById(hdocente);
        Historialmateria hm = Historialmateria.findById(Hm);
        Tipodeasistencia ta = Tipodeasistencia.findById(tipo);
         System.out.println("hd = " + hd);
            System.out.println("hm = " + hm);
            System.out.println("fecha = " + fecha);
            System.out.println("just = " + just);
            System.out.println("ta = " + ta);
        Asistencias asisten = Asistencias.find("Historialdocente=? AND Historialmateria=? AND Fecha=?", hd, hm, fecha).first();
        if (asisten == null) {
           
            Asistencias asis = new Asistencias();
            asis.Activo = true;
            asis.Fecha = fecha;
            asis.Historialdocente = hd;
            asis.Historialmateria = hm;
            asis.Justificacion = just;
            asis.Tipodeasistencia = ta;
            asis.save();
        } else {
            if (just == true) {
                Tipodeasistencia tipo1 = Tipodeasistencia.findById(1L);
                asisten.Tipodeasistencia = tipo1;
                asisten.Justificacion = just;
                asisten.save();
            } else {
                Tipodeasistencia tipo1 = Tipodeasistencia.findById(tipo);
                asisten.Tipodeasistencia = tipo1;
                asisten.Justificacion = just;
                asisten.save();
            }

        }

        return("se Guardo con exito");
    }
}
