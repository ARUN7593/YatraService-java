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
      <a class="navbar-brand" href="yatraadminchefmenu.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="yatraadminchefmenu.jsp">Home</a></li>
        <ul class="nav navbar-nav">
        <li class="active"><a href="yatraadminfood.jsp">Add Food</a></li>
        
      </ul>
      </ul>
    </div>
       
      
      
      
  </div>
</nav>
    
   

    <div class="form-group text-info ">    
<div class="col-sm-offset-2"> 
          


        <div class="col-lg-3">
            
        </div>
    
    <div class="col-lg-6">
        <form action="yatraadminfood1.jsp" >
            
       
        <table>
            
            <tr> 
                <td><p>   Food Name</td> 
                <td> <input type="text" name="fname"/></p></td>
            </tr>
            <tr> 
                <td><p>    Food Description</td> 
                <td> <input type="text" name="fdes"/></p></td>
            </tr>
          <tr> 
                <td><p>    Food Category</td> 
                <td> <input type="text" name="fcat"/></p></td>
          </tr>
                 <tr> 
                <td><p>    Food Price</td> 
                <td> <input type="text" name="fprice"/></p></td>
                 </tr>
               <tr> 
                   <td>
                       &nbsp;
                   </td>
                <td> <input type="submit" /></p></td>
                 </tr>
                     </table>
             </form>
        </div>
    <div class="col-lg-3">
            
        </div>
<!--        <div class="col-lg-2" >
           
        </div>    -->
        </div>
</div>
</div>
</body>
</html>