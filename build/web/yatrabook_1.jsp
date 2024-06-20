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
  
    <script LANGUAGE="JavaScript">
        <!-- 
        
       
        
function ValidateForm(i)
{
          
          document.getElementById("table"+i).style.display = "table";
 for (j = 1; j <=100; j++)
     {
       if(j!=i)
                     {
                         
                          document.getElementById("table"+j).style.display = "none";
                     }
             
    }      
}

function  add_item(k)
{
    var rent=10;
    alert(k);
    alert(document.getElementById("bookname"+k).value);
     document.getElementById("table1"+k).style.display = "table";  
      document.getElementById("table_pro").style.display = "table";  
     document.getElementById("table_static").style.display = "none";
    var bookname=document.getElementById("bookname"+k).value;
    var sdate=document.getElementById("sdate"+k).value;
    document.getElementById("book"+k).value =bookname;
    document.getElementById("rent_price"+k).value =rent;
    document.getElementById("ret_date"+k).value =sdate;
   
}
-->
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
        <li class="active" data-toggle="collapse"><a href="#">Novel</a></li>
        <li data-toggle="collapse" data-target="#demo1"><a>Short Story</a></li>
        <li data-toggle="collapse" data-target="#demo2"><a>New Papers</a></li>
        <li><a href="#">General Knowledge Books</a></li>
        <li><a href="#">Magazine</a></li>             
      </ul>
</div>
     <div class="container">
    <div class="row">
        <div class="col-lg-6">
            <h1>Novel</h1>
     <div class="form-group">
         
         
                                  
                
    <%
    ArrayList au=new ArrayList();
             ArrayList bn=new ArrayList();
             ArrayList lag=new ArrayList();
             ArrayList ed=new ArrayList();
    int ct=0;
    String book=request.getParameter("bookname");
    String lang=request.getParameter("lang");
    String edition=request.getParameter("edition");
    String author1=request.getParameter("author");
    if(book==null)
    {
        %>
    
              <table>
             <tr>
                 <td><label for="sel1">Author Name</label></td>
                 <td> 
                     <select id="sel1" class="input-medium" name="authorname" >
             <%
             
             
        String author=null;
     DataBase db=new DataBase();
       try
       {
            Connection con = db.getConnection();
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from book");
            while(rs.next())
            {
                au.add(rs.getString(2));
                bn.add(rs.getString(3));
                lag.add(rs.getString(4));
                ed.add(rs.getString(5));
                author=rs.getString(2);
                ct++;
                %>

                <option value="<%=author%>" onclick="return ValidateForm(<%=ct%>)"><%=author%></option>
               
                
    
    <%
            }
    %>
    </select>

     </td>
             </tr>
              </table>
    <br><br>
                <%            
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
    }
    

%>
   
      <form action="yatrabook1.jsp" METHOD=POST>          
    
    <%
   
   System.out.println("ct   "+ct);
   
for(int j=1;j<=ct;j++)
{
    
    %>
   
   <table id="table<%=j%>" style="display: none">
       <tr>
                 <td><label for="sel1">Author Name</label></td>
                 <td> 
                            <select id="authorname1<%=j%>" class="input-medium" name="authorname1">
                                <option value="<%=au.get(j-1)%>"><%=au.get(j-1)%></option>
                             </select>
                 </td>
             </tr>
           <tr>
                 <td><label for="sel1">Book Name </label></td>
                 <td> 
                            <select id="bookname<%=j%>" class="input-medium" name="bookname">
                                <option value="<%=bn.get(j-1)%>"><%=bn.get(j-1)%></option>
                             </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Language </label></td>
                 <td> 
                            <select id="lang<%=j%>" class="input-medium" name="lang">
                            <option value="<%=lag.get(j-1)%>"><%=lag.get(j-1)%></option>
                            </select>
                 </td>
             </tr>
              <tr>
                 <td><label for="sel1">Part Edition </label></td>
                 <td> 
                            <select id="edition<%=j%>" class="input-medium" name="edition">
                            <option value="<%=ed.get(j-1)%>"><%=ed.get(j-1)%></option>
                            </select>
                 </td>
             </tr>
             <tr>
                 <td><label for="sel1">Date of Return </label></td>
                 <td> 
                     <input type="text" name="sdate" id="sdate<%=j%>"/>(DD/MM/YYYY)

                 </td>
             </tr>
             <tr>
                 <td></td>
                 <td>
                     
                       <button class="btn btn-info btn-sm" type="button" onclick="return add_item(<%=j%>) ">
                 Rent Rs: 10/-
                 </button>
                 </td>
             </tr>   
       
         </table>  
                            <%
}                            
%>
     </form>
     </div>
     
             
       
        <div class="col-lg-8">
        </div>
        <div class="col-lg-2">
        </div>    
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


<div class="cart__empty cart__empty--inside">
<ul class="cart__empty__elements">
    <form action="yatrabook1.jsp">
   <%
   
  
for(int k=1;k<=ct;k++)
{
    %>
   
    
    <input type="hidden" name="ct" value="<%=ct%>">
    <table id="table1<%=k%>" style="display: none">
        
        <tr>
            <td> Selected Book :</td>  <td></td><td><input type="text" id="book<%=k%>" name="book<%=k%>"/></td>
        </tr>
        <tr>
            <td>Rental Price :</td>  <td></td><td><input type="text" id="rent_price<%=k%>" name="rent_price<%=k%>"/></td>
        </tr>
        <tr>
            <td>Return Date :</td>  <td></td><td><input type="text" id="ret_date<%=k%>" name="ret_date<%=k%>"/></td>
        </tr>
            
        </table>
    
    <%
}      


%>
<br>
<input type="hidden" name="item_size" value=""/>
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
</div>
</div>
</body>
</html>