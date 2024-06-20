package DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class DataBase 
{
    /** Creates a new instance of DataBase */
    public DataBase() 
    {
        
    }
    Connection con =null;
    ResultSet r=null;
    public Connection getConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yatra","root","admin");
//        Class.forName("oracle.jdbc.driver.OracleDriver");
//        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","root","admin");
        return con;
    }
    public boolean account(String mob,String pass, String passenger_id) throws SQLException, ClassNotFoundException
    {
        boolean b=false;
        con=getConnection();
        Statement stmt=con.createStatement();
        String sql="select * from register where mob='"+mob+"' and pass='"+pass+"'";
        ResultSet rs=stmt.executeQuery(sql);
        if(rs.next())
        {
//            String sql1="select * from train_service_register where mobile='"+mob+"' and passenger_id_gen='"+passenger_id+"' and password1='"+pass+"'";
  String sql1="select * from register where mob='"+mob+"' and pid='"+passenger_id+"' and pass='"+pass+"'";
            ResultSet rs1=stmt.executeQuery(sql1);
            if(rs1.next())
                b=true;
        }  
        return b;
    }
    public boolean checkamt(String username,String pin,int cost) throws SQLException, ClassNotFoundException
    {
        boolean b=false;
        Connection con=getConnection();
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from wallet where mobile='"+username+"' and pass='"+pin+"'");
        if(rs.next())
        {
            int ct=Integer.parseInt(rs.getString(2));
            if(ct>cost)
            {
                ct=ct-cost;
                int k=stmt.executeUpdate("update wallet set amount='"+ct+"' where mobile='"+username+"' and pass='"+pin+"'");
                b=true;
            }
        }
        return b;
    }
    public String insert(String fname,String lname,String mail,String mob,String pass) throws ClassNotFoundException, SQLException
    {
         int f=0;
        Random rand = new Random();
       String pid = String.format("%04d", rand.nextInt(10000));
System.out.printf(pid);
        con=getConnection();
        Statement stmt=con.createStatement();
        int l=stmt.executeUpdate("insert into register (fname, lname, mail, mob, pass,pid)values('"+fname+"','"+lname+"','"+mail+"','"+mob+"','"+pass+"','"+pid+"')");
        int m=stmt.executeUpdate("insert into wallet (mobile, amount,pass)values('"+mob+"','0','"+pass+"')");     
        return pid;    
    }
    public boolean check(String uid,String pass) throws ClassNotFoundException, SQLException
    {   
        boolean isValid=false;
        try
        {
            con=getConnection();
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from user where username='"+uid+"' and password='"+pass+"'");
            if(rs.next())
            {
                isValid = true;
            }
            else
            {
                isValid = false;
            }
        }
        catch(Exception e)
        {
            System.out.println("Exception is "+e);
        }
        finally
        {
            try 
            {
                con.close();
            }
            catch (SQLException ex)
            {
                ex.printStackTrace();
            }
        }
        return  isValid;
    }
    public void forgetpass(String mob) throws SQLException, ClassNotFoundException, Exception
    {
        String pass = null;
        CallSmscApi ss=new CallSmscApi();
        con=getConnection();
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from register where mob='"+mob+"'");
        while(rs.next())
        {
            pass=rs.getString(5);
        }
        ss.sendsms(pass, mob);
    }
    public void addToCart(String usrId, String item, int price ) 
    {
        Date d=new Date();
        SimpleDateFormat ss=new SimpleDateFormat("dd/MM/yyyy");
        String ss1=ss.format(d);
        try 
        {
            con=getConnection();
            Statement stmt=con.createStatement();
            //details = "ianfiaf:faksfkaf";
            item=item.trim();
            stmt.addBatch("insert into cart values ('"+usrId+"','"+item+"',1,'"+price+"','"+ss1+"' )" );
            stmt.executeBatch();
        }
        catch(Exception e)
        {
            System.out.println("Exception is "+e);
        }
        finally
        {
            try 
            {
                con.close();
            }
            catch (SQLException ex) 
            {
                ex.printStackTrace();
            }
       }
    }
}