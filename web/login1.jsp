
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
       String pid=request.getParameter("passenger_id");
       String mob=request.getParameter("mob");
       String pass=request.getParameter("pwd");
       DataBase db=new DataBase();
       try
       {
            Connection con = db.getConnection();
             boolean b=db.account(mob,pass,pid);
             if(b==true)
             {
                 session.setAttribute("mob", mob);
                  response.sendRedirect("main.jsp");
             }
             else
             {
                  response.sendRedirect("login.jsp?msg=loginfailed");
             }
           
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
    </body>
</html>
