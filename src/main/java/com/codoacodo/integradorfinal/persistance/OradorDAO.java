package com.codoacodo.integradorfinal.persistance;

import com.codoacodo.integradorfinal.domain.Orador;
import com.codoacodo.integradorfinal.exception.DatabaseConnectionException;
import java.util.List;

/**
 * @author Facundo
 */
public interface OradorDAO {
    
    List<Orador> getListaOradores() throws DatabaseConnectionException;
    
    boolean addOrador(String nombre, String apellido, String descripcion) throws DatabaseConnectionException;
    
}
