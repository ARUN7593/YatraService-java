<%-- 
    Document   : adminligin
    Created on : 7 May, 2022, 1:03:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style media="screen">
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	list-style: none;
	font-family: 'Montserrat', sans-serif;
}

body{
   background-image: url("images/train.jpg");
                background-repeat: no-repeat;
                background-size: cover;
 
}
table{
    
    padding-top:10px;
    width:300px;
    height:200px;
    font-size:30px;
    color:white;
}
  </style>
    </head>
    <body>
        <center>
        
<h1 style="padding:100px; font-family: TimesNewRomans;color:white;">Admin Login</h1><br>
            <form action="">
            <table>
                <tr>
                    <td><label>Name:</label></td>
                    <td><input type="text" name="name" required></td>
                </tr>
                <tr>
                    <td><label>Password:</label></td>
                    <td><input type="password" name="pass" required></td>
                    
         </tr>
         <tr>
             <td><a href="home.jsp" class="back">Back</a></td>
             <td><input type="submit" value="Submit" name="submit"></td>
         </tr>
            </table>
            </form>
        </div>
    </center>
    </body>


<%
if(request.getParameter("submit")!=null)
{
String name=request.getParameter("name");
String pass=request.getParameter("pass");


if(name.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin"))
{
    response.sendRedirect("yatraadmin.jsp");
}
else
{
    out.print("<h2><center>Please Enter the Correct Value</center></h2>");
}

}
%>
    </body>
</html>
