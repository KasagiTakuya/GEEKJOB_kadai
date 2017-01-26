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
            String b = " ";
            for(int a=0; a<30; a = a + 1){
                b = b +"A";
                            }
             out.println(b);
            %>
    </body>
</html>
