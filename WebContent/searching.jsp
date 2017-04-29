<%@page import="java.util.Objects"%>
<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="movie.mov" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,500,700|Oswald:300,400,700" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="searching.css">
<title>Searching Files</title>
</head>
<body>	 
    <div class="navigation">
    	<ul>
    		<li><a href='about.jsp'>About</a></li>
			<li ><a href="index.jsp" id="logo">MTDB</a></li>
	    </ul>
	</div>
<%  
	String type=request.getParameter("type");
	String search=request.getParameter("search");
	
	mov m1=new mov();
	ResultSet rs=m1.srch(type, search);
	if(!rs.next()){
	   out.print("Searching Failed!!Invalid Entry");
	   response.sendRedirect("search.jsp");
    }
	else{
		rs.previous();
	}
   %>
<div class="backg">
		<div id="cover">
            <center>
            <table border="1" cellpadding="6" class="table-fill">
			<tbody clas="table-hover">
				<tr>
					<td class="text-left">mid</td>
					<td class="text-left">TITLE</td>
					<td class="text-left">YEAR</td>
					<td class="text-left">DIRECTOR</td>
					<td class="text-left">AVERAGE RATING</td>
				</tr>
				<% while(rs.next()) {%>
				<tr>
					<td class="text-left"><%= rs.getInt("mid")%></td>
					<td class="text-left"><%= rs.getString("title") %></td>
					<td class="text-left"><%= rs.getInt("year") %></td>
					<td class="text-left"><%= rs.getString("director") %></td>
					<td class="text-left"><%= rs.getFloat("avgRating") %></td>
				</tr>
				<% }%>
			</tbody>
		</table>
		</center>
		</div>
		</div>
        

</body>
</html>