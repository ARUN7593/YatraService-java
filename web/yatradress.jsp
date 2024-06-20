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
  <script>
 var n;
 function show(i)
 {
    n=i;           
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
    <script LANGUAGE="JavaScript">
        <!-- 
        
       var k=1;
        
      
function  add_item(sel_item)
{
    var price=5;
     var wh=10;
       var dr=50;
        
    
     document.getElementById("table1"+k).style.display = "table";  
      document.getElementById("table_pro").style.display = "table";  
     document.getElementById("table_static").style.display = "none";
     
    var color=document.getElementById("color").value;
    var sel_item=sel_item;
    var dry=document.getElementById("dry").value;
    if(color=="White")
        {
            price=price+wh;
        }        
    
    if(dry=="Yes")
    {
        price=price+dr;
    }       
    
   
    document.getElementById("col"+k).value =color;
    document.getElementById("pric"+k).value =price;   
    document.getElementById("cat"+k).value =sel_item;
    k=k+1;
}



-->
</script>
</head>
<body>
    <div class="container-fluid bg-primary">
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
        <li><a href="login.jsp">Logout</a></li> 
      </ul>
    </div>
  </div>
</nav>
  <div class="col-md-2">
      <ul class="nav nav-pills nav-stacked">
        <li><a onclick="return show(0)">Shirt</a></li>
        <li><a onclick="return show(1)">Pant</a></li>
        <li><a onclick="return show(2)">Jeans</a></li>
        <li><a onclick="return show(3)">Lungi's</a></li>
        <li><a onclick="return show(4)">kurtha</a></li>
        <li><a onclick="return show(5)">Top</a></li>
        <li><a onclick="return show(6)">Bottom</a></li>
        <li><a onclick="return show(7)">Skrit</a></li>
        <li><a onclick="return show(8)">Sarees</a></li>      
      </ul>
</div>
     <div class="container">
    <div class="row">
        
        
        
        <div class="col-lg-6" id="div_0" style="display: none">
            <h1>Shirt</h1>
       <table>
        <input type="hidden" id="sel_item" name="sel_item" value="Shirt">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Size </label></td>
                 <td> 
                            <select id="size" class="input-medium" name="size">
                            <option>S</option>
                            <option>M</option>
                            <option>L</option>
                            <option>XL</option>
                            <option>XXL</option>
                            <option>XXXL</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Collored </label></td>
                 <td> 
                            <select id="coll" class="input-medium" name="coll">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
              <tr>
                 <td><label for="sel1">Full Hand </label></td>
                 <td> 
                            <select id="hand" class="input-medium" name="hand">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Shirt')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div>
        <div class="col-lg-6" id="div_1" style="display: none">
            <h1>Pant</h1>
       <table>
        <input type="hidden" id="sel_item1" name="sel_item" value="Pant">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Size </label></td>
                 <td> 
                            <select id="size" class="input-medium" name="size">
                            <option>28</option>
                            <option>30</option>
                            <option>32</option>
                            <option>34</option>
                            <option>36</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Full Pant</label></td>
                 <td> 
                            <select id="hand" class="input-medium" name="hand">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Pant')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div>
        <div class="col-lg-6" id="div_2" style="display: none">
            <h1>Jeans</h1>
       <table>
        <input type="hidden" id="sel_item2" name="sel_item" value="Jeans">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Size </label></td>
                 <td> 
                            <select id="size" class="input-medium" name="size">
                            <option>28</option>
                            <option>30</option>
                            <option>32</option>
                            <option>34</option>
                            <option>36</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Full Pant</label></td>
                 <td> 
                            <select id="hand" class="input-medium" name="hand">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Jeans')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div><div class="col-lg-6" id="div_3" style="display: none">
            <h1>Lungi's</h1>
       <table>
        <input type="hidden" id="sel_item3" name="sel_item" value="Lungi's">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>    
            
            
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Lungis')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div><div class="col-lg-6" id="div_4" style="display: none">
            <h1>Kurtha</h1>
       <table>
        <input type="hidden" id="sel_item4" name="sel_item" value="Kurtha">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Size </label></td>
                 <td> 
                            <select id="size" class="input-medium" name="size">
                            <option>S</option>
                            <option>M</option>
                            <option>L</option>
                            <option>XL</option>
                            <option>XXL</option>
                            <option>XXXL</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Collored </label></td>
                 <td> 
                            <select id="coll" class="input-medium" name="coll">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
              <tr>
                 <td><label for="sel1">Full Hand </label></td>
                 <td> 
                            <select id="hand" class="input-medium" name="hand">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Kurtha')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div><div class="col-lg-6" id="div_5" style="display: none">
            <h1>Top</h1>
       <table>
        <input type="hidden" id="sel_item5" name="sel_item" value="Top">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Size </label></td>
                <td> 
                            <select id="size" class="input-medium" name="size">
                            <option>S</option>
                            <option>M</option>
                            <option>L</option>
                            <option>XL</option>
                            <option>XXL</option>
                            <option>XXXL</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Collored </label></td>
                 <td> 
                            <select id="coll" class="input-medium" name="coll">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
              <tr>
                 <td><label for="sel1">Full Hand </label></td>
                 <td> 
                            <select id="hand" class="input-medium" name="hand">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Top')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div><div class="col-lg-6" id="div_6" style="display: none">
            <h1>Bottom</h1>
       <table>
        <input type="hidden" id="sel_item6" name="sel_item" value="Bottom">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Size </label></td>
                 <td> 
                            <select id="size" class="input-medium" name="size">
                            <option>24</option>
                            <option>26</option>
                            <option>28</option>
                            <option>30</option>
                            <option>32</option>
                            <option>34</option>
                            <option>36</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Bottom')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div><div class="col-lg-6" id="div_7" style="display: none">
            <h1>Skrit</h1>
       <table>
        <input type="hidden" id="sel_item7" name="sel_item" value="Skrit">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Size </label></td>
                 <td> 
                            <select id="size" class="input-medium" name="size">
                            <option>S</option>
                            <option>M</option>
                            <option>L</option>
                            <option>XL</option>
                            <option>XXL</option>
                            <option>XXXL</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Collored </label></td>
                 <td> 
                            <select id="coll" class="input-medium" name="coll">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
              <tr>
                 <td><label for="sel1">Full Hand </label></td>
                 <td> 
                            <select id="hand" class="input-medium" name="hand">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Skrit')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div><div class="col-lg-6" id="div_8" style="display: none">
            <h1>Sarees</h1>
       <table>
        <input type="hidden" id="sel_item8" name="sel_item" value="Sarees">
             <tr>
                 <td><label for="sel1">Color </label></td>
                 <td> 
                            <select id="color" class="input-medium" name="color">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                            </select>
                     (White Rs: 10/- Extra)
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Storned </label></td>
                 <td> 
                            <select id="coll" class="input-medium" name="coll">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Silk Saree's</label></td>
                 <td> 
                            <select id="hand" class="input-medium" name="hand">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Dry Clean </label></td>
                 <td> 
                            <select id="dry" class="input-medium" name="dry">
                            <option>Yes</option>
                            <option>No</option>
                            </select>
                     (Dry Clean Rs: 50/- Extra)
                 </td>
             </tr>
             <tr>
                 <td></td>
                  <td>
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item('Sarees')">
                 Okay!!!
                 </button>
                  </td>
                  
             </tr>
         </table>     
        </div>
        
        
      <div class="cart__inner">
    <div class="cart__content">
<div class="cart__header">

    
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
    <form action="yatradress1.jsp">
   <%
   
  
for(int k=1;k<=100;k++)
{
    %>
   
    
    <input type="hidden" name="ct" value="<%=100%>">
    
    
    <table id="table1<%=k%>" style="display: none">
        
        <tr>
            <td>Selected item :</td><td></td><td><input type="text" id="cat<%=k%>" name="cat<%=k%>"/></td>
        </tr>
        <tr>
            <td>Color :</td>  <td></td><td><input type="text" id="col<%=k%>" name="col<%=k%>"/></td>
        </tr>
        <tr>
            <td>Total Price :</td>  <td></td><td><input type="text" id="pric<%=k%>" name="pric<%=k%>"/></td>
        </tr>
            
        </table>
    
    <%
}      
    %>
<br>
<div>
<input type="hidden" name="item_size" value=""/>
<table id="table_pro"  style="display: none">
    <tr><td>
            <button class="btn btn-info" type="submit" >
                PROCEED
                 </button>
            
        </td></tr>
</table>
</div>
    </form>
</ul>
</div>







    
    


</div>


</div>
</div>  
</div>
</div>
</body>
</html>

