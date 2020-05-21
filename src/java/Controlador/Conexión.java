/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.*;
        
/**
 *
 * @author dark_
 */
public class Conexión {
    private String username = "root";
    private String password =  "";
    private String host = "localhost";
    private String puerto = "3306";
    private String bd = "ead";
    private String classname = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://" + host + ":" + puerto + "/" + bd;
    Connection conexion;
    
    public Conexión(){
        try {
            Class.forName(classname);
            conexion = (Connection) DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Connection getConexión(){
        return conexion;
    }
    
    public static void main (String[] args){
        Conexión conexion = new Conexión();
        
    }
}
