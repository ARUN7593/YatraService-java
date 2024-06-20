
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
       int b=0;
          String medcategory=request.getParameter("medcategory");
          String medname=request.getParameter("medname");
          String meddescription=request.getParameter("meddose");
         
         DataBase db=new DataBase();
         Connection con=db.getConnection();
         Statement st=con.createStatement();
         
          b=st.executeUpdate("insert into medical (name,dosage,category)values('"+medname+"','"+meddescription+"','"+medcategory+"')");
     
           if(b==1){
          
         request.getRequestDispatcher("addmed.jsp").include(request, response);
         %>
         
         <h1 align='center'>Inserted Successfully</h1>
         <%
           }
      else{
      request.getRequestDispatcher("addmed.jsp").include(request, response);
      %>
      <h1 align='center'>Values Not Updated</h1>
      <%
      }
      %>
    </body>
</html>
