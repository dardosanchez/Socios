
package Principal;

import Entidad.Socio;
import Persistencia.SociosDAO;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


public class Principal {

   
    public static void main(String[] args) {
        
        SociosDAO socioDao = new SociosDAO();
        Socio socio;
        
 //       socio = new Socio(58, "Lionel", "Messi", 654321, "leomessi@hotmail.com", true, LocalDate.now());
        
    //    socioDao.guardarSocio(socio);
    //    socioDao.actualizarSocio(socio);
    //      socioDao.eliminarSocio(57);
   
    
/*
          List<Socio> lista = socioDao.listarSocios();
          for (Socio elem : lista) {
              System.out.println("=======================================");
              System.out.println("id: " + elem.getId() );
              System.out.println("nombre: " + elem.getNombre());
              System.out.println("apellido: " + elem.getApellido());
              System.out.println("DNI: " + elem.getDni());
              System.out.println("Mail: " + elem.getMail());
              System.out.println("Estado: " + elem.isEstado());
              System.out.println("Fecha: " + elem.getFecha_alta());
        }
*/
    
/*
        socio = socioDao.mostrarSocio(58);
       
        
        System.out.println("id: " + socio.getId());
        System.out.println("nombre: " + socio.getNombre());
        System.out.println("apellido: " + socio.getApellido());
        System.out.println("DNI: " + socio.getDni());
        System.out.println("Mail: " + socio.getMail());
        System.out.println("Estado: " + socio.isEstado());
        System.out.println("Fecha: " + socio.getFecha_alta());

*/
    }
    
}
