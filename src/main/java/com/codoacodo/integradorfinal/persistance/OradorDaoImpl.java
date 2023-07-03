package com.codoacodo.integradorfinal.persistance;

import com.codoacodo.integradorfinal.domain.Orador;
import com.codoacodo.integradorfinal.exception.DatabaseConnectionException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Facundo
 */
public class OradorDaoImpl implements OradorDAO {
    private static final String SELECT_ALL = "SELECT * FROM orador;";
    private static final String INSERT = "INSERT INTO orador(nombre, apellido, descripcion, fecha_alta) VALUES (?, ?, ?, ?);";

    @Override
    public List<Orador> getListaOradores() throws DatabaseConnectionException {
        List<Orador> listaOradores = new ArrayList<>();
        
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet result = null;
        
        try{
            conn = Conexion.getConnection();
            
            stmt = conn.prepareStatement(OradorDaoImpl.SELECT_ALL);
            result = stmt.executeQuery();
            
            while(result.next()){
                Long id = result.getLong(1);
                String nombre = result.getString(2);
                String apellido = result.getString(3);
                String descripcion = result.getString(4);
                Date fechaDeAlta = result.getDate(5);
                
                Orador o = new Orador(id, nombre, apellido, descripcion, fechaDeAlta);
                
                listaOradores.add(o);
            }
            
        } catch(SQLException e){
            String message = "Error al acceder a la base de datos, " + e.getMessage();
            
            throw new DatabaseConnectionException(message, e);
        } 
        
        return listaOradores;
    }

    @Override
    public boolean addOrador(String nombre, String apellido, String descripcion) 
            throws DatabaseConnectionException {
        Orador o = new Orador(nombre, apellido, descripcion, new Date());
        
        Integer result = 0;
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try{
            conn = Conexion.getConnection();
            
            stmt = conn.prepareStatement(OradorDaoImpl.INSERT);
            
            stmt.setString(1, o.getNombre());
            stmt.setString(2, o.getApellido());
            stmt.setString(3, o.getDescripcion());
            stmt.setDate(4, new java.sql.Date(o.getFechaDeAlta().getTime()));
            
            result = stmt.executeUpdate();
        } catch(SQLException e){
            String message = "Error al acceder a la base de datos, " + e.getMessage();
            
            throw new DatabaseConnectionException(message, e);
        } 
        
        return result > 0;
    }
    
}
