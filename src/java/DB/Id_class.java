package DB;

import java.sql.*;

public class Id_class {
static int uu=0;
static int rr=0;
    public int id()
    {
        try {
       DataBase db=new DataBase();
         Connection con = db.getConnection();
            Statement stmt=con.createStatement();
            String sql="select passenger_id from ( select passenger_id from train_service_register order by passenger_id desc ) where rownum = 1";
            System.out.println(sql);
         ResultSet rs=stmt.executeQuery(sql);
         
         while(rs.next())
         {
                uu=rs.getInt("passenger_id");
                System.out.println(uu);
                uu=uu+1;

         }
        
         }
       catch(Exception e)
    {
        e.printStackTrace();          

    }
        return uu;
    }


    
}
