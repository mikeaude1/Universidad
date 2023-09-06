package models;

import javax.persistence.*;
import play.db.jpa.Model;
import play.libs.Crypto;

/**
 *
 * @author maude
 */
@Entity
public class Usuarios extends Model {

    public boolean Activo;
    @OneToOne
    public Personas Persona;
    public String Nombreusuario;
    private String Contraseña;

    public void setContraseña(String contraseña) {
        // Genera un hash utilizando la contraseña y una sal
        String salt = Crypto.passwordHash(contraseña);
        this.Contraseña = salt;
    }

    public boolean validarContraseña(String contraseña) {
        // Verifica si la contraseña proporcionada coincide con el hash almacenado
        return this.Contraseña.equals(Crypto.passwordHash(contraseña));
    }
}
