
package DB;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddCart extends HttpServlet {
 private String Item ="";
 private String price="";
  Connection con=null;
    Statement stmt=null;
    int ct=0;
   int pr=0;
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        String add=request.getParameter("add");
        String sub=request.getParameter("sub");
         int p1=0;
         int p2=0;
        try 
        {
            DataBase db=new DataBase();    
            con = db.getConnection();
            stmt=con.createStatement();
            String uid=(String) session.getAttribute("mob");
            String pg=request.getParameter("page");
            System.out.println("mob + "+uid);
            String item =  request.getParameter("item");
            item=item.trim();
            String price1 =  request.getParameter("price1");
            String price2 =  request.getParameter("price2");
            session.setAttribute("item", item);
            
          
           
            
            if(price1!=null)
            {
                price1=price1.trim();
                  session.setAttribute("price1", price1);
                 p1=Integer.parseInt(price1);
            }
            if(price2!=null)
            {
                price2=price2.trim();
                 p2=Integer.parseInt(price2);
            }
            
            Item =item;
           
            
            if(add!=null)
            {
                ResultSet rs1=stmt.executeQuery("select * from cart where mobile='"+uid+"' and itemname='"+Item+"'");
                while(rs1.next())
                {
                    ct=rs1.getInt(3);
                    ct=ct+1;
                    pr=rs1.getInt(4);
                    pr=pr+p2;
                }
                String pr1=Integer.toString(pr);
                session.setAttribute("prc", pr1);
                String sql="update cart set ct='"+ct+"', totalprice='"+pr+"' where mobile='"+uid+"' and itemname='"+Item+"'";
                System.out.println(sql);
                stmt.executeUpdate(sql);
                RequestDispatcher rd = request.getRequestDispatcher("/yatrabriyani.jsp");
                rd.forward(request , response );  
            }
            else if(sub!=null)
            {
                ResultSet rs1=stmt.executeQuery("select * from cart where mobile='"+uid+"' and itemname='"+Item+"'");
                while(rs1.next())
                {
                    ct=rs1.getInt(3);
                    ct=ct-1;
                    pr=rs1.getInt(4);
                    pr=pr-p2;
                }
                String pr1=Integer.toString(pr);
                session.setAttribute("prc", pr1);
                if(ct==0)
                {
                    String sql="delete from cart where mobile='"+uid+"' and itemname='"+Item+"'";
                    System.out.println(sql);
                    stmt.executeUpdate(sql);
                    RequestDispatcher rd = request.getRequestDispatcher("/yatrabriyani.jsp");
                    rd.forward(request , response );  
                }
                else
                {
                    stmt.executeUpdate("update cart set ct='"+ct+"', totalprice='"+pr+"' where mobile='"+uid+"' and itemname='"+Item+"'");
                     RequestDispatcher rd = request.getRequestDispatcher("/yatrabriyani.jsp");
                        rd.forward(request , response );  
                }
                
            
            }
            else
            {
                 db.addToCart(uid,Item,p1);        
            RequestDispatcher rd = request.getRequestDispatcher("/yatrabriyani.jsp");
            rd.forward(request , response );  
            }
        } 
        finally 
        {            
            out.close();
        }
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddCart.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddCart.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddCart.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddCart.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
