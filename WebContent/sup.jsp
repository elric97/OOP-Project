<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Registration</title>
        <link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <div class="header-w3l">
		<h1>SIGN UP</h1>
	</div>
        	<div class="main-content-agile">
	<div class="sub-main-w3">	
		<form action="userReg" method="post">
			<input placeholder="Your username" name="name" class="user" type="text" required=""><br>
			<input placeholder="Email Address" type="text" class="user" name="email" value="" /><br>
			<input  placeholder="Password" name="pass" class="pass" type="password" required=""><br>
			<input type="submit" value="">
			<br><br>
			<a href="user.jsp" class="btn">Already Registered Click Here</a>
		</form>
		</div>
		</div>        
    
           <!--  <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
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
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>  -->
    </body>
</html>