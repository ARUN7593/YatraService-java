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
      function valid()
      {
          var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
          var fname=document.getElementById("fname").value;
          var lname=document.getElementById("lname").value;
          var mail=document.getElementById("mail").value;
          var mob=document.getElementById("mob").value;
          var pwd=document.getElementById("pwd").value;
          var cpwd=document.getElementById("cpwd").value;
          if(fname=="")
              {
                  alert("Enter First name");
                   return false;                  
              }
              if(lname=="")
              {
                  alert("Enter Last name");
                   return false;
              }
              if(mail=="")
              {
                  alert("Enter Mail ID");
                  return false;
              }
               
            if(!mail.match(mailformat))  
            {  
                alert("You have entered an invalid email address!");  
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
              if(cpwd=="")
              {
                  alert("Enter Conform Password");
                  return false;
              }
              if(mob.length!=10)
                  {
                      alert("Mobile Number should be 10 digit");
                      return false;
                  }
              if(pwd!=cpwd)
	 {
		 alert("Password doesnt match!!!");
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
if(msg.equals("alreadyexist"))
   {
    %>
    <div class="alert alert-danger">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Account Already Exists!</strong> your Mobile number already registered.
</div>
    
    
    <%
}}
%>
<div class="container">
    <form class="form-horizontal" role="form" action="newuser1.jsp" onsubmit="return valid();">
   <div class="form-group">    
    <div class="col-sm-offset-2 col-sm-4">
      <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name">
    </div>
  </div>
        <div class="form-group">    
    <div class="col-sm-offset-2 col-sm-4">
     
      <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name">
    </div>
  </div>
         <div class="form-group">    
    <div class="col-sm-offset-2 col-sm-4">
      <input type="text" class="form-control" id="mail" name="mail" placeholder="Mail ID">
      
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
    
    <div class="col-sm-offset-2 col-sm-4"> 
      <input type="password" class="form-control" id="cpwd" name="pwd" placeholder="Confirm password">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-2">
        <button type="submit" class="btn btn-default">LOGIN</button>
    </div>
  </div>
       
</form>
  
        </div>
</body>
</html>