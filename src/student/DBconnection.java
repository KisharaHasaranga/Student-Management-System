package student;

import java.sql.*;

public class DBconnection {
    
    static Connection con = null;
    
    public static Connection getConnection(){
        
     try{
          Class.forName("com.mysql.cj.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nibm","root",null);
         
     }
     catch(Exception e){
         e.printStackTrace();
     }
        return con;
    }
}
    

