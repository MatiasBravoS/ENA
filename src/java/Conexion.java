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
public class Conexion {
     public Connection getConexion(){
        Connection cn =null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost/requerimiento", "root", "");
        }catch(ClassNotFoundException | SQLException ex){}
        return cn;
    }
}
