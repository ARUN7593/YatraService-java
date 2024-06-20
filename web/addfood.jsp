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
      <a class="navbar-brand" href="yatraadminchef.jsp">Yatra Service</a>
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
          
    <h5>Yatra Chef :</h5>
    <form method="post" action="addfoodJ.jsp">
<table>
    
        <tr>
            <th>Select Food Category: </th>
            <td>    
                <select name="foodcategory" class="form-control"> 
                <option  value="Soups">Soups</option>
               <option  value="Starters: Veg. & Non-Veg">Starters: Veg. & Non-Veg</option>
               <option  value="Shawarmas & Rolls">Shawarmas & Rolls</option>
               <option  value="Indian Gravies: Veg.& Non-Veg">Indian Gravies: Veg.& Non-Veg</option>
               <option  value="Barbecue Charcoal Grilled: Veg. & Non-Veg">Barbecue Charcoal Grilled: Veg. & Non-Veg</option>
               <option  value="Fried Rice & Noodles">Fried Rice & Noodles</option>
               <option  value="Seafoods">Seafoods</option>
               <option  value="Pastas & Macaronis">Pastas & Macaronis</option>
               <option  value="Biryani & Rice">Biryani & Rice</option>
               <option  value="Breads">Breads</option>
               <option  value="Egg & Kada">Egg & Kada</option>
               <option  value="Short Dips">Short Dips</option>
               <option  value="Cold Appetizers">Cold Appetizers</option>
               <option  value="Beverages">Beverages</option>
               <option  value="Desserts & Ice Cream">Desserts & Ice Cream</option>       
               </select>
            </td> 
        </tr>
        <tr>
            <th>Enter Food Name: </th>
            <td><input type="text" name="foodname"/></td>
        </tr>
        <tr>
            <th>Enter Food Description: </th>
            <td><input type="text" name="fooddescription"/></td>
        </tr>
        <tr>
            <th>Enter Food Price: </th>
            <td><input type="text" name="foodprice"/></td>
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