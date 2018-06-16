/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
/**
 *
 * @author Jibun
 */
public class cn extends Conexion{
    Connection cn=null;
    
    private Connection Conectar() {
        try {
            return getConexion();
        } catch (Exception e) {}
        return null;
    }
    private void Desconectar(){
        try {
            cn.close();
        } catch (SQLException e) {}
    }
}
