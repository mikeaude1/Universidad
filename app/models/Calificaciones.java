package models;

import java.util.List;
import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
public class Calificaciones extends Model {

    public Boolean activo;
    @OneToOne
    public Historialmateria Historialmateria;
    public int Calificacion;

    public String toString() {
        return String.valueOf(Calificacion);
    }
}
