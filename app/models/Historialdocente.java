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

}
