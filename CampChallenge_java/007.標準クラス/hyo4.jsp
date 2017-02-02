<%-- 
    Document   : hyo1
    Created on : 2017/02/02, 11:09:37
    Author     : PCUser
--%>

<%@page import="java.util.*"%>
<%@page import="java.text.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        Calendar A = Calendar.getInstance();
        A.set(2015,0,1,0,0,0);
       long AA = A.getTimeInMillis();
       
        Calendar B = Calendar.getInstance();
        B.set(2015,11,31,23,59,59);
       long BB = B.getTimeInMillis();
       
       long CC = BB - AA;
       
       out.println(CC);
        
       
        %>
    </body>
</html>
