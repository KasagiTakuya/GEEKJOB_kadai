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
        char a = 'い'; 
            switch(a){
               case 'A':
                  out.println("英語");
                   break;
               case 'あ':
                   out.println("日本語");
                   break;
                      }
                %>
        
 
    </body>
</html>
