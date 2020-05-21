/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author dark_
 */
public class Consultas extends Conexión{
    public boolean autentication(String matricula, String password)
    {
        PreparedStatement autenticar = null;
        ResultSet ok = null;
        System.out.println("Ok");
        try {
            String queryLogin = "SELECT * FROM users WHERE matricula = ? and password = ?";//Consulta SQL
            autenticar = getConexión().prepareStatement(queryLogin);//Conecta con la BD y ejecuta la consulta
            String passwordMD5 = DigestUtils.md5Hex(password);
            autenticar.setString(1, matricula);//Primer parámetro de la consulta
            autenticar.setString(2, passwordMD5);//Segundo parámetro de la consulta
            ok = autenticar.executeQuery();//Ejectua la consulta y guarda el resultado
            
            if (ok.absolute(1)){
                return true;//Sí existe el usuario en la bd
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consultas.class.getName()).log(Level.SEVERE, null, ex);
        }
        //Cierre de todas las conexiones
        finally{
            try {
                if (getConexión() != null) getConexión().close();
                if (autenticar != null) autenticar.close();
                if (ok != null) ok.close();
            } catch (SQLException ex) {
                Logger.getLogger(Consultas.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false; 
    }
    public boolean registrer(String matricula, String nombre, String apellido, String email, String password){
        PreparedStatement registrar = null;
        
        try {
            String queryInsert = "INSERT INTO users"
                    + "(matricula, nombre, apellido, email, password)"
                    + "values(?,?,?,?,?)";//Inserta usuario en BD
            registrar = getConexión().prepareStatement(queryInsert);//Conecta con la BD y ejecuta la consulta
            String passwordMD5 = DigestUtils.md5Hex(password);//Encripta la contraseña
            registrar.setString(1, matricula);//Primer parámetro de la consulta
            registrar.setString(2, nombre);//Segundo parámetro de la consulta
            registrar.setString(3, apellido);//Tercer parámetro de la consulta
            registrar.setString(4, email);//Cuarto parámetro de la consulta (Contraseña encriptada)
            registrar.setString(5, passwordMD5);//Quinto parámetro de la consulta
            //registrar.executeQuery();//Ejectua la consulta y guarda el resultado
            if(registrar.executeUpdate() == 1){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consultas.class.getName()).log(Level.SEVERE, null, ex);
        }
        //Cierre de todas las conexiones
        finally{
            try {
                if (getConexión() != null) getConexión().close();
                if (registrar != null) registrar.close();
            } catch (SQLException ex) {
                Logger.getLogger(Consultas.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }
}
