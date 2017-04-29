<%@page language="java"%>
<%@page import="java.sql.*"%>
<html>
<title><head>Editing Details</head></title>
<body>
<table border="1">
<tr><th>UID</th><th>Name</th><th>Email</th><th>Password</th><th colspan="2">Change</th></tr>
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
ResultSet rs = st.executeQuery("select * from user where uid =" + no);
out.print("Current Details");
session.setAttribute("uid",id);

while(rs.next()){
%>
<tr>

		<td><%=rs.getInt("uid")%></td>
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("email")%></td>
		<td><%=rs.getString("pass")%></td></tr>
<form method="post" action="admin_editted.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                    <tr> </tr>
                        <th colspan="2">Enter New Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
<%
}
}
catch(Exception e){}
%>
</body>
</table>
</html>

