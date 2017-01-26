<%-- 
    Document   : kiso1-1
    Created on : 2017/01/26, 10:26:57
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int a = 5; String x = " ";
           switch(a){
               case 1:
                   x = "one";
                   break;
               case 2:
                   x = "two";
                   break;
               default:
                   x = "想定外";
                   break;               
                    }
                out.println(x);
        %>
    </body>
</html>
