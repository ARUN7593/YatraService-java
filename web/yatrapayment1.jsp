
<%@page import="DB.CallSmscApi_ps"%>
<%@page import="DB.CallSmscApi"%>
<%@page import="DB.Id_Trans"%>
<%@page import="java.util.Collections"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DB.DataBase"%>
<%@page import="java.sql.*"%>

<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Yatra Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body class="bg-primary">

<div class="container-fluid">
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
        
    <div class="container">      
      



       <%
       ArrayList item_name = (ArrayList)session.getAttribute("item_name");
       ArrayList item_quantity = (ArrayList)session.getAttribute("item_quantity");
        ArrayList item_price = (ArrayList)session.getAttribute("item_price");
        
   
   item_name.removeAll(Collections.singleton(""));
   item_quantity.removeAll(Collections.singleton(""));
           item_price.removeAll(Collections.singleton(""));
System.out.print(item_name);
System.out.print(item_quantity);
System.out.print(item_price);    

           
  int amt_db=0;
  String mob=request.getParameter("mobile");
  String amt=request.getParameter("amount");
  String pass=request.getParameter("pass");
  String cat=request.getParameter("cat");
  amt=amt.trim();
  int amt1=Integer.parseInt(amt);
  DataBase db=new DataBase();
boolean b=db.checkamt(mob, pass, amt1);



%>
    
        
    <div class="row col-md-offset-3">
  <div class="col-md-3">
     <%
     int fn1=0;
     if(b==false)
{
     %><h3>Balance too low</h3><%
}
else
{    
        Date today_date=new Date();
        SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
        String today_date_s=sdf1.format(today_date);
        Connection con = db.getConnection();
        Statement stmt=con.createStatement();
        Statement stmt2=con.createStatement();
        ResultSet rs = stmt2.executeQuery("select * from daily_food_count where date_c='"+today_date_s+"'");
        
        while(rs.next())
        {
            
            String un=rs.getString(3);
            String fn=rs.getString(1);
            if(fn!=null)
            {
                fn=fn.trim();
               fn1=Integer.parseInt(fn);
               for(int i=0;i<item_name.size();i++)
                {
                    if(un.equals(item_name.get(i)))
                    {
                        String qn0=(String)item_quantity.get(i);
                        qn0=qn0.trim();
                        int qn=Integer.parseInt(qn0);
                        fn1=fn1-qn;
                        String sql1="update daily_food_count set count='"+fn1+"' where date_c='"+today_date_s+"' and foodname='"+item_name.get(i)+"'";
                        System.out.print(sql1);
                        stmt.executeUpdate(sql1);  

                        
                       
                        



                                                                                                                               
                    }
                }
            }
        }
        
        Id_Trans idd=new Id_Trans();
        int id=idd.id();
         String sql2="insert into transaction_details values('"+id+"','"+mob+"','"+amt1+"','"+today_date_s+"','onprocess','"+cat+"')";
       stmt.execute(sql2);  
    CallSmscApi_ps sms=new CallSmscApi_ps();
    sms.sendsms(mob);
    
     %><h3>payment success</h3><%

          }
%>
  </div>
  
    </div>  
  
</div>
    
  
    

</body>
</html>
