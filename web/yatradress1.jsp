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
    int item_size=Integer.parseInt(request.getParameter("ct"));
    %>
    <h3>Selected Item's :</h3>
    <table align="center">
        <tr>
            <td><h4>Dress Category</h4></td><td><h4>Color</h4></td><td><h4>Price</h4></td>               
        </tr>
   
    <%
    ArrayList item_name=new ArrayList();
    ArrayList item_quantity=new ArrayList();
    ArrayList item_price=new ArrayList();
   for(int i=1;i<=item_size;i++)
   {
       item_name.add(request.getParameter("cat"+i));
       item_quantity.add(request.getParameter("col"+i));
       item_price.add(request.getParameter("pric"+i));
       %>
       <tr>
           <td><%out.println(request.getParameter("cat"+i));%></td>
            <td><%out.println(request.getParameter("col"+i));%></td>
           <td><%out.println(request.getParameter("pric"+i));%></td>
          
       </tr>
       
         <%
        String it=request.getParameter("cat"+i);
        it=it.trim();
        if(it!="")
        {
        if(total==0)
        {
            String n=request.getParameter("pric"+i);
            n=n.trim();
            total=Integer.parseInt(n);
        }
      
       else
       {
               total=total+Integer.parseInt(request.getParameter("pric"+i).trim());
       }
       }
           
   }
    session.setAttribute("item_name", item_name); 
    session.setAttribute("item_quantity", item_quantity); 
    session.setAttribute("item_price", item_price); 
String mob=(String)session.getAttribute("mob");
%>
       
       <%
       
       
%>
   
<tr><td>Total Price</td><td></td><td><%=total%></td></tr>
 </table>
 <form action="yatrapayment.jsp">
     <input type="hidden" name="mobile" value="<%=mob%>"/>
     <input type="hidden" name="amount" value="<%=total%>"/>
      <input type="hidden" name="cat" value="dress"/>
         <button class="btn btn-info btn-sm" type="submit">
                 Proceed Payment
                 </button>
     </form>
        </div>   
    </div>
</div>
</body>
</html>
