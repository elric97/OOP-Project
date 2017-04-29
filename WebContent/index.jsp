<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="movie.userServlet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,500,700|Oswald:300,400,700" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="index.css">
<title>Insert title here</title>
</head>

<body>
<div class="navigation">
    <ul>
      <li><a href="about.jsp">About</a></li>
      <li><a href="search.jsp">Search</a></li>
      <li id="logo">MTDB</li>
      <%
      	if (((session.getAttribute("uname")==null)||(session.getAttribute("uname")==""))&&(session.getAttribute("aname")==null))
      	{
      %>
      <li><a href="sup.jsp">Sign Up</a></li>
      <li><a href="user.jsp">Sign In</a></li>
      <li><a href="admin.jsp">Admin Login</a></li>
    	<%
      	}
      	else if((session.getAttribute("aname")==null))
      	{
    	%>
    	<li><a href="logged_in.jsp"><%=session.getAttribute("uname") %></a></li>
    	<li><a href="logout.jsp">LogOut</a></li>
    	<% 
      	} 
      	else if((session.getAttribute("uname")==null))
      	{
      	%>
      	<li><a href="application.jsp">Admin Roles</a></li>
      	<li><a href="alogout.jsp">Admin Logout</a></li>
      	<%} %>
    </ul>
  </div>
<div id="cover">
	<div class="cover-content">
		<h3>Movie and TV online Database</h3>
		<h1>Your Daily Dose of Entertainment</h1>
	</div>
</div>
<div class="products">
    <h3 class="blue">Trending</h3>
    <div class="product">
      <img src="data\GWTW.jpg">
      <h3>Gone With The Wind</h3>
      <p>American film classic in which a manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods.</p>
    </div>

    <div class="product">
      <img src="data\4b.jpg">
      <h3>The Shawshank Redemption</h3>
      <p>Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.</p>
    </div>

    <div class="product">
      <img src="data\TG.jpg">
      <h3>The GodFather</h3>
      <p>The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.</p>
    </div>

    <div class="product">
      <img src="data\TDK.jpg">
      <h3>The Dark Knight</h3>
      <p>When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the Dark Knight must come to terms with one of the greatest psychological tests of his ability to fight injustice.</p>
    </div>
  </div>
</body>
</html>