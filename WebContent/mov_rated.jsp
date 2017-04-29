<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="movie.rate" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,500,700|Oswald:300,400,700" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="mov_rated.css">
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
	rate r=new rate();
	String id=session.getAttribute("uid").toString();
	int no=Integer.parseInt(id);
	ResultSet rs=r.view(no);
	//ResultSet title=r.title(no);
%>
			<div class="backg">
			<div id="cover">
<center>
			
            <table border="1" cellpadding="6" class="table-fill">
			<thead>
                    <tr>
                        <th colspan="5" id="mrow">Rating Details</th>
                    </tr>
             </thead>
             <tbody clas="table-hover">
				<tr>
					<td class="text-left">mID</td>
					<td class="text-left">TITLE</td>
					<td class="text-left">YOUR RATING</td>
					<td class="text-left">DATE</td>
				</tr>
			<% while(rs.next()) {%>
				<tr>
					<td class="text-left"><%= rs.getInt("mid")%></td>
					<td class="text-left"><%= rs.getString("title")%></td>
					<td class="text-left"><%= rs.getInt("stars") %></td>
					<td class="text-left"><%=rs.getString("ratdate") %></td>
				</tr>
				<% }%>
			</div>
			</div>

<br>
<br>
<a href="movie_details.jsp">Go back</a>
</body>
</html>