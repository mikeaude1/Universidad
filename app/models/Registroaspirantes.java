package models;

import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
public class Registroaspirantes extends Model {

    public String folio;
    @OneToOne
    public Carreras carrera;
    @OneToOne
    public Personas persona;

}
