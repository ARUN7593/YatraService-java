<!DOCTYPE html>
<html lang="en">
<head>
  <title>Yatra Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script>
      function valid1()
      {
          var mob=document.getElementById("mob").value;
          var pwd=document.getElementById("pwd").value;
          var amt=document.getElementById("amt").value;
          
              if(mob=="")
              {
                  alert("Enter Mobile Number");
                  return false;
              }
              if(pwd=="")
              {
                  alert("Enter Password");
                  return false;
              }
              if(amt=="")
              {
                  alert("Enter Amount");
                  return false;
              }
                           
              
             
return true; 
}
  </script>
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
        <li class="active"><a href="yatrawallet.jsp">Wallet Recharge</a></li>
        <li><a href="viewwalletbalance.jsp">Yatra Wallet</a></li> 
       <!-- <li><a href="alert.jsp?page=yatrawallet.jsp">Alert</a></li> -->
        <li><a href="login.jsp">Logout</a></li> 
      </ul>
    </div>
  </div>
</nav>
    
    <div class="form-group text-info ">    
<div class="col-sm-offset-3 col-sm-4"> 
       <form action="yatrawallet1.jsp" onsubmit="return valid1();">
<center><h3>Yatra Wallet Recharge :</h3></center>
<table>
        <tr>
            <td><h4>Registered Mobile Number</h4></td><td><input type="text" id="mob" name="mob"/></td>              
        </tr>
         <tr>
            <td><h4>Password</h4></td><td><input type="password" id="pwd" name="pass" /></td>              
        </tr>
         <tr>
            <td><h4>Amount</h4></td><td><input type="text" id="amt" name="amt"/></td>              
        </tr>
        <tr>
            <td></td>
            <td> <button class="btn btn-info" type="submit" >
                Add Amount
                 </button></td>
        </tr>
</table>
</form> 
        
        
</div>
</div>
   
    


    
    

</body>
</html>