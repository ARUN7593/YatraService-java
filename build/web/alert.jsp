
<%@page import="com.bean.CallSmscApi"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">

            window.onload = function() {
                alert("Alert sent!!!");
            }
        </script>
    </head>
    <body>

        <%
            String page1 = request.getParameter("page");
            CallSmscApi sms = new CallSmscApi();
            sms.sendsms("", "8883638181");

            if (page != null) {
                response.sendRedirect(page1);
            } else {

                response.sendRedirect("main.jsp");
            }
        %>
    </body>
</html>
