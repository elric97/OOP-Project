<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="search.css"/>
<title>Search</title>
<style>
input[type=button], input[type=submit], input[type=reset] {
    background-color: #ABCDEF;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
input[type=text] {
    width: 50%;
    padding: 10px 10px;
    margin: 8px 0;
    box-sizing: border-box;
}
select {
    width: 50%;
    padding: 10px 10px;
    border: none;
    border-radius: 4px;
    background-color: #ABCDEF;
}</style>
</head>
<body>
<div class="navigation">
    <ul>
      <li><a href="about.jsp">About</a></li>
	  <li><a href="sup.jsp">Sign Up</a></li>
      <li ><a href="index.jsp" id="logo">MTDB</a></li>
      <li><a href="user.jsp">Sign In</a></li>
      <li><a href="admin.jsp">Admin Login</a></li>
      </ul>
</div>
<div class="srch">
<form method="post" action="searching.jsp">

<center>
    <input type="text" name="search" placeholder="Search..">
    <select id="TYPE" name="type">
    <option value="title">TITLE</option>
    <option value="director">DIRECTOR</option>
    <option value="year">YEAR</option>
    <option value="rating">RATING</option>
  </select>
  <br><br>
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</center>
</div>
</form>



</body>
</html>