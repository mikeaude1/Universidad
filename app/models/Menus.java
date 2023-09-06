package models;

import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
public class Menus extends Model {

    public boolean Activo;
    @OneToOne
    public Perfiles Perfil;

    public String Elmento;
    public String Ruta;
    public String Icono;
}
