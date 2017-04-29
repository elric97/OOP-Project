<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="movie.rate" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String id=session.getAttribute("uid").toString();
	int no=Integer.parseInt(id);
    String name= request.getParameter("name");    
    String stars= request.getParameter("stars");
    int star=Integer.parseInt(stars);
    String review= request.getParameter("review");
    String ratdate=request.getParameter("ratdate");
    rate u=new rate();
    Boolean b=u.add(no, name, star,review,ratdate);
    if (b) {
		response.sendRedirect("movie_details.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>