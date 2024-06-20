
<%@page import="DB.CallSmscApi"%>
<%@page import="DB.DataBase"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yatra Service</title>
    </head>
    <body>
       <%
       int f=0;
        String mob=request.getParameter("mob");
       try{
      
       DataBase db=new DataBase();
       db.forgetpass(mob);
         response.sendRedirect("forgetpass1.jsp");
         
          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
    </body>
</html>


