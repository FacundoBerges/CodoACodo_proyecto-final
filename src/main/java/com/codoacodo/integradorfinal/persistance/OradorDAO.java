package com.codoacodo.integradorfinal.persistance;

import com.codoacodo.integradorfinal.domain.Orador;
import java.util.List;

/**
 * @author Facundo
 */
public interface OradorDAO {
    
    /**
     * Obtiene todos los oradores.
     * 
     * @return List<Orador> lista de oradores a devolver.
     */
    List<Orador> getListaOradores();
    
    /**
     * Obtiene un orador por el ID recibido.
     * 
     * @param id Id del orador a buscar.
     * @return Orador orador con el ID enviado como argumento.
     */
    Orador getOradorById(Long id);
    
    /**
     * Añade un orador al recurso.
     * 
     * @param orador recurso a añadir.
     * @return boolean True si se añado correctamente, false caso contrario.
     */
    boolean addOrador(Orador orador);
    
    /**
     * Actualiza los datos de un orador en el recurso.
     * 
     * @param orador Orador a actualizar
     * @return boolean True si se actualizo correctamente, false caso contrario.
     */
    boolean updateOrador(Orador orador);
    
    /**
     * Elimina los datos de un orador en el recurso.
     * 
     * @param id id del orador a eliminar
     * @return boolean True si se elimino correctamente, false caso contrario.
     */
    boolean deleteOradorById(Long id);
    
}
