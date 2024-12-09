package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconn 
{
    public static Connection conn() throws ClassNotFoundException, SQLException
    {   
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/grow"; 
        String user = "root";  
        String password = "";  

        return DriverManager.getConnection(url, user, password);
    }
}