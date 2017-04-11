package com.xbbnhfk.profile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
static String url;
static Connection con=null;
public static Connection getConnection(){

    try
    {
    	//Class.forName("oracle.jdbc.driver.OracleDriver");



   Class.forName("org.apache.derby.jdbc.ClientDriver");
       
                  	
          try {
				
        	  //  con = DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02","shobana","shobana");


        	 con = DriverManager.getConnection("jdbc:derby://172.24.18.16:1527/book","user","pwd");
			} 
          catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
       
       
    }

    catch(ClassNotFoundException e)
    {
       System.out.println(e);
    }
	
return con;

}

}
