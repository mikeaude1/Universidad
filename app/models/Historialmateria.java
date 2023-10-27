package models;

import java.util.List;
import javax.persistence.*;
import play.db.jpa.Model;
import java.util.ArrayList;
import java.util.Date;

@Entity
public class Historialmateria extends Model {

    public Boolean activo;
    @OneToOne
    public Historialalumnos Historialalumno;
    @OneToOne
    public Materias Materia;

    public int Obtenercalificacion(int unidad) {

        Calificaciones calif = Calificaciones.find("Historialmateria.id=? AND Unidad=?", this, unidad).first();
        if (calif == null) {
            return 0;
        } else {
            return calif.Calificacion;
        }

    }

    public int Obtenercalifa(int a) {
        Historialmateria hm = Historialmateria.findById(this.id);
        Calificaciones calif = Calificaciones.find("Historialmateria.id=? AND Unidad=?", hm.id, a).first();
        if (calif == null) {
            return 0;
        } else {
            return calif.Calificacion;
        }
    }

    public double CalcularPromedio() {
        List<Calificaciones> calificaciones = Calificaciones.find("Historialmateria = ?", this).fetch();
        double total = 0.0;
        int count = 0;

        for (Calificaciones calificacion : calificaciones) {
            if (calificacion.Calificacion != 0) {
                total += calificacion.Calificacion;
                count++;
            }
        }

        return count > 0 ? total / 5 : 0.0;
    }

    public boolean obtenertipofalta(Date fecha) {

        try {
            Asistencias tipo = Asistencias.find("Historialmateria=? AND Fecha=?", this, fecha).first();
            return tipo.Tipodeasistencia.id == 3l;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean obtenerjustificacion(long hd, Date fecha) {
        try {
            Asistencias justi = Asistencias.find("Historialdocente=? AND Historialmateria=? AND Fecha=?", hd, this, fecha).first();

            return justi.Justificacion == true;
        } catch (Exception e) {
            return false;
        }
    }

    public List obtenerasistencias() {

        List<Asistencias> asis = Asistencias.find("Historialmateria=?", this).fetch();
        return asis;

    }

    public int Cantidadasistencias(int tipo) {
        List<Asistencias> asistencia = Asistencias.find("Historialmateria=?", this).fetch();
        int asistencias = 0;
        int faltas = 0;
        int retardos = 0;
        for (Asistencias asis : asistencia) {
            if (asis.Tipodeasistencia.Tipo.equals("Asistencia")) {
                asistencias++;
            }
            if (asis.Tipodeasistencia.Tipo.equals("Falta")) {
                faltas++;
            }
            if (asis.Tipodeasistencia.Tipo.equals("Retardo")) {
                retardos++;
            }
        }
        if (tipo == 1) {
            return (asistencias);
        }
        if (tipo == 2) {
            return (retardos);
        }
        if (tipo == 3) {
            return (faltas);
        }
        return 0;
    }
}
