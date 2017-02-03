<%-- 
    Document   : hyo9
    Created on : 2017/02/02, 13:37:42
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSPPage</title>
    </head>
    <body>
        <%@page import= "java.util.*"%>
        <%@page import= "java.text.*" %>
        <%@page import = "java.io.*"%>
       <%
        //importのところに;要らない  
           
       File txt = new File(application.getRealPath("hyo8.txt"));
       
       FileReader filereader = new FileReader(txt);
        BufferedReader br = new BufferedReader(filereader);
       out.println(br.readLine());
     

       //忘れずに
       br.close();
       %>
    </body>
</html>
