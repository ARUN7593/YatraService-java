
<%@page import="DB.DataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

      
        <%


ServletContext ss=getServletContext();
String path=ss.getRealPath("upload");

System.out.println("Path : "+path);
MultipartRequest me = new MultipartRequest(request, path);

String txt=me.getParameter("textn");


Enumeration files=me.getFileNames();

File f=null;
String imgname=null;
String name5=null;
while(files.hasMoreElements())
{

String name1=(String)files.nextElement();

String type=me.getContentType("textn");
f=me.getFile(name1);
String ff=f.toString();
String sss[]=ff.split("\\\\");
System.out.println("The File is "+ff);

int n=sss.length;
n=n-1;
imgname=sss[n];

String sss1[]=imgname.split("\\.");
name5=sss1[0];
System.out.println("The File is "+sss1[0]);
System.out.println("The File is "+sss1[1]);
}

       
  
       String mob=me.getParameter("mob");
       String prob=me.getParameter("prob");
       String desc=me.getParameter("desc");
      
Connection con=null;
    Statement stat=null;
 

      DataBase db=new DataBase();
      
            con = db.getConnection();
            stat=con.createStatement();

                   stat.executeUpdate("insert into complaint values ('"+mob+"','"+prob+"','"+imgname+"','"+desc+"')");
                  response.sendRedirect("main.jsp");

                   //out.print(fname);

%>
   