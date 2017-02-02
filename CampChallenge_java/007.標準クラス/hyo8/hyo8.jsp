<%-- 
    Document   : hyo8
    Created on : 2017/02/02, 13:37:42
    Author     : PCUser
--%>
        <%@page import= "java.util.*"%>
        <%@page import= "java.text.*" %>
        <%@page import = "java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSPPage</title>
    </head>
    <body>
       <%
        //importのところに;要らない  
           
       File txt = new File(application.getRealPath("hyo8.txt"));
     
       //上書きモード
       FileWriter wr = new FileWriter(txt);
       wr.write("こんぬつわ");
       //忘れずに
       wr.close();
       %>
    </body>
</html>
