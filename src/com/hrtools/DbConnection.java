package com.hrtools;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	
	static Connection con=null;
	public static Connection connect()
	{
		
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
		
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrtool","root","");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		
		return con;
		
		
	}


}
