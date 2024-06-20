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
     <div class="bg-primary">
    <center>
     <p>Just a click</p> 
        <h1>ALL IN ONE</h1>  
  <p>(We are @ Your Service)</p> 
   </center>
        </div>
</div>
 <nav class="navbar navbar-default">
  <div class="bg-info container col-md-offset-3">
    <div class="navbar-header">
      <a class="navbar-brand" href="main.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="main.jsp">Home</a></li>
        <li><a href="yatrawallet.jsp">Wallet Recharge</a></li>
        <li><a href="viewwalletbalance.jsp">Yatra Wallet</a></li> 
        <li><a href="login.jsp">Logout</a></li> 
      </ul>
    </div>
  </div>
</nav>
    <div class="col-sm-2">
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">Yatra Wallet</a></li>
        <li><a href="#">Saved Details</a></li>
        <li><a href="#">Debit Card</a></li>
        <li><a href="#">Credit Card</a></li>
        <li><a href="#">Net Banking</a></li>
        <li><a href="#">Atm</a></li>
        <li><a href="#">Imps</a></li>
        
      </ul>
</div>
 
<%
  
    /*int amt_db=0;  
  String ip=request.getParameter("item_price");
  String in=request.getParameter("item_name");
  String iq=request.getParameter("item_quantity");
  ip=ip.trim();
  int amt1=Integer.parseInt(ip);
  Connection con=null;
    Statement stmt=null;
       DataBase db=new DataBase();
       try
       {
            con = db.getConnection();
            stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from wallet where item_price='"++"'");
            while(rs.next())
            { 
                amt_db=rs.getInt(2);
                
            }       
        }
       catch(Exception e)                           
       {
           e.printStackTrace();
       }

*/
%>
    
<table align="center">
    <tr>
        <td>
           <h3>Yatra Wallet Curret Balance : <%=amt_db%> </h3> 
        </td>
        
    </tr>
    <tr>
        <td>
            <h4>You have to pay : <%=ip%> </h4>
        </td>
        
    </tr>
    <tr>
        <td>
           <form action="yatrapayment1.jsp">
     <input type="hidden" name="item_price" value="<%=ip%>"/>     
     <input type="hidden" name="item_name" value="<%=in%>"/>
      <input type="hidden" name="item_quantity" value="<%=iq%>"/>
     <table align="center">
         <tr>
             <td>
                 <input type="password" name="pass"/>
             </td>
             <td>
                 <button class="btn btn-info btn-si8m" type="submit">
                 Proceed Payment
                 </button>
             </td>
         </tr>
     </table> 
     </form> 
        </td>
        
    </tr>
</table>


      
<div class="form-group">    
<div class="col-sm-offset-3 col-sm-4"> 
        
        
        
</div>
</div>
    
    

</body>
</html>