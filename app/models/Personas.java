package models;
import javax.persistence.*;
import play.db.jpa.Model;
/**
 *
 * @author maude
 */
@Entity
public class Personas extends Model {

    public static Personas finById(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public String Nombre;
    public String ApellidoPaterno;
    public String ApellidoMaterno;
    public Boolean Activo = true;
}