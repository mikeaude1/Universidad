package models;

import java.util.List;
import javax.persistence.*;
import play.db.jpa.Model;
import java.util.ArrayList;

/**
 *
 * @author maude
 */
@Entity
public class Historialdocente extends Model {

    public Boolean activo;
    @OneToOne
    public Materias materia;
    @OneToOne
    public Grupos grupo;
    @OneToOne
    public Personas persona;

    public Boolean tienehm() {
        Historialmateria hmateria = hmateria = Historialmateria.find("Historialalumno.grupo=? And Materia=? AND Historialalumno.grupo.periodo=?", this.grupo, this.materia, this.grupo.periodo).first();

        if (hmateria != null) {

            return true;
        } else {

            return false;
        }

    }

}
