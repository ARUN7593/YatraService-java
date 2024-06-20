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
        <li class="active"><a href="yatraadminchefmenu.jsp">Home</a></li>
         <li class="active"><a href="medstatus.jsp">Status</a></li>
        
      </ul>
    </div>
  </div>
</nav>
    
       
        <%
String msg=request.getParameter("msg");
if(msg!=null)
   {
    if(msg.equals("UPDATED SUCCESSFULLY!!!"))
               {
        %>
    <div class="alert alert-success">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>UPDATED SUCCESSFULLY!!!!</strong>
</div>
    
    
    <%
    }
    if(msg.equals("SORRY ITEM ALREADY UPDATED!!!"))
               {
    %>
    <div class="alert alert-danger">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>SORRY ITEM ALREADY UPDATED!!!!</strong>
</div>
    
    
    <%
       }
}
%>  

    <div class="form-group text-info ">    
<div class="col-sm-offset-2"> 
          
    <h5>Yatra Medicine:</h5>
    <form method="post" action="addmedj.jsp">
<table>
    
       
        <tr>
            <th>Enter Medicine Name: </th>
            <td><input type="text" name="medname"/></td>
        </tr>
        <tr>
            <th>Enter Medicine Dosage: </th>
            <td><input type="text" name="meddose"/></td>
        </tr>
         <tr>
            <th>Select Medicine Category: </th>
            <td>    
                <select name="medcategory" class="form-control"> 
              
               <option  value="Vitamin">Vitamin</option>
               <option  value="Antibiotic">Antibiotic</option>
               <option  value="Syrup">Syrup</option>
               <option  value="Pain Killer">Pain Killer</option>
               <option  value="Pain Remover">Pain Remover</option>
                <option  value="Diapers">Diapers</option>
                 <option  value="Napkins">Napkins</option>
                    
               </select>
            </td> 
        </tr>
        <tr>
            <th colspan="2" algn="center"><input type="submit" value="Update"/></th>
            
        </tr>
        
</table>
   </form>
 
</div>
</div>
</body>
</html>