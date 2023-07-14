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

        String accion1 = request.getParameter("accion");
        SociosDAO socioDAO = null;
                
        RequestDispatcher dispacher =  null;

        
        if (accion1.isEmpty() || accion1==null) {
            dispacher = request.getRequestDispatcher("/index.jsp");
        } else {
            switch (accion1) {

                case "modificar":
                    // Redirecciono a la pagina modificar para que se seteen los campos
                    dispacher = request.getRequestDispatcher("/modificarSocio.jsp");
                    break;

                case "eliminar":

                    int id_ = Integer.parseInt(request.getParameter("id"));
                    socioDAO = new SociosDAO();
                    socioDAO.eliminarSocio(id_);
                    dispacher = request.getRequestDispatcher("/listadoSocios.jsp");

                    break;

                case "nuevo":
                    dispacher = request.getRequestDispatcher("/nuevoSocio.jsp");
                    break;

                default:
                    dispacher = request.getRequestDispatcher("/index.jsp");
            }
        }

        dispacher.forward(request, response);
        
        
        
        
    }
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String accion1 = request.getParameter("accion");
        SociosDAO socioDAO = null;
                
        RequestDispatcher dispacher =  null;
        
        switch (accion1) {

                case "insert":
                    socioDAO = new SociosDAO();
                    
                    String _nombre = request.getParameter("nombre");
                    String _apellido = request.getParameter("apellido");
                    int _dni = Integer.parseInt(request.getParameter("dni"));
                    String _mail = request.getParameter("mail");
                    Socio _socio = new Socio(0, _nombre, _apellido, _dni, _mail, true, LocalDate.now());

                    socioDAO.guardarSocio(_socio);
                    dispacher = request.getRequestDispatcher("/listadoSocios.jsp");
                    break;
                case "actualizar":

                    socioDAO = new SociosDAO();

                    int id = Integer.parseInt(request.getParameter("id"));
                    String nombre = request.getParameter("nombre");
                    String apellido = request.getParameter("apellido");
                    int dni = Integer.parseInt(request.getParameter("dni"));
                    String mail = request.getParameter("mail");

                    Socio socio = new Socio(id, nombre, apellido, dni, mail, true, LocalDate.now());

                    socioDAO.actualizarSocio(socio);

                    dispacher = request.getRequestDispatcher("/listadoSocios.jsp");

                    break;
        }
        
        dispacher.forward(request, response);
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
