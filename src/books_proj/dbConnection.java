/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package books_proj;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;


/**
 *
 * @author driskimaulana
 */
public class dbConnection {
    
   public static Connection conn;
   public static Statement stm;
    
   public void Connect(){
       try {
           // variabel for store database information
           String url = "jdbc:mysql://localhost/db_books";
           String user = "root";
           String pass = "";
           
           Class.forName("com.mysql.jdbc.driver");
           // create connection
           conn = DriverManager.getConnection(url, user, pass);
           
           // execute statement
           stm = conn.createStatement();
           
           System.out.println("Connection Success");
           
       } catch (Exception e) {
           System.err.println("Connection Failed" + e.getMessage());
       }
   }
   
   // method for creating query
   public void Query(String query)
   {
       try {
           Connect();
           String sql = query;
           stm.execute(sql);
       } catch (Exception e) {
           System.err.println("Read gagal" + e.getMessage());
       }
   }
    
}
