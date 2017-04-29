<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Rating Movie</title>
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,500,700|Oswald:300,400,700" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="rate_movie.css">
    </head>
    <body>
    <div class="navigation">
    	<ul>
    		<li><a href="about.jsp">About</a></li>
    		<li><a href='movie_details.jsp'>Movie Details</a></li>
			<li ><a href="index.jsp" id="logo">MTDB</a></li>
    		<li><a href="logged_in.jsp"><%=session.getAttribute("uname") %></a></li>
			<li><a href='logout.jsp'>Log out</a></li>
    	</ul>
	</div>
             <form method="post" action="rated.jsp">
           <div class="backg">
			<div id="cover">
			<center>
            <table border="1" cellpadding="6" class="table-fill">
                <thead>
                    <tr>
                        <th colspan="2">Enter Rating Here</th>
                    </tr>
                </thead>
                <tbody clas="table-hover">
                    <tr>
                    	<td class="text-left">Movie Name</td>
                    	<td class="text-left"><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td class="text-left">Vote</td>
                        <td class="text-left"><input type="text" name="stars" value="" /></td>
                    </tr>
                    <tr>
                        <td class="text-left">Review</td>
                        <td class="text-left"><input type="text" name="review" value="" /></td>
                    </tr>
                    <tr>
                        <td class="text-left">Date</td>
                        <td class="text-left"><input type="date" name="ratdate" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td class="text-left"><input type="submit" value="Submit" class ="btn"/></td>
                        <td class="text-left"><input type="reset" value="Reset" class="btn"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">Don't Want To Rate <div id="links"><a href="movie_details.jsp">Go Back</a></div></td>
                    </tr>
                </tbody>
            </table>
            </center>
            </form>
        
    </body>
</html>