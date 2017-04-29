<%@page import = "java.sql.*"%>
<%@ page import="movie.user" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Details</title>
        <link rel="stylesheet" type="text/css" href="NewFile.css"/>
    </head>
    <body>
    <div class="navigation">
    	<ul>
    		<li><a href="about.jsp">About</a></li>
    		<li><a href='u_edit_personal.jsp'>Edit Details</a></li>
			<li ><a href="index.jsp" id="logo">MTDB</a></li>
			<li><a href='logout.jsp'>Log out</a></li>
    	</ul>
	</div>
        
        <%
          	user u=new user();
            String user =session.getAttribute("uname").toString();            
       		ResultSet rs=u.det(user);
            /*Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_movie",
            "root", "gourav1234");
            PreparedStatement st = con.prepareStatement("Select * from user where name='"+user+ "'");
            ResultSet rs=st.executeQuery();*/
            if(rs.next())
            {
                
            }
            
        %>
		<div class="backg">
		<div id="cover">
            <center>
            <table border="1" cellpadding="6" class="table-fill">
			
                <thead>
                    <tr>
                        <th colspan="2">Personal Details</th>
                    </tr>
                </thead>
                <tbody clas="table-hover">
                    <tr>
                        <td class="text-left">UID</td>
                        <td class="text-left"><%= rs.getInt("uid")%></td>
                    </tr>
                    <tr>
                        <td class="text-left">NAME</td>
                        <td class="text-left"><%= rs.getString("name")%></td>
                    </tr>
                    <tr>
                        <td class="text-left">email</td>
                        <td class="text-left"><%= rs.getString("email")%></td>
                    </tr>
                </tbody>
            </table>
            </center>
            </div>
            </div>               
       
        </center>
    </body>
</html>
                    
