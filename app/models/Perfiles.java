package models;

import java.util.ArrayList;
import java.util.List;
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

    public Boolean Traerperfil(Long usuario) throws Exception {
        Usuarios usua = Usuarios.findById(usuario);

        Accesos acceso = Accesos.find("usuario.id = ? AND perfil=? AND activo = ?", usua.id, this, true).first();
        return acceso != null;

    }

}
