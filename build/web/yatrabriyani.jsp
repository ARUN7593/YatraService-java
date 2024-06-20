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
                 
//          itm.push(document.getElementById("item"+i).value);   
//          pric.push(document.getElementById("price"+i).value);

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
     <center>
     <p>Just a click</p> 
        <h1>CL2P</h1>  
  <p>(We are @ Your Service)</p> 
   </center>
</div>
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="main.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Contact us</a></li>
        <li><a href="#">Yatra Wallet</a></li> 
        <li><a href="login.jsp">Logout</a></li> 
      </ul>
    </div>
  </div>
</nav>
 <div class="col-md-2">
      <ul class="nav nav-pills nav-stacked">
        <li class="active" data-toggle="collapse"><a href="yatrabriyani.jsp">Biriyani</a></li>
        <li data-toggle="collapse" data-target="#demo1"><a>Rice & Noodles</a></li>
        <li data-toggle="collapse" data-target="#demo2"><a>Salad</a></li>
        <li><a href="#">Drinks</a></li>
        <li><a href="#">Veg Soup</a></li>
        <li><a href="#">Non Veg Soup</a></li>
        <li><a href="#">Starters - Veg</a></li>
        <li><a href="#">Starters - Non Veg</a></li>
        <li><a href="#">Egg Items</a></li>
        <li><a href="#">variety of Curd</a></li>
        <li><a href="#">Gravy Veg</a></li>
        <li><a href="#">Gravy Non Veg</a></li>
        <li><a href="#">Deserts</a></li>
      </ul>
</div>
    <div class="container">
    <div class="row">
        <div class="col-lg-6">
            <h1>Biryani & Rice</h1>
     <%
     int item_s=0;
     ArrayList categor=new ArrayList();
     ArrayList item1=new ArrayList();
     ArrayList price1=new ArrayList();
     Connection con=null;
    Statement stmt=null;
       DataBase db=new DataBase();
       try
       {
            con = db.getConnection();
            stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from food where category='Biryani & Rice'");
            while(rs.next())
            { 
                item1.add(rs.getString(2));
                categor.add(rs.getString(3));
                price1.add(rs.getInt(5));
            }
            item_s=item1.size();
           
            for(int i=0;i<item_s;i++)
            {
                  %>

        <div class="col-lg-8">
            <h3> <%=item1.get(i)%></h3>
            
            <%=categor.get(i)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=item1.get(i)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=price1.get(i)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=price1.get(i)%>
                 </button>
                 </form>                
            </div>
    <%
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>
      <div class="cart__inner">
    <div class="cart__content">
<div class="cart__header">
<h3>Your Order</h3>
      <table id="table_static">
          
        <tr>
            <td> Delivery time : 1hr</td>
        </tr>
        <tr>
            <td>online payment available</td>
        </tr>
        <tr>
            <td>Delivery Min.: Rs.200.00</td>
        </tr>
        <tr>
            <td>Accepts Vouchers</td>
        </tr>
           
        </table>
</div>

<div class="cart__empty cart__empty--inside">
<ul class="cart__empty__elements">
    <form action="yatrabriyani1.jsp">
   <%
for(int i=0;i<item1.size();i++)
{
    %>
   
    
    
    <table id="table<%=i%>"  style="display: none">
        
        <tr>
            <td> Selected Item :</td>  <td></td><td><input type="text" id="item_name<%=i%>" name="item_name<%=i%>"/></td>
        </tr>
        <tr>
            <td>Price :</td>  <td></td><td><input type="text" id="item_price<%=i%>" name="item_price<%=i%>"/></td>
        </tr>
        <tr>
            <td>Quantity :</td>  <td></td><td><input type="text" id="item_quantity<%=i%>" name="item_quantity<%=i%>"/></td>
        </tr>
            <tr>
                <td align="right">
                   
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_amt(<%=i%>)">
                 +
                 </button>
        
                </td>
                <td>&nbsp;</td>
                <td align="left">
          
                       <button class="btn btn-info btn-sm" type="button" onclick="return sub_amt(<%=i%>)">
                 -
                 </button>
        
                </td>
            </tr>
        </table>
    
    <%
}      


%>
<br>
<input type="hidden" name="item_size" value="<%=item_s%>"/>
<table id="table_pro"  style="display: none">
    <tr><td>
            <button class="btn btn-info" type="submit" >
                PROCEED
                 </button>
            
        </td></tr>
</table>
    </form>
</ul>
</div>




  


</div>
</div>  
</div>
</div>
</body>
</html>