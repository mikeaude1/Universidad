package models;
import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
    public class Turnos extends Model{
    public Boolean Activo;
    public String Nombre;
  
}
