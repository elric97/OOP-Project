<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editted By Admin</title>
</head>
<body>

<%
	String id=session.getAttribute("uid").toString();
    String name = request.getParameter("name");    
    String email= request.getParameter("email");
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_movie",
            "root", "rachit");
    Statement st = con.createStatement();
    //ResultSet rs;
    
	int i = st.executeUpdate("update user set name ='" + name + "',email='" + email + "',pass='" + pwd + "' where uid =" +id);
    if (i > 0) {
        response.sendRedirect("application.jsp");
	}
%>
</body>
</html>