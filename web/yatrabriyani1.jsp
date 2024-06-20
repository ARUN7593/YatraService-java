<%@page import="java.util.ArrayList"%>
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
     <div class="bg-primary">
    <center>
     <p>Just a click</p> 
        <h1>ALL IN ONE</h1>  
  <p>(We are @ Your Service)</p> 
   </center>
        </div>
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
    
</div>

    <div class="container">
    <div class="row">
    <div class="col-lg-6">
            <h1>Payment Conformation</h1>
     <%
      int total=0;
    int item_size=Integer.parseInt(request.getParameter("item_size"));
    %>
    <h3>Selected Item's :</h3>
    <table align="center">
        <tr>
            <td><h4>Item Name</h4></td><td><h4>Quantity</h4></td><td><h4>Price</h4></td>               
        </tr>
   
    <%
    
    ArrayList item_name=new ArrayList();
    ArrayList item_quantity=new ArrayList();
    ArrayList item_price=new ArrayList();
    
    
    
   for(int i=0;i<item_size;i++)
   {
       item_name.add(request.getParameter("item_name"+i));
       item_quantity.add(request.getParameter("item_quantity"+i));
       item_price.add(request.getParameter("item_price"+i));
       %>
       <tr>
           <td><%out.println(request.getParameter("item_name"+i));%></td>
            <td><%out.println(request.getParameter("item_quantity"+i));%></td>
           <td><%out.println(request.getParameter("item_price"+i));%></td>
          
       </tr>
        
        <%
        String it=request.getParameter("item_name"+i);
        it=it.trim();
        if(it!="")
        {
        if(total==0)
        {
            String n=request.getParameter("item_price"+i);
            n=n.trim();
            total=Integer.parseInt(n);
        }
      
       else
       {
               total=total+Integer.parseInt(request.getParameter("item_price"+i).trim());
       }
       }
           
   }
    session.setAttribute("item_name", item_name); 
    session.setAttribute("item_quantity", item_quantity); 
    session.setAttribute("item_price", item_price); 
String mob=(String)session.getAttribute("mob");
%>
<tr><td>Total Price</td><td></td><td><%=total%></td></tr>
 </table>
 <form action="yatrapayment.jsp">
     <input type="hidden" name="mobile" value="<%=mob%>"/>
     <input type="hidden" name="amount" value="<%=total%>"/>
     <input type="hidden" name="cat" value="food"/>
     <center>  <button class="btn btn-info btn-sm" type="submit">
                 Proceed Payment
         </button></center>
     </form>
        </div>   
    </div>
</div>
</body>
</html>
