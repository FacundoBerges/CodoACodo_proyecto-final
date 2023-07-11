package com.codoacodo.integradorfinal.persistance;

import com.codoacodo.integradorfinal.domain.Orador;
import java.util.List;

/**
 * @author Facundo
 */
public interface OradorDAO {
    
    List<Orador> getListaOradores();
    
    Orador getOradorById(Long id);
    
    boolean addOrador(Orador orador);
    
    boolean updateOrador(Orador orador);
    
    boolean deleteOradorById(Long id);
    
}
