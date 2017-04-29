package movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class admin {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost:3306/my_movie?autoReconnect=true&useSSL=false";
	static final String USER = "root";
	static final String PASS = "rachit";
	Connection conn = null;
	Statement stmt = null;
	public admin()
	{
		connectDatabase();
		createStatement();
	}
	public void connectDatabase()
   {
	   try
   		{
		      Class.forName("com.mysql.jdbc.Driver");
		      //System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);
   		}
   		catch(SQLException e)
   		{
	   		e.printStackTrace();
   		}
	   	catch(Exception e)
	    {
	   		e.printStackTrace();
	    }
   }
   public void createStatement()
   {
	   try
	   {
		   //System.out.println("Creating statement...");
		   stmt = conn.createStatement();
	   }
	   catch(SQLException e)
   		{
	   		e.printStackTrace();
   		}
	   	catch(Exception e)
	    {
	   		e.printStackTrace();
	    }
   }
   public boolean auth(String user,String pass) throws SQLException
   {
	   ResultSet rs=stmt.executeQuery("Select * from admin where name='"+user+"'"+" and pass="+"'"+pass+"'");
	   if (rs.next())
	   {
		   return true;
	   }
	   rs.close();
	   return false;
   }
}
