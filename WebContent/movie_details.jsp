


<%@page import = "java.sql.*"%>
<%@ page import="movie.mov" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,500,700|Oswald:300,400,700" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="movie_details.css">
        <title>Movie Details</title>
    </head>
	<body>  
    <div class="navigation">
    	<ul>
    		<li><a href="about.jsp">About</a></li>
    		<li><a href='rate_movie.jsp'>Rate Movies</a></li>
			<li ><a href="index.jsp" id="logo">MTDB</a></li>
    		<li><a href='mov_rated.jsp'>View Rated Movies</a></li>
			<li><a href='logout.jsp'>Log out</a></li>
    	</ul>
	</div>
		 <%
			mov movie = new mov();
			ResultSet movies = movie.select();
		%> 
		<div class="backg">
		<div id="cover">
            <center>
            <table border="1" cellpadding="6" class="table-fill">
			<tbody clas="table-hover">
			<thead>
                    <tr>
                        <th colspan="5" id="mrow">Movie Details</th>
                    </tr>
                </thead>
				<tr>
					<td class="text-left">mID</td>
					<td class="text-left">TITLE</td>
					<td class="text-left">YEAR</td>
					<td class="text-left">DIRECTOR</td>
					<td class="text-left">AVERAGE RATING</td>
				</tr>
				<% while(movies.next()) {%>
				<tr>
					<td class="text-left"><%= movies.getInt("mid")%></td>
					<td class="text-left"><a href="<%=movies.getInt("mid")%>.html"><%= movies.getString("title") %><a></a></td>
					<td class="text-left"><%= movies.getInt("year") %></td>
					<td class="text-left"><%= movies.getString("director") %></td>
					<td class="text-left"><%= movies.getFloat("avgRating") %></td>
				</tr>
				<% }%> 
			</tbody>
		</table> 
		</center>
		</div>
		</div>              
    </body>
</html>