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
      function valid3()
      {
          var mob=document.getElementById("mob").value;
          var opwd=document.getElementById("oldpass").value;
          var npwd=document.getElementById("newpass").value;
          
              if(mob=="")
              {
                  alert("Enter Mobile Number");
                  return false;
              }
              if(opwd=="")
              {
                  alert("Enter Old Password");
                  return false;
              }
              if(npwd=="")
              {
                  alert("Enter New Password");
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
     <%
String msg=request.getParameter("msg");
if(msg!=null){
if(msg.equals("noaccount"))
   {
    %>
    <div class="alert alert-danger">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Check Your Account!</strong> your Mobile number or Old Password is incorrect.
</div>
    
    
    <%
}}
%>
<div class="container">
    <h3>Change New Password!!!</h3>
    <form class="form-horizontal" role="form" action="changepassword1.jsp" onsubmit="return valid3();">
  <div class="form-group">
    
    <div class="col-sm-offset-3 col-sm-3">
      <input type="mobile" class="form-control" id="mob" name="mob" placeholder="Enter Registered Mobile Number">
    </div>
  </div>
          <div class="form-group">
    
    <div class="col-sm-offset-3 col-sm-3">
      <input type="password" class="form-control" id="oldpass" name="oldpass" placeholder="Old Password">
    </div>
  </div>
          <div class="form-group">
    
    <div class="col-sm-offset-3 col-sm-3">
      <input type="password" class="form-control" id="newpass" name="newpass" placeholder="New Password">
    </div>
  </div>
    
  <div class="form-group"> 
    <div class="col-sm-offset-3 col-sm-3">
      <button type="submit" class="btn btn-default">Change Password</button>
    </div>
      
  </div>
       
</form>
</div>
</body>
</html>