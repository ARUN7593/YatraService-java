package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class yatrawallet_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Yatra Service</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js\"></script>\n");
      out.write("  <script>\n");
      out.write("      function valid1()\n");
      out.write("      {\n");
      out.write("          var mob=document.getElementById(\"mob\").value;\n");
      out.write("          var pwd=document.getElementById(\"pwd\").value;\n");
      out.write("          var amt=document.getElementById(\"amt\").value;\n");
      out.write("          \n");
      out.write("              if(mob==\"\")\n");
      out.write("              {\n");
      out.write("                  alert(\"Enter Mobile Number\");\n");
      out.write("                  return false;\n");
      out.write("              }\n");
      out.write("              if(pwd==\"\")\n");
      out.write("              {\n");
      out.write("                  alert(\"Enter Password\");\n");
      out.write("                  return false;\n");
      out.write("              }\n");
      out.write("              if(amt==\"\")\n");
      out.write("              {\n");
      out.write("                  alert(\"Enter Amount\");\n");
      out.write("                  return false;\n");
      out.write("              }\n");
      out.write("                           \n");
      out.write("              \n");
      out.write("             \n");
      out.write("return true; \n");
      out.write("}\n");
      out.write("  </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"container-fluid bg-primary\">\n");
      out.write("     <center>\n");
      out.write("     <p>Just a click</p> \n");
      out.write("        <h1>ALL IN ONE</h1>  \n");
      out.write("  <p>(We are @ Your Service)</p> \n");
      out.write("   </center>\n");
      out.write("</div>\n");
      out.write("    <nav class=\"navbar navbar-default\">\n");
      out.write("  <div class=\"bg-info container col-md-offset-3\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"main.jsp\">Yatra Service</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li><a href=\"main.jsp\">Home</a></li>\n");
      out.write("        <li class=\"active\"><a href=\"yatrawallet.jsp\">Wallet Recharge</a></li>\n");
      out.write("        <li><a href=\"viewwalletbalance.jsp\">Yatra Wallet</a></li> \n");
      out.write("       <!-- <li><a href=\"alert.jsp?page=yatrawallet.jsp\">Alert</a></li> -->\n");
      out.write("        <li><a href=\"login.jsp\">Logout</a></li> \n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("    \n");
      out.write("    <div class=\"form-group text-info \">    \n");
      out.write("<div class=\"col-sm-offset-3 col-sm-4\"> \n");
      out.write("       <form action=\"yatrawallet1.jsp\" onsubmit=\"return valid1();\">\n");
      out.write("<center><h3>Yatra Wallet Recharge :</h3></center>\n");
      out.write("<table>\n");
      out.write("        <tr>\n");
      out.write("            <td><h4>Registered Mobile Number</h4></td><td><input type=\"text\" id=\"mob\" name=\"mob\"/></td>              \n");
      out.write("        </tr>\n");
      out.write("         <tr>\n");
      out.write("            <td><h4>Password</h4></td><td><input type=\"password\" id=\"pwd\" name=\"pass\" /></td>              \n");
      out.write("        </tr>\n");
      out.write("         <tr>\n");
      out.write("            <td><h4>Amount</h4></td><td><input type=\"text\" id=\"amt\" name=\"amt\"/></td>              \n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td></td>\n");
      out.write("            <td> <button class=\"btn btn-info\" type=\"submit\" >\n");
      out.write("                Add Amount\n");
      out.write("                 </button></td>\n");
      out.write("        </tr>\n");
      out.write("</table>\n");
      out.write("</form> \n");
      out.write("        \n");
      out.write("        \n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("   \n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
