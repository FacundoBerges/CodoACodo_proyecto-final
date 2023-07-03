package com.codoacodo.integradorfinal.servlets;


import com.codoacodo.integradorfinal.domain.Orador;
import com.codoacodo.integradorfinal.exception.DatabaseConnectionException;
import com.codoacodo.integradorfinal.persistance.OradorDAO;
import com.codoacodo.integradorfinal.persistance.OradorDaoImpl;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * @author Facundo
 */
@WebServlet(name = "oradoresServlet", urlPatterns = "/oradores")
public class OradoresServlet extends HttpServlet {


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
        OradorDAO orador = new OradorDaoImpl();
        
        try {
            List<Orador> oradores = orador.getListaOradores();
            
            request.setAttribute("listaOradores", oradores);
            request.setAttribute("cantidadOradores", oradores.size());
            request.getRequestDispatcher("/WEB-INF/pages/oradores.jsp").forward(request, response);
        } catch (DatabaseConnectionException e) {
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
        OradorDAO orador = new OradorDaoImpl();
        
        String nombre = request.getParameter("name");
        String apellido = request.getParameter("surname");
        String descripcion = request.getParameter("topic");
        
        try {
            orador.addOrador(nombre, apellido, descripcion);
        } catch (DatabaseConnectionException e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
        
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }


}
