package models;

import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
public class Accesos extends Model {

    @OneToOne
    public Usuarios usuario;
    @OneToOne
    public Perfiles perfil;
}
