package models;

import java.util.List;
import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
public class Historialalumnos extends Model {

    public Boolean activo;
    @OneToOne
    public Grupos grupo;
    @OneToOne
    public Alumnos alumno;
    @OneToOne
    public Periodo Periodo;

    public String CabeceraCalificaciones() {
        return this.Periodo.Nombre + " " + this.grupo.Nombre + " " + this.grupo.grado.Nombre;
    }

    public List<Historialmateria> ObtenerHistorialesMateria() {
        List<Historialmateria> historiales = Historialmateria.find("Historialalumno=? and activo= ?", this, true).fetch();
        return historiales;

    }

}
