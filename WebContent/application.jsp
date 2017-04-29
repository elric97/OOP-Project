<%@ page import="java.sql.*" %>
<html>
<head><title>Admin Powers </title>
<script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?id='+id;
    f.submit();
}
function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='delete.jsp?id='+id;

    f.submit();
}
</script>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,500,700|Oswald:300,400,700" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="application.css">
</head>
<body>
<div class="navigation">
    	<ul>
    		<li><a href="about.jsp">About</a></li>
    		<li><a href='search.jsp'>Search</a></li>
			<li ><a href="index.jsp" id="logo">MTDB</a></li>
			<li><a href='alogout.jsp'>Admin Log-out</a></li>
    	</ul>
	</div>
<br><br>
<form method="post" name="form">
<div class="backg">
		<div id="cover">
            <center>
            <h1>User Database</h1>
            <table border="1" cellpadding="6" class="table-fill">
<tr><th>UID</th><th>Name</th><th>Email</th><th>Password</th><th colspan="2">Change</th></tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "my_movie";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="rachit";

int sumcount=0;
Statement st;
try{
	Class.forName(driver);
	con = DriverManager.getConnection(url+db,userName,password);
	st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from user");

	%>
	<%while(rs.next()){%>
	<tr>
		<td class="text-left"><%=rs.getInt("uid")%></td>
		<td class="text-left"><%=rs.getString("name")%></td>
		<td class="text-left"><%=rs.getString("email")%></td>
		<td class="text-left"><%=rs.getString("pass")%></td>	
		<td class="text-left"><input type="button" name="edit" value="Edit" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="editRecord(<%=rs.getInt("uid")%>)" ></td>
		<td class="text-left"><input type="button" name="edit" value="Delete" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="deleteRecord(<%=rs.getInt("uid")%>)" ></td>
	</tr>
	<%
	}
}catch(Exception e){
		e.printStackTrace();
	}
	%>
</table>
</center>
</div>
</div>
</form>
</body>
