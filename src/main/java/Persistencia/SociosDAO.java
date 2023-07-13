
package Persistencia;

import Entidad.Socio;
import java.util.ArrayList;
import java.util.List;


public class SociosDAO extends DAO{
    
    public void guardarSocio (Socio socio){
        
        try {
            if (socio == null) {
                throw new Exception("Debe indicar un socio");
            }

            String sql = "INSERT INTO socios (id_socio, nombre, apellido, dni, mail, estado, fecha_alta) " +
                         "VALUES ("+0+ ",'" 
                        + socio.getNombre() + "','" +
                        socio.getApellido() + "'," + 
                        socio.getDni() + ", '" + 
                        socio.getMail() + "', " +
                        socio.isEstado()  +",'" + socio.getFecha_alta() + "');";
            
            
            insertarModificarEliminar(sql);

        } catch (Exception e) {
            System.out.println("Error al guardar el Socio");
            e.printStackTrace();
        }
    }
    
    public void actualizarSocio (Socio socio){
        try {
            if (socio == null) {
                throw new Exception("Debe indicar un socio para modificar");
            }

            String sql = "UPDATE Socios SET nombre= '" + socio.getNombre()
                    + "' , apellido= '" +socio.getApellido() + "' , dni= '" + socio.getDni() + "' , mail= '" +
                    socio.getMail() + "' WHERE id_socio= '" + socio.getId() + "';";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            System.out.println("Error al modificar el Socio");
            e.printStackTrace();
        }
    }
    
    public void eliminarSocio (int id){
        try {
            String sql = "DELETE FROM Socios WHERE id_socio= '" + id + "'";
            insertarModificarEliminar(sql);
        } catch (Exception e) {
            System.out.println("Error al eliminar el Socio");
            e.printStackTrace();
        }
    }
    
    public List<Socio> listarSocios (){
        
        try {
            String sql = "SELECT * FROM Socios;";

            consultarBase(sql);

            Socio socio;
            List<Socio> listaProductos = new ArrayList<>();

            while (resultado.next()) {
                socio = new Socio();
                
                socio.setId(resultado.getInt("id_socio"));
                socio.setNombre(resultado.getString("nombre"));
                socio.setApellido(resultado.getString("apellido"));
                socio.setDni(resultado.getInt("dni"));
                socio.setMail(resultado.getString("mail"));
                socio.setEstado(resultado.getBoolean("estado"));
                socio.setFecha_alta(resultado.getDate("fecha_alta").toLocalDate());
                
                listaProductos.add(socio);
            }
            return listaProductos;
        } catch (Exception e) {
            System.out.println("Error al listar los productos");
            e.printStackTrace();
            return null;
        }
        
    }
    
    public Socio mostrarSocio (int id){
         try {
            String sql = "SELECT * FROM socios where id_socio=" + id;

            consultarBase(sql);

            Socio socio = new Socio();
            // Avanzo al primer registro
            resultado.next();
            socio.setId(resultado.getInt("id_socio"));
            socio.setNombre(resultado.getString("nombre"));
            socio.setApellido(resultado.getString("apellido"));
            socio.setDni(resultado.getInt("dni"));
            socio.setMail(resultado.getString("mail"));
            socio.setEstado(resultado.getBoolean("estado"));
            socio.setFecha_alta(resultado.getDate("fecha_alta").toLocalDate());

            return socio;
        } catch (Exception e) {
            System.out.println("No se trajo el socio");
            e.printStackTrace();
            return null;
        }
    }
}
