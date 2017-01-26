<%-- 
    Document   : kiso2-9
    Created on : 2017/01/26, 13:48:31
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
        <%@ page import="java.util.HashMap" %>
        <%
        HashMap<String,String> ren =
        new HashMap<String,String>();
        
        ren.put("1","AAA");
        ren.put("hello","world");
        ren.put("soeda","33");
        ren.put("20","20");
        
        %>
    </body>
</html>
