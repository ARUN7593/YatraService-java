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
     <a class="navbar-brand" href="login.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Wallet Recharge</a></li>
        <li><a href="#">Yatra Wallet</a></li> 
        <li><a href="login.jsp">Login</a></li> 
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
 String mob_db=null;
 String pass_db=null;
 int f=0;
  String mob=request.getParameter("mob");
  String oldpass=request.getParameter("oldpass");
  String newpass=request.getParameter("newpass");
  
  Connection con=null;
    Statement stmt=null;
       DataBase db=new DataBase();
       try
       {
            con = db.getConnection();
            stmt=con.createStatement();
             ResultSet rs=stmt.executeQuery("select * from register where mob='"+mob+"' and pass='"+oldpass+"'");
            while(rs.next())
            { 
                mob_db=rs.getString(4);
                pass_db=rs.getString(5);
                if((mob_db.equals(mob))&&(pass_db.equals(oldpass)))
                {
                    f=1;
                }
                
            }
             if(f==1)
              {
                 String sql="update register set pass='"+newpass+"' where mob='"+mob+"' and pass='"+oldpass+"'";
                 System.out.println(sql);
            stmt.executeUpdate(sql);
             String sql1="update wallet set pass='"+newpass+"' where mobile='"+mob+"' and pass='"+oldpass+"'";
              stmt.executeUpdate(sql1);
              String sql2="update train_service_register set password1='"+newpass+"' where mobile='"+mob+"' and password1='"+oldpass+"'";
              stmt.executeUpdate(sql2);
             }
             else
                                 {
                 response.sendRedirect("changepassword.jsp?msg=noaccount");
             }
            
            
     }
       catch(Exception e)
                           {
           e.printStackTrace();
     }
%>
<div class="form-group">    
<div class="col-sm-offset-3 col-sm-4 text-info"> 
        
        <h4>New Password Changed Successfully!!!</h4>
        
</div>
</div>
    
    

</body>
</html>