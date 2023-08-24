package models;

import java.util.List;
import javax.persistence.*;
import play.db.jpa.Model;
import java.util.ArrayList;

@Entity
public class Historialmateria extends Model {

    public Boolean activo;
    @OneToOne
    public Historialalumnos Historialalumno;
    @OneToOne
    public Materias Materia;

    public String[] Obtenercalificacion() {
        List<Calificaciones> historial = Calificaciones.find("Historialmateria=?", this).fetch();
        String[] tabla = new String[5];
        for (int i = 0; i < 5; i++) {
            if (i < historial.size()) {
                Calificaciones calificacion = historial.get(i);
                tabla[i] = calificacion != null ? calificacion.toString() : "x";
            } else {
                tabla[i] = "x";
            }
        }
        return tabla;
    }

    public List Obtenercalifa() {
        List<Calificaciones> calificacion = Calificaciones.find("Historialmateria.id=?", this.id).fetch();

        return calificacion;
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

}
