package com.codoacodo.integradorfinal.persistance;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;


/**
 * @author Facundo
 */
public class Conexion {
    private static final String USER = "root";
    private static final String PASSWORD = "admin";
    private static final String DATABASE = "codo_a_codo";
    private static final String DDBB_URL = String.format(
        "jdbc:mysql://%s:%s@localhost:3306/%s?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true", USER, PASSWORD, DATABASE);
    
    private static BasicDataSource dataSource;
    
    
    private static DataSource getDataSource(){
        if(Conexion.dataSource == null){
            Conexion.dataSource = new BasicDataSource();
            
            Conexion.dataSource.setUrl(DDBB_URL);
            Conexion.dataSource.setInitialSize(50);
        }
        
        return Conexion.dataSource;
    }
    
    public static Connection getConnection() throws SQLException {
        return Conexion.getDataSource().getConnection();
    }

    
}
