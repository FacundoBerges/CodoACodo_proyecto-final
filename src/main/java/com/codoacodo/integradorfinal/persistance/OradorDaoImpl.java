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
    private static final String SELECT_ONE = "SELECT * FROM orador WHERE id = ?;";
    private static final String INSERT = "INSERT INTO orador(nombre, apellido, descripcion, fecha_alta) VALUES (?, ?, ?, ?);";
    private static final String UPDATE = "UPDATE orador SET nombre = ?, apellido = ?, descripcion = ?, fecha_alta = ? WHERE id = ?;";
    private static final String DELETE = "DELETE FROM orador WHERE id = ?;";

    @Override
    public List<Orador> getListaOradores() throws DatabaseConnectionException {
        List<Orador> listaOradores = new ArrayList<>();

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet result = null;

        try {
            conn = Conexion.getConnection();

            stmt = conn.prepareStatement(OradorDaoImpl.SELECT_ALL);
            result = stmt.executeQuery();

            while (result.next()) {
                listaOradores.add(this.resultSetToOrador(result));
            }
        } catch (SQLException e) {
            String message = "Error al acceder a la base de datos, " + e.getMessage();

            throw new DatabaseConnectionException(message, e);
        } finally {
            try {
                if (result != null) {
                    result.close();
                }

                if (stmt != null) {
                    stmt.close();
                }

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                String message = "Error al cerrar conexion con la base de datos, " + e.getMessage();

                throw new DatabaseConnectionException(message, e);
            }
        }

        return listaOradores;
    }

    @Override
    public Orador getOradorById(Long id) {
        Orador orador = null;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet result = null;

        try {
            conn = Conexion.getConnection();

            stmt = conn.prepareStatement(OradorDaoImpl.SELECT_ONE);
            stmt.setLong(1, id);
            
            result = stmt.executeQuery();

            if(result.next()) {
                orador = this.resultSetToOrador(result);
            }
        } catch (SQLException e) {
            String message = "Error al acceder a la base de datos, " + e.getMessage();

            throw new DatabaseConnectionException(message, e);
        } finally {
            try {
                if (result != null) {
                    result.close();
                }

                if (stmt != null) {
                    stmt.close();
                }

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                String message = "Error al cerrar conexion con la base de datos, " + e.getMessage();

                throw new DatabaseConnectionException(message, e);
            }
        }

        return orador;
    }

    @Override
    public boolean addOrador(Orador orador)
            throws DatabaseConnectionException {
        
        Integer result = 0;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = Conexion.getConnection();

            stmt = conn.prepareStatement(OradorDaoImpl.INSERT);
            this.fillPreparedStatement(stmt, orador);

            result = stmt.executeUpdate();
        } catch (SQLException e) {
            String message = "Error al acceder a la base de datos, " + e.getMessage();

            throw new DatabaseConnectionException(message, e);
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                String message = "Error al cerrar conexion con la base de datos, " + e.getMessage();

                throw new DatabaseConnectionException(message, e);
            }
        }

        return result > 0;
    }

    @Override
    public boolean deleteOradorById(Long id) throws DatabaseConnectionException {
        Integer result = 0;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = Conexion.getConnection();

            stmt = conn.prepareStatement(OradorDaoImpl.DELETE);

            stmt.setLong(1, id);

            result = stmt.executeUpdate();
        } catch (SQLException e) {
            String message = "Error al acceder a la base de datos, " + e.getMessage();

            throw new DatabaseConnectionException(message, e);
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                String message = "Error al cerrar conexion con la base de datos, " + e.getMessage();

                throw new DatabaseConnectionException(message, e);
            }
        }

        return result > 0;
    }

    @Override
    public boolean updateOrador(Orador orador) {
        Integer result = 0;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = Conexion.getConnection();

            stmt = conn.prepareStatement(OradorDaoImpl.UPDATE);

            this.fillPreparedStatement(stmt, orador);
            stmt.setLong(5, orador.getId());

            result = stmt.executeUpdate();
        } catch (SQLException e) {
            String message = "Error al acceder a la base de datos, " + e.getMessage();

            throw new DatabaseConnectionException(message, e);
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                String message = "Error al cerrar conexion con la base de datos, " + e.getMessage();

                throw new DatabaseConnectionException(message, e);
            }
        }

        return result > 0;
    }

    private Orador resultSetToOrador(ResultSet resultSet) throws SQLException {
        Long id = resultSet.getLong(1);
        String nombre = resultSet.getString(2);
        String apellido = resultSet.getString(3);
        String descripcion = resultSet.getString(4);
        Date fechaDeAlta = resultSet.getDate(5);

        return new Orador(id, nombre, apellido, descripcion, fechaDeAlta);
    }

    private void fillPreparedStatement(PreparedStatement preparedStatement, Orador orador) throws SQLException {
        preparedStatement.setString(1, orador.getNombre());
        preparedStatement.setString(2, orador.getApellido());
        preparedStatement.setString(3, orador.getDescripcion());
        preparedStatement.setDate(4, new java.sql.Date(orador.getFechaDeAlta().getTime()));
    }

}
