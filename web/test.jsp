<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@page import="DB.DataBase"%>
<%@page import="DB.AddCart"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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

    <%
    int i=0;
    int item_s=0;
    ArrayList categor=new ArrayList();
    ArrayList item1=new ArrayList();
    ArrayList price1=new ArrayList();
    Connection con=null;
    Statement stmt=null;
    DataBase db=new DataBase();
    con = db.getConnection();
    stmt=con.createStatement();

     Date today_date=new Date();
        SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
        String today_date_s=sdf1.format(today_date);
        
        
    

%>
    
  
        <div id="div_0" style="display: none">
            <h1>Soups</h1>
     <%
       try
       {
                     
           
                ResultSet rs1=stmt.executeQuery("select * from daily_food_count where foodcategory='Soups' and date_c='"+today_date_s+"'");
                while(rs1.next())
                {
                    String itemname=rs1.getString(2);
                    int count=rs1.getInt(3);  

                    
                    
                    ResultSet rs=stmt.executeQuery("select * from food where category='Soups'");
                 while(rs.next())
                 { 
                String foodname=rs.getString(2);
                String categ=rs.getString(4);
                                                          
                    if(count>0&&(itemname.equals(foodname)))
                    {
                         %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
                    }
           }
               
           i++;
    item_s++;
          
    
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>



 <div id="div_1" style="display: none">
            <h1>Starters: Veg. & Non-Veg</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Starters: Veg. & Non-Veg'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>



 <div id="div_2" style="display: none">
            <h1>Shawarmas & Rolls</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Shawarmas & Rolls'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_3" style="display: none">
            <h1>Indian Gravies: Veg.& Non-Veg</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Indian Gravies: Veg.& Non-Veg'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_4" style="display: none">
            <h1>Barbecue Charcoal Grilled: Veg. & Non-Veg</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Barbecue Charcoal Grilled: Veg. & Non-Veg'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_5" style="display: none">
            <h1>Fried Rice & Noodles</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Fried Rice & Noodles'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_6" style="display: none">
            <h1>Seafoods</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Seafoods'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_7" style="display: none">
            <h1>Pastas & Macaronis</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Pastas & Macaronis'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_8" style="display: none">
            <h1>Biryani & Rice</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Biryani & Rice'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_9" style="display: none">
            <h1>Breads</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Breads'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_10" style="display: none">
            <h1>Egg & Kada</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Egg & Kada'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_11" style="display: none">
            <h1>Short Dips</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Short Dips'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_12" style="display: none">
            <h1>Cold Appetizers</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Cold Appetizers'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_13" style="display: none">
            <h1>Beverages</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Beverages'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>

 <div id="div_14" style="display: none">
            <h1>Desserts & Ice Cream</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from food where category='Desserts & Ice Cream'");
            while(rs.next())
            { 
                
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%></h3>
            
            <%=rs.getString(3)%>
            </div>
            <div class="col-lg-2">
                 <form method="get" action="#">
                 <input type="hidden" name="item" id="item<%=i%>" value="<%=rs.getString(2)%>">
                 <input type="hidden" name="price1" id="price<%=i%>" value="<%=rs.getInt(5)%>">
                 <button class="btn btn-primary" type="button" onclick="return add(<%=i%>)">
                 <%=rs.getInt(5)%>
                 </button>
                 </form>                
            </div>
    <%
    i++;
    item_s++;
            }
              
                          
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
      
         
        </div>
          
          
          
          
          
          
    </div>
      
    <div class="col-sm-3">
        
        
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
         <form action="yatrabriyani1.jsp">
   <%
   
   System.out.println("item_s   "+item_s);
for(int j=0;j<item_s;j++)
{
    %>
   
    
    
    <table id="table<%=j%>" style="display: none">
        
        <tr>
            <td> Selected Item :</td>  <td></td><td><input type="text" id="item_name<%=j%>" name="item_name<%=j%>"/></td>
        </tr>
        <tr>
            <td>Price :</td>  <td></td><td><input type="text" id="item_price<%=j%>" name="item_price<%=j%>"/></td>
        </tr>
        <tr>
            <td>Quantity :</td>  <td></td><td><input type="text" id="item_quantity<%=j%>" name="item_quantity<%=j%>"/></td>
        </tr>
            <tr>
                <td align="right">
                   
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_amt(<%=j%>)">
                 +
                 </button>
        
                </td>
                <td>&nbsp;</td>
                <td align="left">
          
                       <button class="btn btn-info btn-sm" type="button" onclick="return sub_amt(<%=j%>)">
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


    </div>
          </div>
 </body>
</html>