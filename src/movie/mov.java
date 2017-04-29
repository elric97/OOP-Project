package movie;
import java.sql.*;

public class mov {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost:3306/my_movie?autoReconnect=true&useSSL=false";
	static final String USER = "root";
	static final String PASS = "rachit";
	Connection conn = null;
	Statement stmt = null;
	public mov()
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
   public ResultSet select() throws SQLException
   {

		   ResultSet rs=stmt.executeQuery("select * from movie");
		   return rs;
	  
   } 
   public ResultSet srch(String type,String search) throws SQLException
   {
	   ResultSet rs;
	   if(type.equals("rating")){
		   type="avg"+type;
		   rs = stmt.executeQuery("select * from movie where " + type + ">= " + search);
		   return rs;
	    }
	    rs = stmt.executeQuery("select * from movie where " + type + "= '" + search + "'");
	    return rs;
   }
}
