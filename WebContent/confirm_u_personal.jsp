
<%@ page import ="java.sql.*" %>
<%@ page import="movie.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
//String id=request.getParameter("id");
//int num=Integer.parseInt(id);
user u=new user();
String id=session.getAttribute("uid").toString();
int no=Integer.parseInt(id);
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("pass");
try{
Boolean b=u.upd(no, name, email, password);
response.sendRedirect("logged_in.jsp");
//response.sendRedirect("/examples/jsp/application.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>
    </body>
</html>
