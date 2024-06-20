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
     int i=Integer.parseInt(request.getParameter("i"));
     i=i-1;
      int p=0;
      int ct=Integer.parseInt(request.getParameter("ct"));
      int p1=0;
     String item=request.getParameter("item");
     item=item.trim();
     String price=request.getParameter("price");
    int add_price=Integer.parseInt(request.getParameter("p"));
     DataBase db=new DataBase();
     try
     {
             
            Connection con = db.getConnection();
            Statement stmt=con.createStatement();
            ResultSet rs1=stmt.executeQuery("select * from food where category='Biryani & Rice'");
           
            while(rs1.next())
            {
                
                String s=rs1.getString(2);
                
                if(s.equals(item))
                {
                       p=rs1.getInt(5);
                       
                                                
                %>
    <div class="col-lg-8">
            <h3> <%out.println(rs1.getString(2));%></h3>
            
            <%out.println(rs1.getString(3));%>
            </div>
            <div class="col-lg-2">
                <form method="get" action="yatrabriyani1.jsp">
                 <input type="hidden" name="item" value="<%out.println(rs1.getString(2));%>">
                 <input type="hidden" name="price" value="<%out.println(rs1.getInt(5));%>">
                 <button class="btn btn-primary" type="submit">
                     <%out.println(rs1.getInt(5));%>
                 </button>
                 </form>
                
        </div>
        
        
    
    
    
    <%
                }
             else
           {
                    %>
      <div class="col-lg-8">
            <h3> <%out.println(rs1.getString(2));%></h3>
            
            <%out.println(rs1.getString(3));%>
            </div>
            <div class="col-lg-2">
                <form method="get" action="yatrabriyani1.jsp">
                 <input type="hidden" name="item" value="<%out.println(rs1.getString(2));%>">
                 <input type="hidden" name="price" value="<%out.println(rs1.getInt(5));%>">
                 <button class="btn btn-primary" type="submit">
                     <%out.println(rs1.getInt(5));%>
                 </button>
                 </form>
                
        </div>
        
            <%
             }
            }  
add_price=add_price-ct;                         
       }
       catch(Exception ex)
       {
            out.println(ex);
       }
            

%>
    
         
        </div>
      <div class="cart__inner">
    <div class="cart__content">

        


<%

if(add_price!=0)
{

%>
<div class="cart__header">
<div class="cart__header__title">
     <h3>Your order</h3>
</div>
</div>




<div class="cart__empty cart__empty--inside">
    <div class="container">
        <div class="col-lg-4">Quantity</div>
        <div class="col-lg-1"><%=i%></div>
        <div class="col-lg-3">Select Item : <%out.println(item);%></div>
        
        <table>
            <tr>
                <td>
                   <form action="yatrabriyani1_add.jsp">
                       <input type="hidden" value="<%=item%>" name="item">
                       <input type="hidden" value="<%=price%>" name="price">
                       <input type="hidden" value="<%=i%>" name="i">
                       <input type="hidden" value="<%=add_price%>" name="p">
                       <input type="hidden" value="<%=ct%>" name="ct">
         <button class="btn btn-info btn-sm" type="submit">
                 +
                 </button>
        </form> 
                </td>
                <td>&nbsp;</td>
                <td>
           <form action="yatrabriyani1_minus.jsp">
                         <input type="hidden" value="<%=item%>" name="item">
                       <input type="hidden" value="<%=price%>" name="price">
                       <input type="hidden" value="<%=i%>" name="i">
                        <input type="hidden" value="<%=add_price%>" name="p">
                       <input type="hidden" value="<%=ct%>" name="ct">
         <button class="btn btn-info btn-sm" type="submit">
                 -
                 </button>
        </form> 
                </td>
            </tr>
        </table>
         
         <div class="col-lg-3">Total price : <%out.println(add_price);%></div>
        
        
    </div>
    

</div>

  <%
}  
%>                      
</div>
</div>  
</div>
</div>
</body>
</html>
