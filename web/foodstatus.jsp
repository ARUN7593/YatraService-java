<%@page import="DB.CallSmscApi_pc"%>
<%@page import="java.sql.*"%>
<%@page import="DB.DataBase"%>
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
function show()
{
    document.getElementById("div_update").style.display="none";
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
      <a class="navbar-brand" href="yatraadminchefmenu.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="yatraadminchefmenu.jsp">Home</a></li>
        <ul class="nav navbar-nav">
        <li class="active"><a href="yatraadminfood.jsp">Add Food</a></li>
        
      </ul>
      </ul>
    </div>
       
  </div>
</nav>
    
       
    <%
    String sts=request.getParameter("status");
    String id=request.getParameter("id");
      String mob=request.getParameter("mob");
     DataBase db=new DataBase();
     Connection con=db.getConnection();
     Statement st=con.createStatement();
      ResultSet rs;
      int trans_id=0;
        rs= st.executeQuery("select * from transaction_details where category='food'");

     
  
    %>
    
    <div class="form-group text-info ">    
<div class="col-sm-offset-2"> 
          
  <div id="div_update" style="display: none">
<%
  
        if(id!=null){
      st.executeUpdate(" update transaction_details set status = '"+sts+"' where transaction_id="+id+" ");
       if(sts.equals("completed")){
            CallSmscApi_pc sms=new CallSmscApi_pc();
                sms.sendsms(mob);
        }
      //st.executeQuery("");
             }
       
%>
  </div>  
<div class="col-lg-8">
            <center>
            <table width="100%" border="1">
<tr align="center">
<td>Trans ID</td>
<td>Mobile</td>
<td>Amount</td>
<td>Date</td>
<td>Status</td>
</tr>
<% 

    rs= st.executeQuery("select * from transaction_details where category='food'");
while(rs.next()){
   trans_id=rs.getInt(1);
   
%>
                
<tr align="center"><td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(5) %>
        <form action="#" >
            <select name="status">
                <option value="onprocess" >OnProcess</option>
                  <option value="completed" >Completed</option>                  
            </select>
            <input type="hidden" value="<%=rs.getString(1) %>" name="id"/>
              <input type="hidden" value="<%=rs.getString(2) %>" name="mob"/>
            <input type="submit" onclick="" value="Update"/>
            </form>
    </td></tr>
    <%
       }
    
    %>

            </table>
            </center>
        </div>
        <div class="col-lg-2">
        </div>    
        </div>
</div>
</div>
</body>
</html>