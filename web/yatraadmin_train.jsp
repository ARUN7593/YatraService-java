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
  <script>
      function train_valid()
      {
         
          var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
         
          var mail=document.getElementById("mail").value;
          mail=mail.trim();
          
          var mob=document.getElementById("mob").value;
          mob=mob.trim();
          
          
         
             
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
              
              if(mob.length!=10)
                  {
                      alert("Mobile Number should be 10 digit");
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
      <a class="navbar-brand" href="yatraadmin.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="yatraadmin.jsp">Home</a></li>
        
      </ul>
    </div>
  </div>
</nav>
    
    <%
String msg=request.getParameter("msg");

if(msg!=null)
{
    String passenger_id=request.getParameter("passenger_id");
    if(msg.equals("registeredsucess"))
    {
    
    %>
    <div class="alert alert-success">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Account Registered Successfully!</strong> your Train Number registered with Yatra Service.
</div>
    
    
    <%
}
      if(passenger_id!=null)
    {
    
    %>
    <div class="alert alert-info">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Your Passenger ID is : </strong><%=passenger_id%>
</div>
    
    
    <%
}
}

 
  Connection con=null;
    Statement stmt=null;
       DataBase db=new DataBase();
       try
       {
            con = db.getConnection();
            stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from train");
            %>
    
    <div class="container">
    <form class="form-horizontal" role="form" action="yatraadmin_train1.jsp" onsubmit="return train_valid();">
   <div class="form-group">    
    <div class="col-sm-offset-2 col-sm-4">
      
        
        <select name="trainno" class="form-control">
    <%
            while(rs.next())
            { 
                %>
    
                <option value="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></option>
      <%
                
            }
            %>
      </select>
                <%
           
           
     }
       catch(Exception e)
                           {
           e.printStackTrace();
     }
 
%>

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
    <div class="col-sm-offset-2 col-sm-2">
        <button type="submit" class="btn btn-default">ADD</button>
    </div>
  </div>
       
</form>
  
        </div>
</body>
</html>