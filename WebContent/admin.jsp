<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
</head>
<body>
<div class="header-w3l">
		<h1>ADMIN LOGIN</h1>
	</div>
<div class="main-content-agile">
	<div class="sub-main-w3">	
	<form method="post" action="rateServlet">
			<input placeholder="Your username" name="uname" class="user" type="text" required=""><br>
			<input  placeholder="Password" name="pass" class="pass" type="password" required=""><br>
			<input type="submit" value="">
	<!-- <div class="backg">
		<div id="cover">
            <center>
            <table border="1" width="30%" cellpadding="3" class="table-fill">
                <thead>
                    <tr>
                        <th colspan="2" class="text-left">Admin Login Here</th>
                    </tr>
                </thead>
                <tbody class="table-hover">
                    <tr>
                        <td class="text-left">User Name</td>
                        <td class="text-left"><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td class="text-left">Password</td>
                        <td class="text-left"><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td class="text-left"><input type="submit" value="Login" id="popUpYes"/></td>
                        <td class="text-left"><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
            </div>
            </div>-->
        </form>
        </div>
        </div>
        
</body>
</html>