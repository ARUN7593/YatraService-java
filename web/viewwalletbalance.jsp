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

<div class="container-fluid bg-primary">
     <center>
     <p>Just a click</p> 
        <h1>ALL IN ONE</h1>  
  <p>(We are @ Your Service)</p> 
   </center>
</div>
   <nav class="navbar navbar-default">
  <div class="bg-info container col-md-offset-3">
    <div class="navbar-header">
      <a class="navbar-brand" href="main.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li><a href="main.jsp">Home</a></li>
        <li><a href="yatrawallet.jsp">Wallet Recharge</a></li>
        <li class="active"><a href="viewwalletbalance.jsp">Yatra Wallet</a></li> 
       <!-- <li><a href="alert.jsp?page=viewwalletbalance.jsp">Alert</a></li> -->
        <li><a href="login.jsp">Logout</a></li> 
      </ul>
    </div>
  </div>
</nav>
    
 
<%
  int amt_db=0;
  String mob=(String)session.getAttribute("mob");
  
  Connection con=null;
    Statement stmt=null;
       DataBase db=new DataBase();
       try
       {
            con = db.getConnection();
            stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from wallet where mobile='"+mob+"'");
            while(rs.next())
            { 
                amt_db=rs.getInt(2);
                
            }
           
           
     }
       catch(Exception e)
                           {
           e.printStackTrace();
     }
 
%>
<table align="center" >
    <tr><td><h4 class="text-info">Yatra Wallet Curret Balance : <%=amt_db%> </h4></td></tr>
    <tr><td>
            <form action="yatrawallet.jsp">Need Recharge ?? Click -->
            <button class="btn btn-info" type="submit" >Add Amount</button>
            </form>
        </td></tr>
</table>


   
<div class="form-group">    
<div class="col-sm-offset-3 col-sm-4"> 
        
        
        
</div>
</div>
    
    

</body>
</html>