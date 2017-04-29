<%@page language="java"%>
<%@page import="java.sql.*"%>
<table border="1">
<%
	String id=request.getParameter("id").toString();
int no=Integer.parseInt(id);
/*  System.out.println("No is " + no);
*/
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_movie", "root", "rachit");
Statement st = conn.createStatement();
int i = st.executeUpdate("delete from user where uid=" + no);
if(i>0)
	response.sendRedirect("application.jsp");
}
catch(Exception e){}
%>
</table>
