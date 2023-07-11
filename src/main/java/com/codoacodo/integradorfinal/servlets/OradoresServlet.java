package com.codoacodo.integradorfinal.servlets;


import com.codoacodo.integradorfinal.domain.Orador;
import com.codoacodo.integradorfinal.exception.DatabaseConnectionException;
import com.codoacodo.integradorfinal.exception.InvalidFormException;
import com.codoacodo.integradorfinal.persistance.OradorDAO;
import com.codoacodo.integradorfinal.persistance.OradorDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Date;
import java.util.List;


/**
 * @author Facundo
 */
@WebServlet(name = "oradoresServlet", urlPatterns = "/oradores")
public class OradoresServlet extends HttpServlet {

    private OradorDAO oradorDao;
    
    @Override
    public void init() throws ServletException {
        this.oradorDao = new OradorDaoImpl();
    }
    
    private void mostrarListaOradores(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Orador> oradores = this.oradorDao.getListaOradores();
        
        request.setAttribute("listaOradores", oradores);
        request.setAttribute("cantidadOradores", oradores.size());
        
        request.getRequestDispatcher("/WEB-INF/pages/oradores.jsp").forward(request, response);
    }
    

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String action = request.getParameter("action");
            String id = null;
            
            action = action != null 
                    ? action.toLowerCase()
                    : "";
            
            switch (action) {
                case "edit":
                    id = request.getParameter("id");
                    
                    Long idLong = Long.valueOf(id);
                    Orador orador = this.oradorDao.getOradorById(idLong);
                    request.setAttribute("orador", orador);
                    request.getRequestDispatcher("/WEB-INF/pages/editar-orador.jsp").forward(request, response);
                    
                    break;
                case "delete":
                    id = request.getParameter("id");

                    this.oradorDao.deleteOradorById(Long.valueOf(id));
                    
                    this.mostrarListaOradores(request, response);
                    break;
                case "":
                default:
                    this.mostrarListaOradores(request, response);
                    break;
            }
            
            
        } catch (DatabaseConnectionException | NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        Orador orador = null;
        
        action = action != null 
                    ? action.toLowerCase()
                    : "";
        
        try {    
            switch (action) {
                case "update":
                    String id = request.getParameter("id");
                    Long idLong = Long.valueOf(id);
                    
                    orador = this.oradorDao.getOradorById(idLong);
                    
                    this.setOradorByParams(request, orador);
                    
                    this.oradorDao.updateOrador(orador);
                    response.sendRedirect(getServletContext().getContextPath() + "/oradores");
                    break;
                case "":
                case "insert":
                    orador = this.setOradorByParams(request);
                    orador.setFechaDeAlta(new Date());
                    
                    this.oradorDao.addOrador(orador);
                    response.sendRedirect(getServletContext().getContextPath() + "/index");
                    break;
                default:
                    response.sendRedirect(getServletContext().getContextPath() + "/index");
                    break;
            }
            
        } catch (DatabaseConnectionException e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
        
    }
    
    
    private Orador setOradorByParams(HttpServletRequest req){
        Orador orador = new Orador();
        
        return this.setOradorByParams(req, orador);
    }
    
    
    private Orador setOradorByParams(HttpServletRequest req, Orador orador){
        orador.setNombre(req.getParameter("name"));
        orador.setApellido(req.getParameter("surname"));
        orador.setDescripcion(req.getParameter("topic"));
        
        if(orador.getNombre() == null || orador.getApellido() == null || orador.getDescripcion() == null){
            throw new InvalidFormException("Informacion enviada incompleta.");
        }
        
        return orador;
    }


}
