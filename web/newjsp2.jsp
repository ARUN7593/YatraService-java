<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@page import="DB.DataBase"%>
<%@page import="DB.AddCart"%>
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
<script>
var n;
function show(i)
{
    n=i;
    document.getElementById("div_img").style.display = "none"; 
    for (i = 0; i < 15; i++)
    {
        if(n==i)
        {
            document.getElementById("div_"+i).style.display = "block";
        }
        else
        {
                document.getElementById("div_"+i).style.display = "none";
               }               
           }           
      }
      </script>
   <script lang="javascript">
       
      var text = "";
       var itm = new Array();
       var pric = new Array();
       var n_item;
       var n_price;
       var quan=1;
      function add(i)
      {        
                document.getElementById("table"+i).style.display = "table";                 
                document.getElementById("table_pro").style.display = "table";                
                document.getElementById("table_static").style.display = "none";
                n_item=document.getElementById("item"+i).value;   
                n_price=document.getElementById("price"+i).value;

//      for(var i=0;i<itm.length;i++)
//          {
              document.getElementById("item_name"+i).value = n_item;
      document.getElementById("item_price"+i).value = n_price;
       document.getElementById("item_quantity"+i).value = quan;
//          }
          
     
}

function add_amt(i)
{
    
    var cur_item=document.getElementById("item_name"+i).value;
    
    if(cur_item.length>0)
        {           
 
    var cur_pric=parseInt(document.getElementById("item_price"+i).value)+(parseInt(document.getElementById("item_price"+i).value)/parseInt(document.getElementById("item_quantity"+i).value));
    var cur_quan=parseInt(document.getElementById("item_quantity"+i).value)+parseInt(quan);
    
     document.getElementById("item_price"+i).value =cur_pric;
       document.getElementById("item_quantity"+i).value = cur_quan;
}
else
    {
        alert("Select item first");
    }
}
   
function sub_amt(i)
{
    var cur_item=document.getElementById("item_name"+i).value;
     var cur_pric=parseInt(document.getElementById("item_price"+i).value);
    if(cur_item.length>0 && cur_pric>0)
        {           
 
    cur_pric=cur_pric-(parseInt(document.getElementById("item_price"+i).value)/parseInt(document.getElementById("item_quantity"+i).value));
    var cur_quan=parseInt(document.getElementById("item_quantity"+i).value)-parseInt(quan);
    
     document.getElementById("item_price"+i).value =cur_pric;
       document.getElementById("item_quantity"+i).value = cur_quan;
        }
         else
    {
        alert("Select item first");
    }
        if(cur_pric==0)
            {
                document.getElementById("table"+i).style.display = "none"; 
            }
       
} 
      
  </script>
</head>
<body>

<div class="container-fluid">
    <div class="bg-primary">
    <center>
     <p>Just a click</p> 
        <h1>CL2P</h1>  
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
        <li class="active"><a href="main.jsp">Home</a></li>
        <li><a href="yatrawallet.jsp">Wallet Recharge</a></li>
        <li><a href="viewwalletbalance.jsp">Yatra Wallet</a></li> 
        <li><a href="alert.jsp?page=viewwalletbalance.jsp">Alert</a></li> 
        <li><a href="login.jsp">Logout</a></li> 
      </ul>
    </div>
  </div>
</nav>
  <div class="row">
    <div class="col-sm-3">
        <ul class="nav nav-pills nav-stacked">
        <li><a href="#" onclick="return show(0)">Soups</a></li>
        <li><a href="#" onclick="return show(1)">Starters: Veg. & Non-Veg.</a></li>
        <li><a href="#" onclick="return show(2)">Shawarmas & Rolls</a></li>
        <li><a href="#" onclick="return show(3)">Indian Gravies: Veg.& Non-Veg.</a></li>
        <li><a href="#" onclick="return show(4)">Barbecue Charcoal Grilled: Veg. & Non-Veg.</a></li>
        <li><a href="#" onclick="return show(5)">Fried Rice & Noodles</a></li>
        <li><a href="#" onclick="return show(6)">Seafoods</a></li>
        <li><a href="#" onclick="return show(7)">Pastas & Macaronis</a></li>
        <li><a href="#" onclick="return show(8)">Biryani & Rice</a></li>
        <li><a href="#" onclick="return show(9)">Breads</a></li>
        <li><a href="#" onclick="return show(10)">Egg & Kada</a></li>
        <li><a href="#" onclick="return show(11)">Short Dips</a></li>
        <li><a href="#" onclick="return show(12)">Cold Appetizers</a></li>
        <li><a href="#" onclick="return show(13)">Beverages</a></li>
        <li><a href="#" onclick="return show(14)">Desserts & Ice Cream</a></li>
      </ul>
    
    </div>
    
    <div class="col-sm-6">
        
    
    <div class="container" id="div_img"> 
        
        
  <div class="row">          
  <div class="col-sm-3">
            <img src="images/1.jpg" class="img-rounded" width="200" height="150">        
  </div>
  <div class="col-sm-3">     
            <img src="images/2.jpg" class="img-rounded" width="200" height="150">      
  </div>
  </div>
 <div class="row">          
  <div class="col-sm-3"> 
            <img src="images/3.jpg" class="img-rounded" width="200" height="150">        
  </div>
  <div class="col-sm-3">     
            <img src="images/4.jpg" class="img-rounded" width="200" height="150">      
  </div>
  </div>
                <div class="row">          
  <div class="col-sm-3"> 
            <img src="images/5.jpg" class="img-rounded" width="200" height="150">        
  </div>
  <div class="col-sm-3">     
            <img src="images/6.jpg" class="img-rounded" width="200" height="150">      
  </div>
  </div>
                <div class="row">          
  <div class="col-sm-3"> 
            <img src="images/7.jpg" class="img-rounded" width="200" height="150">        
  </div>
  <div class="col-sm-3">     
            <img src="images/8.jpg" class="img-rounded" width="200" height="150">      
  </div>
  </div>
                <div class="row">          
  <div class="col-sm-3"> 
            <img src="images/9.jpg" class="img-rounded" width="200" height="150">        
  </div>
  <div class="col-sm-3">     
            <img src="images/10.jpg" class="img-rounded" width="200" height="150">      
  </div>
  </div>
                <div class="row">          
  <div class="col-sm-3"> 
            <img src="images/11.jpg" class="img-rounded" width="200" height="150">        
  </div>
  <div class="col-sm-3">     
            <img src="images/12.JPG" class="img-rounded" width="200" height="150">      
  </div>
  </div>
        <div class="row">          
  <div class="col-sm-3"> 
            <img src="images/13.jpg" class="img-rounded" width="200" height="150">        
  </div>
  <div class="col-sm-3">     
            <img src="images/14.jpg" class="img-rounded" width="200" height="150">      
  </div>
  </div>        
 </div>     
        <h5>Yatra Chef :</h5>
<table>
        <tr>
            <td><h6>Select Food Category</h6></td>
            <td>
                <select onchange="return Validatecategory(this.value)" class="form-control"> 
               <option  value="0">Soups</option>
               <option  value="1">Starters: Veg. & Non-Veg</option>
               <option  value="2">Shawarmas & Rolls</option>
               <option  value="3">Indian Gravies: Veg.& Non-Veg</option>
               <option  value="4">Barbecue Charcoal Grilled: Veg. & Non-Veg</option>
               <option  value="5">Fried Rice & Noodles</option>
               <option  value="6">Seafoods</option>
               <option  value="7">Pastas & Macaronis</option>
               <option  value="8">Biryani & Rice</option>
               <option  value="9">Breads</option>
               <option  value="10">Egg & Kada</option>
               <option  value="11">Short Dips</option>
               <option  value="12">Cold Appetizers</option>
               <option  value="13">Beverages</option>
               <option  value="14">Desserts & Ice Cream</option>         
               </select>
            </td> 
        </tr>      
</table>
  <%
     DataBase db=new DataBase();
     Connection con = db.getConnection();
     Statement stmt=con.createStatement();
  %>
<div class="container">
    <div class="row">
        <div class="col-lg-6" id="div_0" style="display: none">
            <h1>Selected Item is : <i>Soups</i></h1>
     <div class="form-group"> 
  
         <form action="yatraadminchef1.jsp">
              <input type="hidden" name="cate" value="Soups"/>
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select name="foodname" class="form-control">
          <%   
          ResultSet rs=stmt.executeQuery("select * from food where category='Soups'");
     while(rs.next())
            {
         
     %>

                <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>



 <div class="col-lg-6" id="div_1" style="display: none">
            <h1>Selected Item is : <i>Starters: Veg. & Non-Veg</i></h1>
     <div class="form-group"> 
  
     <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Starters: Veg. & Non-Veg">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs1=stmt.executeQuery("select * from food where category='Starters: Veg. & Non-Veg'");
     while(rs1.next())
            {
         
     %>

                <option value="<%=rs1.getString(2)%>"><%=rs1.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_2" style="display: none">
            <h1>Selected Item is : <i>Shawarmas & Rolls</i></h1>
     <div class="form-group"> 
  
    <form action="yatraadminchef1.jsp">
        
          <input type="hidden" name="cate" value="Shawarmas & Rolls">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs2=stmt.executeQuery("select * from food where category='Shawarmas & Rolls'");
     while(rs2.next())
            {
         
     %>

                <option value="<%=rs2.getString(2)%>"><%=rs2.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_3" style="display: none">
            <h1>Selected Item is : <i>Indian Gravies: Veg.& Non-Veg</i></h1>
     <div class="form-group"> 
  
     <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Indian Gravies: Veg.& Non-Veg">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs3=stmt.executeQuery("select * from food where category='Indian Gravies: Veg.& Non-Veg'");
     while(rs3.next())
            {
         
     %>

                <option value="<%=rs3.getString(2)%>"><%=rs3.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_4" style="display: none">
            <h1>Selected Item is : <i>Barbecue Charcoal Grilled: Veg. & Non-Veg</i></h1>
     <div class="form-group"> 
  
      <form action="yatraadminchef1.jsp">
         
          <input type="hidden" name="cate" value="Barbecue Charcoal Grilled: Veg. & Non-Veg">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs4=stmt.executeQuery("select * from food where category='Barbecue Charcoal Grilled: Veg. & Non-Veg'");
     while(rs4.next())
            {
         
     %>

                <option value="<%=rs4.getString(2)%>"><%=rs4.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_5" style="display: none">
            <h1>Selected Item is : <i>Fried Rice & Noodles</i></h1>
     <div class="form-group"> 
  
     <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Fried Rice & Noodles">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs5=stmt.executeQuery("select * from food where category='Fried Rice & Noodles'");
     while(rs5.next())
            {
         
     %>

                <option value="<%=rs5.getString(2)%>"><%=rs5.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_6" style="display: none">
            <h1>Selected Item is : <i>Seafoods</i></h1>
     <div class="form-group"> 
  
     <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Seafoods">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs6=stmt.executeQuery("select * from food where category='Seafoods'");
     while(rs6.next())
            {
         
     %>

                <option value="<%=rs6.getString(2)%>"><%=rs6.getString(2)%></option> 
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_7" style="display: none">
            <h1>Selected Item is : <i>Pastas & Macaronis</i></h1>
     <div class="form-group"> 
  
     <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Pastas & Macaronis">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs7=stmt.executeQuery("select * from food where category='Pastas & Macaronis'");
     while(rs7.next())
            {
         
     %>

                <option value="<%=rs7.getString(2)%>"><%=rs7.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_8" style="display: none">
            <h1>Selected Item is : <i>Biryani & Rice</i></h1>
     <div class="form-group"> 
  
      <form action="yatraadminchef1.jsp">
       
         <input type="hidden" name="cate" value="Biryani & Rice">
 <table>
             <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs8=stmt.executeQuery("select * from food where category='Biryani & Rice'");
     while(rs8.next())
            {
         
     %>

                <option value="<%=rs8.getString(2)%>"><%=rs8.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_9" style="display: none">
            <h1>Selected Item is : <i>Breads</i></h1>
     <div class="form-group"> 
  
     <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Breads">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs9=stmt.executeQuery("select * from food where category='Breads'");
     while(rs9.next())
            {
         
     %>

                <option value="<%=rs9.getString(2)%>"><%=rs9.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_10" style="display: none">
            <h1>Selected Item is : <i>Egg & Kada</i></h1>
     <div class="form-group"> 
  
     <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Egg & Kada">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs10=stmt.executeQuery("select * from food where category='Egg & Kada'");
     while(rs10.next())
            {
         
     %>

                <option value="<%=rs10.getString(2)%>"><%=rs10.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_11" style="display: none">
            <h1>Selected Item is : <i>Short Dips</i></h1>
     <div class="form-group"> 
  
    <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Short Dips">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs11=stmt.executeQuery("select * from food where category='Short Dips'");
     while(rs11.next())
            {
         
     %>

                <option value="<%=rs11.getString(2)%>"><%=rs11.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_12" style="display: none">
            <h1>Selected Item is : <i>Cold Appetizers</i></h1>
     <div class="form-group"> 
  
   <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Cold Appetizers">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs12=stmt.executeQuery("select * from food where category='Cold Appetizers'");
     while(rs12.next())
            {
         
     %>

                <option value="<%=rs12.getString(2)%>"><%=rs12.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
           <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_13" style="display: none">
            <h1>Selected Item is : <i>Beverages</i></h1>
     <div class="form-group"> 
  
    <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Beverages">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs13=stmt.executeQuery("select * from food where category='Beverages'");
     while(rs13.next())
            {
         
     %>

                <option value="<%=rs13.getString(2)%>"><%=rs13.getString(2)%></option>
               
                
    
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
               <div class="col-lg-6" id="div_14" style="display: none">
            <h1>Selected Item is : <i>Desserts & Ice Cream</i></h1>
     <div class="form-group"> 
  
    <form action="yatraadminchef1.jsp">
          <input type="hidden" name="cate" value="Desserts & Ice Cream">
 <table>
        <tr>
            <td><h4>Select Food Category</h4></td>
            <td>
                <select class="form-control" name="foodname">
          <%   
          ResultSet rs14=stmt.executeQuery("select * from food where category='Desserts & Ice Cream'");
     while(rs14.next())
            {        
     %>

                <option value="<%=rs14.getString(2)%>"><%=rs14.getString(2)%></option>        
    <%
            }
    %>
              </select></td>
        </tr>  
        <tr>
            <td><h4>Today Count</h4></td>
            <td>
                <select class="form-control" name="count"> 
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                <option value="100">100</option>
                </select>                
            </td>
        </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="ADD"></td>
        </tr>
</table>
        </form>      
     </div> 
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
</div>
</div>
</body>
</html>
