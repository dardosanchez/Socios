
package SvSocios;

import Entidad.Socio;
import Persistencia.SociosDAO;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvSocios", urlPatterns = {"/SvSocios"})
public class SvSocios extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String accion = null;
        SociosDAO socioDAO = null;
        socioDAO = new SociosDAO();

        RequestDispatcher dispacher = null;
        accion = request.getParameter("accion");

        if (accion == null || accion.isEmpty()) {
            dispacher = request.getRequestDispatcher("/index.jsp");
        } else {
            switch (accion) {
                case "modificar":
                    
                    dispacher = request.getRequestDispatcher("/TrabajoIntegradorBack/vistas/modificarSocio.jsp");
                    break;
                case "actualizar":
                    
                    int id = Integer.parseInt(request.getParameter("id"));
                    String nombre = request.getParameter("nombre");
                    String apellido = request.getParameter("apellido");
                    int dni = Integer.parseInt(request.getParameter("dni"));
                    String mail = request.getParameter("mail");
                    Socio socio = new Socio(id, nombre, apellido, dni, mail, true, LocalDate.now());
                    socioDAO.actualizarSocio(socio);
                    
                    dispacher = request.getRequestDispatcher("/listadoSocios.jsp");
                    break;
                case "eliminar":
                    
                    int id_ = Integer.parseInt(request.getParameter("id"));
                    socioDAO.eliminarSocio(id_);
                    dispacher = request.getRequestDispatcher("/listadoSocios.jsp");
                    break;
                case "nuevo":
                    dispacher = request.getRequestDispatcher("/nuevoSocio.jsp");
                    break;
                case "insert":
                    
                    String _nombre = request.getParameter("nombre");
                    String _apellido = request.getParameter("apellido");
                    int _dni = Integer.parseInt(request.getParameter("dni"));
                    String _mail = request.getParameter("mail");
                    Socio _socio = new Socio(0, _nombre, _apellido, _dni, _mail, true, LocalDate.now());
                    socioDAO.guardarSocio(_socio);
                    dispacher = request.getRequestDispatcher("/listadoSocios.jsp");
                    break;
                default:
                    dispacher = request.getRequestDispatcher("/index.jsp");
            }
        }

        dispacher.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
