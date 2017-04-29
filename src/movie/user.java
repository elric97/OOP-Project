package movie;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class user {
 
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost:3306/my_movie?autoReconnect=true&useSSL=false";
	static final String USER = "root";
	static final String PASS = "rachit";
	Connection conn = null;
	Statement stmt = null;
	public int x;
	public user()
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
   public int uid(String user) throws SQLException
   {
	   ResultSet rs=stmt.executeQuery("Select uid from user where name='"+user+"'");
	   rs.next();
	   int x=rs.getInt("uid");
	   return x;
   }
   public boolean auth(String user,String pass) throws SQLException
   {
	   ResultSet rs=stmt.executeQuery("Select * from user where name='"+user+"'"+" and pass="+"'"+pass+"'");
	   if (rs.next())
	   {
		   return true;
	   }
	   rs.close();
	   return false;
   }
   public boolean reg(String user,String email,String pass) throws SQLException
   {
	   int i = stmt.executeUpdate("insert into user (name, email, pass) values ('" + user + "','" + email + "','" + pass + "')");
	   if (i>0)
	   {
		   return true;
	   }
	   return false;
   }
   public ResultSet det(String user) throws SQLException
   {
	   ResultSet rs=stmt.executeQuery("Select * from user where name='"+user+ "'");
	   return rs;
   }
   public boolean upd(int no,String user,String email,String pass) throws SQLException
   {
	   String query = "update user set name='" +user+ "',email='" +email+ "',pass='"+ pass +"' where uid ="+no;
	   stmt.executeUpdate(query);
	   return true;
   }
}
