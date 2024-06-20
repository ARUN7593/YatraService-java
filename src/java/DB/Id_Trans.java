package DB;

import java.sql.*;

public class Id_Trans {
static int uu=0;
static int rr=0;
    public int id()
    {
        try {
       DataBase db=new DataBase();
         Connection con = db.getConnection();
            Statement stmt=con.createStatement();
            String sql="select transaction_id from ( select transaction_id from transaction_details order by transaction_id desc ) where rownum = 1";
            System.out.println(sql);
         ResultSet rs=stmt.executeQuery(sql);
         
         while(rs.next())
         {
                uu=rs.getInt("transaction_id");
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
