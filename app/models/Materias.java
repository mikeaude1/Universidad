package models;

import java.util.List;
import javax.persistence.*;
import play.db.jpa.Model;
import java.util.ArrayList;

@Entity
public class Materias extends Model {

    public boolean Activo;
    public String Nombre;

}
