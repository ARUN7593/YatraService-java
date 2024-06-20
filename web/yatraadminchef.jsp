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
  <script>  
      var n;
function Validatecategory(i)
{
    
   // alert(i);
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
      <a class="navbar-brand" href="yatraadmin.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="yatraadminchefmenu.jsp">Home</a></li>
        <ul class="nav navbar-nav">
        <li class="active"><a href="addfood.jsp">Add Food</a></li>
        <li class="active"><a href="foodstatus.jsp">Status</a></li>
      </ul>
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
  
         <form action="yatrapayment.jsp"> cr  
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