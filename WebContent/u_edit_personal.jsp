<%-- 
    Document   : f_edit_personal
    Created on : Apr 15, 2017, 3:35:49 PM
    Author     : Pushkar Garg
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Personal Details</title>
        <link rel="stylesheet" type="text/css" href="u_edit_personal.css"/>
    </head>
    <body>
    	<div class="navigation">
    	<ul>
    		<li><a href="about.jsp">About</a></li>
    		<li><a href='logged_in.jsp'>Go Back</a></li>
			<li ><a href="index.jsp" id="logo">MTDB</a></li>
			<li><a href='logout.jsp'>Log out</a></li>
    	</ul>
	</div>
        <form method="post" action="confirm_u_personal.jsp">
        <div class="backg">
		<div id="cover">
            <center>
            <table border="1" cellpadding="6" class="table-fill">
                <thead>
                    <tr>
                        <th colspan="2">Edit Details</th>
                    </tr>
                </thead>
                <tbody clas="table-hover">
                
                    <tr>
                        <td class="text-left">Name</td>
                        <td class="text-left"><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td class="text-left">Email</td>
                        <td class="text-left"><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td class="text-left">Password</td>
                        <td class="text-left"><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td class="text-left"><input type="submit" value="Update" /></td>
                        <td class="text-left"><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
        </center>
        </div>
        </div>
        </form>
    </body>
</html>
