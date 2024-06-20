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
 
    for (i = 0; i < 7; i++)
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
      
            
      </ul>
    </div>
  </div>
</nav>
  <div class="row">
    <div class="col-sm-3">
        <ul class="nav nav-pills nav-stacked">
          <li><a href="#" onclick="return show(0)">Vitamin</a></li>
          <li><a href="#" onclick="return show(1)">Antibiotic</a></li>
          <li><a href="#" onclick="return show(2)">Syrup</a></li>
          <li><a href="#" onclick="return show(3)">Pain Killer</a></li>
          <li><a href="#" onclick="return show(4)">Pain Remover</a></li>
          <li><a href="#" onclick="return show(5)">Diaper</a></li>
          <li><a href="#" onclick="return show(6)">Napkins</a></li>

      </ul>
    
    </div>
    
    <div class="col-sm-6">
        
       

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
    
    

%>
     <div class="container">
  
<!--    <div class="row">-->
  
        <div id="div_0" style="display: none">
            <h1>Vitamin</h1>
     <%
       try
       {
                     
            ResultSet rs=stmt.executeQuery("select * from medical where category='Vitamin'");
            while(rs.next())
            { 
                     %>

        <div class="col-lg-8">
            <h3> <%=rs.getString(2)%>
                  <%  System.out.println(rs.getString(2));
                    %></h3>
            
            <%=rs.getString(3)%>
              <%  System.out.println(rs.getString(3));%>
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
            ex.printStackTrace();
       }
            

%>
      
         
        </div>



 <div id="div_1" style="display: none">
            <h1>Antibiotic</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from medical where category='Antibiotic'");
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
            <h1>Syrup</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from medical where category='Syrup'");
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
            <h1>Pain Killer</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from medical where category='Pain Killer'");
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
            <h1>Pain Remover</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from medical where category='Pain Remover'");
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
            ex.printStackTrace();
       }
            

%>
      
         
        </div>

 <div id="div_5" style="display: none">
            <h1>Diapers</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from medical where category='Diapers'");
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
            <h1>Napkins</h1>
     <%
       try
       {           
            ResultSet rs=stmt.executeQuery("select * from medical where category='Napkins'");
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
         <form action="yatramedical1.jsp">
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