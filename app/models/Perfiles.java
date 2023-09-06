package models;

import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
public class Perfiles extends Model {

    public boolean Activo;
    public String Nombreperfil;
    public int Nivelacceso;
}
