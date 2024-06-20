

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
       String pid="";
       String fname=request.getParameter("fname");
       String lname=request.getParameter("lname");
       String mail=request.getParameter("mail");
       String mob=request.getParameter("mob");
       String pass=request.getParameter("pwd");
       DataBase db=new DataBase();
       try
       {
            Connection con = db.getConnection();
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from register");
            while(rs.next())
            {
                String mob1=rs.getString(4);
                if(mob.equals(mob1))
                {
                    f=1;
                }
            }
           if(f==1)
           {
               response.sendRedirect("newuser.jsp?msg=alreadyexist");
           }
           else
           {
              pid= db.insert(fname, lname, mail, mob, pass);
            }
    
            response.sendRedirect("login.jsp?msg=registeredsucess&pid="+pid);
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
    </body>
</html>
