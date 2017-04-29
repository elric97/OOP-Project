<%@ page import ="java.sql.*" %>
<%
			Class.forName("com.mysql.jdbc.Driver");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FARMER LOGIN</title>
</head>
<body>
<%
	String name = request.getParameter("uname"); 
    String pwd = request.getParameter("pass");
    try{
   		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_movie","root", "rachit");
	    Statement st = con.createStatement();
	    ResultSet rs;
	    rs = st.executeQuery("select * from admin where name='" + name + "' and pass='" + pwd + "'");
	    if (rs.next()) {
	    	session.setAttribute("uname", name);
	        response.sendRedirect("application.jsp");
	    }
	    else {
    		out.println("Invalid password <a href='index.jsp'>try again</a>");
    	}
    	st.close();
    	con.close();
   	}catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
%></body>
</html>