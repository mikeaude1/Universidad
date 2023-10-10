package models;
import javax.persistence.*;
import play.db.jpa.Model;

@Entity
public class Planestudio extends Model{
     public String Nombre;
     public int Vigente;
     public boolean Activo;
}
