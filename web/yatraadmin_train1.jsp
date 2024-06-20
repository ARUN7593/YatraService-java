<%@page import="DB.Id_class"%>
<%@page import="java.sql.*"%>
<%@page import="DB.DataBase"%>
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
       String trainno=request.getParameter("trainno");
       String mail=request.getParameter("mail");
       String mob=request.getParameter("mob");
       String pwd=request.getParameter("pwd");       
       DataBase db=new DataBase();
       Id_class pass_id=new Id_class();
       int id=pass_id.id();  
       String passenger_id="100011".concat(Integer.toString(id));
       try
       {
            Connection con = db.getConnection();
            Statement stmt=con.createStatement();
            String sql="insert into train_service_register values('"+trainno+"','"+mail+"','"+mob+"','"+pwd+"','"+id+"','"+passenger_id+"')";
            System.out.println(sql);
            stmt.execute(sql);   
            response.sendRedirect("yatraadmin_train.jsp?msg=registeredsucess&passenger_id='"+passenger_id+"'");
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
%>
    </body>
</html>
