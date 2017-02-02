<%-- 
    Document   : hyo5
    Created on : 2017/02/02, 13:37:42
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
        String a = "かさぎたくや";
        out.println(a.length());
        //思い出したが、日本語は2バイト
       out.println(a.getBytes().length);
               %>
    </body>
</html>
