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
        /*
        List<Perfiles> perfilesFiltrados = new ArrayList<Perfiles>();
        List<Perfiles> per = Perfiles.findAll();
        for (Accesos acc : acceso) {

            perfilesFiltrados.add(acc.perfil);

        }
        if (estado == false) {

            for (Perfiles perf : per) {
                try {
                    Accesos access = Accesos.find("usuario.id = ? AND perfil=?", usua.id, perf).first();
                    if (access != null) {
                        access.activo = false;
                    }
                } catch (Exception e) {
                    Accesos acces = new Accesos();
                    acces.activo = false;
                    acces.perfil = perf;
                    acces.usuario.id = usua.id;
                    acces.save();
                    perfilesFiltrados.add(acces.perfil);
                }
            }

        }
        return perfilesFiltrados;*/
    }

    public static Boolean actdesactivar(Long usuario, Long perfil, int activo) {
        System.out.println("activo = " + activo);
        System.out.println("usuario a= " + usuario);
        System.out.println("perfil = " + perfil);

        try {
            Perfiles pe = Perfiles.findById(perfil);
            Usuarios usua = Usuarios.findById(usuario);
            Accesos acceso = Accesos.find("usuario.id=? AND perfil.id=?", usuario, perfil).first();

            if (activo == 1) {

                acceso.activo = false;
                acceso.usuario = usua;
                acceso.perfil = pe;
                acceso.save();
                return true;
            } else {

                if (activo == 2 && acceso != null && acceso.activo == false) {

                    acceso.activo = true;
                    acceso.usuario = usua;
                    acceso.perfil = pe;
                    acceso.save();
                    return true;
                } else {
                    Accesos acces = new Accesos();

                    acces.perfil = pe;
                    acces.usuario = usua;
                    acces.activo = true;
                    acces.save();
                    return true;
                }

            }

        } catch (Exception e) {
            System.out.println(e);
            return false;
        }

    }
}
