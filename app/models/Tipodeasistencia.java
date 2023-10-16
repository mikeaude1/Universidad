package models;

import java.util.Date;
import javax.persistence.*;
import play.db.jpa.Model;

/**
 *
 * @author maude
 */
@Entity
public class Tipodeasistencia extends Model {

    public Boolean Activo;
    public String Tipo;
    
    
    public boolean obtenertipo(long hd,long hm,Date fecha) {
        try {
             Asistencias tipo = Asistencias.find("Historialdocente.id=? AND Historialmateria.id=? AND Fecha=?", hd, hm, fecha).first();
            return this.id == tipo.Tipodeasistencia.id;
        } catch (Exception e) {
            return false;
        }
    }
    
    
     
}
