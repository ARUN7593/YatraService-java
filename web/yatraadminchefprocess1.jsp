

<%@page import="DB.CallSmscApi_pc"%>
<%@page import="java.sql.*"%>
<%@page import="DB.DataBase"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Yatra Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link href="css/simple-sidebar.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
     <center>
     <p>Just a click</p> 
        <h1>ALL IN ONE</h1>  
  <p>(We are @ Your Service)</p> 
   </center>
</div>
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="main.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Contact us</a></li>
        <li><a href="#">Yatra Wallet</a></li> 
        <li><a href="login.jsp">Logout</a></li> 
      </ul>
    </div>
  </div>
</nav>
 <div class="col-md-2">
      <ul class="nav nav-pills nav-stacked">
        <li class="active" data-toggle="collapse"><a href="yatrabriyani.jsp">Biriyani</a></li>
        <li data-toggle="collapse" data-target="#demo1"><a>Rice & Noodles</a></li>
        <li data-toggle="collapse" data-target="#demo2"><a>Salad</a></li>
        <li><a href="#">Drinks</a></li>
        <li><a href="#">Veg Soup</a></li>
        <li><a href="#">Non Veg Soup</a></li>
        <li><a href="#">Starters - Veg</a></li>
        <li><a href="#">Starters - Non Veg</a></li>
        <li><a href="#">Egg Items</a></li>
        <li><a href="#">variety of Curd</a></li>
        <li><a href="#">Gravy Veg</a></li>
        <li><a href="#">Gravy Non Veg</a></li>
        <li><a href="#">Deserts</a></li>
      </ul>
</div>

    <div class="container">
    <div class="row">
    <div class="col-lg-6">
    <h1>On Processing</h1>
     <%
     int id=Integer.parseInt(request.getParameter("id"));
     String mob=request.getParameter("mob");
     Connection con=null;
    Statement stmt=null;
       DataBase db=new DataBase();
       try
       {
            con = db.getConnection();
            stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from transaction_details where TRANSACTION_ID='"+id+"'");
            if(rs.next())
            {
                String sql="update transaction_details set STATUS='completed' where TRANSACTION_ID='"+id+"'";
                stmt.executeUpdate(sql);
                CallSmscApi_pc sms=new CallSmscApi_pc();
                sms.sendsms(mob);
                response.sendRedirect("yatraadminchefprocess.jsp");
                     
            }                                      
        }
       catch(Exception e)                           
       {
           e.printStackTrace();
       }
     
     
     
     
     
     
     
    %>

 
        </div>   
    </div>
</div>
</body>
</html>