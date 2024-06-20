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
      function valid2()
      {
          var mob=document.getElementById("mob").value;
         
          
              if(mob=="")
              {
                  alert("Enter Mobile Number");
                  return false;
              }
              
             

return true; 
}
  </script>
</head>
<body class="bg-primary">
<div class="container-fluid">
     <center>
     <p>Just a click</p> 
        <h1>ALL IN ONE</h1>  
  <p>(We are @ Your Service)</p> 
   </center>
</div>
     <nav class="navbar navbar-default">
  <div class="bg-info container col-md-offset-3">
    <div class="navbar-header">
      <a class="navbar-brand" href="login.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li><a href="login.jsp">Log-in to Yatra Service</a></li> 
        <li><a href="newuser.jsp">sign up Yatra Service</a></li>
      </ul>
    </div>
  </div>
        
</nav>
 
<div class="container">
    <h3>Forget Password?</h3>
    <form class="form-horizontal" role="form" action="forgetpass1.jsp" onsubmit="return valid2();">
  <div class="form-group">
    
    <div class="col-sm-offset-3 col-sm-3">
      <input type="mobile" class="form-control" id="mob" name="mob" placeholder="Enter Registered Mobile Number">
    </div>
  </div>
    
  <div class="form-group"> 
    <div class="col-sm-offset-3 col-sm-3">
      <button type="submit" class="btn btn-default">Get Password</button>
    </div>
      <div class="col-sm-3">
      We will send one time password on your mobile to reset your password.
    </div>
  </div>
       
</form>
</div>
</body>
</html>