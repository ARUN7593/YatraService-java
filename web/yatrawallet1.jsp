<%@page import="DB.DataBase"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Yatra Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
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
        <li><a href="#">Home</a></li>
        <li class="active"><a href="yatrawallet.jsp">Wallet Recharge</a></li>
        <li><a href="viewwalletbalance.jsp">Yatra Wallet</a></li> 
        <li><a href="login.jsp">Logout</a></li> 
      </ul>
    </div>
  </div>
</nav>
    <div class="col-sm-2">
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">Saved Details</a></li>
        <li><a href="#">Debit Card</a></li>
        <li><a href="#">Credit Card</a></li>
        <li><a href="#">Net Banking</a></li>
        <li><a href="#">Atm</a></li>
        <li><a href="#">Imps</a></li>
        
      </ul>
</div>
  <%
  int amt_db=0;
  String mob=request.getParameter("mob");
  String pass=request.getParameter("pass");
  String amt=request.getParameter("amt");
  amt=amt.trim();
  int amt1=Integer.parseInt(amt);
  Connection con=null;
    Statement stmt=null;
       DataBase db=new DataBase();
       try
       {
            con = db.getConnection();
            stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from wallet where mobile='"+mob+"' and pass='"+pass+"'");
            while(rs.next())
            { 
                amt_db=rs.getInt("amount");
                
            }
            amt_db=amt_db+amt1;
            String sql="update wallet set amount='"+amt_db+"' where mobile='"+mob+"'";
            stmt.executeUpdate(sql);
            
     }
       catch(Exception e)
                           {
           e.printStackTrace();
     }
%>
<div class="form-group">    
<div class="col-sm-offset-3 col-sm-4 text-info"> 
        
        <h4>Recharged Successfully!!!</h4>
        
</div>
</div>
    
    

</body>
</html>