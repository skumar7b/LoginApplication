package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionManager {

   static Connection con;
   static String url;
         
   public static Connection getConnection()
   {
         try
         {          	 
        	 Class.forName("org.postgresql.Driver");
             con = DriverManager
                .getConnection("jdbc:postgresql://localhost:5432/postgres",
                "postgres", "Sh1v@123");  //(//localhost:5432/<datasource>/<username><pwd> )
              
         }
         
         catch (SQLException | ClassNotFoundException ex)
         {
            ex.printStackTrace();
         }
   return con;
}
}
