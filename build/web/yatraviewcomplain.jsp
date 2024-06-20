
<%@page import="java.sql.*"%>
<%@page import="DB.DataBase"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Yatra Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link href="css/simple-sidebar.css" rel="stylesheet">
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
 <div class="col-md-2">
      
</div>

    <div class="container">
    <div class="row">
    <div class="col-lg-6">
    <h1>COMPLAINTS</h1>
     <%
     
     Connection con=null;
    Statement stmt=null;
    ServletContext context = getServletContext();
    String path =context.getRealPath("/upload/");
       DataBase db=new DataBase();
       try
       {
            con = db.getConnection();
            stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from complaint");
            %>
            <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>REGISTERED MOBILE NUMBER</th>
        <th>PROBLEM TYPE</th>
        <th>PROBLEM DESCRIPTION</th>
        <th>IMAGE</th>              
      </tr>
    </thead>
    <tbody>
               
    <%
            
            while(rs.next())
            { 
                String h=rs.getString(3);
                String h1=path+"/"+h;
                
                
               %>
     <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>                    
                    <td><%=rs.getString(4)%></td>
                    <td><img src="upload/<%=rs.getString(3)%>" width="100" height="100"></td>
                    
                </tr>
                
                <%               
            }  
%>
     </tbody>
  </table>
  </div> 
    
    <%                           
        }
       catch(Exception e)                           
       {
           e.printStackTrace();
       }
     
    %>

 
        </div>   
    </div>
</div>
</body>
</html>
