
<%@page import="DB.DataBase"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yatra</title>
    </head>
    <body>
      <%
       int b=0;
          String foodcategory=request.getParameter("foodcategory");
          String foodname=request.getParameter("foodname");
          String fooddescription=request.getParameter("fooddescription");
          String foodprice=request.getParameter("foodprice");
         DataBase db=new DataBase();
         Connection con=db.getConnection();
         Statement st=con.createStatement();
         
          b=st.executeUpdate("insert into food (foodname,fooddesc,category,price)values('"+foodname+"','"+fooddescription+"','"+foodcategory+"','"+foodprice+"')");
     
           if(b==1){
          
         request.getRequestDispatcher("addfood.jsp").include(request, response);
         %>
         
         <h1 align='center'>Inserted Successfully</h1>
         <%
           }
      else{
      request.getRequestDispatcher("addfood.jsp").include(request, response);
      %>
      <h1 align='center'>Values Not Updated</h1>
      <%
      }
      %>
    </body>
</html>
