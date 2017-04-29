package movie;
import java.util.*;
import java.util.Date;
import java.sql.*;
import java.text.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class rate {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost:3306/my_movie?autoReconnect=true&useSSL=false";
	static final String USER = "root";
	static final String PASS = "rachit";
	Connection conn = null;
	Statement stmt = null;
	public rate()
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
   public boolean add(int no,String name,int stars,String review,String date) throws SQLException, ParseException
   {
	   ResultSet rs;
	    rs = stmt.executeQuery("select mid from movie where title= '" + name+ "'");
	    rs.next();
	    int mid =rs.getInt("mid");
		int i = stmt.executeUpdate("insert into rating values (" + mid +","+ no + ",'" + review + "'," + stars + ",'"+date+"')");
		rs.close();
		rs=stmt.executeQuery("select round(avg(stars),2) as newRate from rating where mid= "+mid+" group by mid");
		rs.next();
		float cRate=rs.getFloat("newRate");
		rs.close();
		System.out.println(cRate);
		String query="update movie set avgRating= "+cRate+" where mid ="+mid;
		int j=stmt.executeUpdate(query);
		if (i>0)
		{
			return true;
		}
		return false;
   }
   public ResultSet view(int no) throws SQLException
   {
	   ResultSet rs;
	   rs=stmt.executeQuery(" select mid,title,stars,ratdate from rating natural join movie where uid="+no);
	   return rs;
   }
  
}
