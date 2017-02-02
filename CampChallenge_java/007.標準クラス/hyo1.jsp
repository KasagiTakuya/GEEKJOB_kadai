<%-- 
    Document   : hyo1
    Created on : 2017/02/02, 11:09:37
    Author     : PCUser
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       //いったんカレンダーに渡して生成
       Calendar A = Calendar.getInstance();
       A.set(2016,0,1,0,0,0);
       Date AA = A.getTime();
       
       
       out.println(AA);
       
 
       
        %>
    </body>
</html>
