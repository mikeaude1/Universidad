package models;

import javax.persistence.*;
import play.db.jpa.Model;
import java.util.*;

/**
 *
 * @author maude
 */
@Entity
public class Asistencias extends Model {

    public Boolean Activo;

    @OneToOne
    public Historialmateria Historialmateria;
    @OneToOne
    public Historialdocente Historialdocente;
    @OneToOne
    public Tipodeasistencia Tipodeasistencia;
    public Date Fecha;
    public Boolean Justificacion;

  

}
