package models;

import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
public class Accesos extends Model {

    public boolean activo;
    @OneToOne
    public Usuarios usuario;
    @OneToOne
    public Perfiles perfil;

    public static Boolean actdesactivar(Accesos acces, int activo) {
        Accesos acceso = Accesos.findById(acces.id);

        if (activo == 1) {

            acceso.activo = false;
            acceso.save();
            return true;
        } else {
            acceso.activo = true;
            acceso.save();
            return true;
        }
    }
}
