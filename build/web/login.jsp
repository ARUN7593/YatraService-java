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
      function valid4()
      {
          var passenger_id=document.getElementById("passenger_id").value;
          var mob=document.getElementById("mob").value;
          var pwd=document.getElementById("pwd").value;
         
          if(passenger_id=="")
              {
                  alert("Enter Passenger ID Number");
                   return false;                  
              }
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
                  
             
      

return true; 
}
  </script>
</head>
<body class="bg-primary">

<div class="container-fluid">
     <center>
     <p>Just a click</p> 
        <h1>CL2P</h1>  
  <p>(We are @ Your Service)</p> 
   </center>
</div>
    <nav class="navbar navbar-default">
  <div class="bg-info container col-md-offset-3">
    <div class="navbar-header">
      <a class="navbar-brand" href="adminligin.jsp">Yatra Admin</a>
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
String pid=request.getParameter("pid");
if(msg!=null)
   {
    if(msg.equals("registeredsucess"))
               {
        %>
    <div class="alert alert-success">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Account Registered Successfully!</strong>
   <br/>
  <strong>Your Passenger ID is : <%=pid%></strong>
</div>
    
    
    <%
    }
    if(msg.equals("loginfailed"))
               {
    %>
    <div class="alert alert-success">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Login Failed Try Again!</strong>
</div>
    
    
    <%
       }
}
%>
<div class="container">
    <form class="form-horizontal" role="form" action="login1.jsp" onsubmit="return valid4();">
        
         <div class="form-group">    
    <div class="col-sm-offset-2 col-sm-4">
      <input type="text" class="form-control" id="passenger_id" name="passenger_id" placeholder="Enter Passenger ID">
    </div>
  </div>
  <div class="form-group">    
    <div class="col-sm-offset-2 col-sm-4">
      <input type="mobile" class="form-control" id="mob" name="mob" placeholder="Enter Registered Mobile Number">
    </div>
  </div>
  <div class="form-group">
    
    <div class="col-sm-offset-2 col-sm-4"> 
      <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter password">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-2">
      <button type="submit" class="btn btn-default">LOGIN</button>
    </div>
  </div>
       
</form>
     <div class="form-group">    
    <div class="col-sm-offset-3 col-sm-4"> 
        <a href="forgetpass.jsp" class="form-group bg-info">Forgot Password</a>
    </div>
  </div>
    <div class="form-group ">    
    <div class="col-sm-offset-3 col-sm-4"> 
        <a href="changepassword.jsp" class="form-group bg-info">Create a new Password</a>
    </div>
  </div>
        </div>
</body>
</html>