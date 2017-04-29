<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged In</title>
<link href="logged_in.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="navigation">
    	<ul>
    		<li><a href="about.jsp">About</a></li>
    		<li><a href='search.jsp'>Search</a></li>
			<li ><a href="index.jsp" id="logo">MTDB</a></li>
			<li><a href='logout.jsp'>Log out</a></li>
    	</ul>
	</div>
<center>
<h1>User Information</h1>
		
		
			<a href="u_personal_details.jsp" class="button">Personal Details</a>
		    <a href="movie_details.jsp" class="button">Movie Details</a>
		</center> 
        <!--  <form name="User_personal" action="u_personal_details.jsp" method="POST" class="form-style-9">
        <div class="answer"><input type="submit" value="PERSONAL DETAILS" name="personal_details"/></div>
        </form>
        <form name="Movie Details" action="movie_details.jsp" method="POST" class="form-style-9">
        <div class="answer"><input type="submit" value="MOVIE DETAILS" name="movie_details" class="btn"/></div>
        </form>-->


</body>
</html>