<%-- 
    Document   : kiso2-3
    Created on : 2017/01/26, 11:48:01
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
            int b = 0; int c = 0;
            for(int a=0; a<101; a = a + 1){
                 b = b + c;
                 c = c + 1;
                            }
             out.println(b);
            %>
    </body>
</html>
