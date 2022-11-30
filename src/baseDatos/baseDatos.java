/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package baseDatos;
import java.sql.*;
/**
 *
 * @author Keng
 */
public class baseDatos {
    private static Connection conn = null;
    
    private baseDatos(){
        String url = "jdbc:mysql://localhost:3306/instrumentos";
        String driver = "com.mysql.cj.jdbc.Driver";
        String usuario = "root";
        String password = "password";
        
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);
            System.out.println("Base de datos conectada!");
        }
        catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
    }
    
    public static Connection abrirBD(){
        if (conn == null){
            new baseDatos();
       }
       return conn;
    }
    
}
