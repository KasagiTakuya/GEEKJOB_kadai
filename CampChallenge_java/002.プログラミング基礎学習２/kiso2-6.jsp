<%-- 
    Document   : kiso2-6
    Created on : 2017/01/26, 12:51:14
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
           int a = 1000;
       char key = 'A';
       while (a > 100){
           switch(key)  {
           case 'A':
               a = a / 2;
               out.println(a);
                        }
                      }
       %>
    </body>
</html>
