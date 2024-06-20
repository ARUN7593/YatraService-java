
<%@page import="java.sql.*"%>
<%@page import="DB.DataBase"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
        String foodname=request.getParameter("foodname");
        String count=request.getParameter("count");
        String cate=request.getParameter("cate");
        
        Date today_date=new Date();
        SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
        String today_date_s=sdf1.format(today_date);
        
        DataBase db=new DataBase();
        Connection con = db.getConnection();
        Statement stmt=con.createStatement();
        
        ResultSet rs = stmt.executeQuery("select * from daily_food_count");
        while(rs.next())
        {
            
            String un=rs.getString(1);
            String fn=rs.getString(2);
            if(today_date_s.equals(un)&&(foodname.equals(fn)))
            {
                f=1;
            }
         }
        if(f==1)
        {
            response.sendRedirect("yatraadminchef.jsp?msg=SORRY ITEM ALREADY UPDATED!!!");
        }
        if(f==0)
        {
            int val = stmt.executeUpdate("INSERT into daily_food_count(date_c,foodname,count,cate) VALUES('"+today_date_s+"','"+foodname+"','"+count+"','"+cate+"')");
         response.sendRedirect("yatraadminchef.jsp?msg=UPDATED SUCCESSFULLY!!!");
        }        
       
         
         

%>
    </body>
</html>
